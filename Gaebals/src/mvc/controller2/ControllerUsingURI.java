package mvc.controller2;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_action.CommandAction;
import board_action.NullHandler;

public class ControllerUsingURI extends HttpServlet {
	private Map commandMap = new HashMap(); // 명령어와 명령어 처리 클래스를 쌍으로 저장

	// 명령어와 처리클래스가 매핑되어 있는 properties 파일을 읽어서 Map객체인 commandMap에 저장
	// 명령어와 처리클래스가 매핑되어 있는 properties 파일은 Command.properties파일
	public void init(ServletConfig config) throws ServletException {

		// web.xml에서 propertyConfig에 해당하는 init-param 의 값을 읽어옴
		String props = config.getInitParameter("propertyConfig");
		// 명령어와 처리클래스의 매핑정보를 저장할 Properties객체 생성
		Properties pr = new Properties();
		FileInputStream f = null;
		try {
			f = new FileInputStream(props);// Command.properties파일의 내용을 읽어옴
			pr.load(f);// Command.properties파일의 정보를 Properties객체에 저장
		} catch (IOException e) {
			throw new ServletException(e);
		} finally {
			if (f != null)
				try {f.close();
				} catch (IOException e) {}
		  }

		Iterator keyIter = pr.keySet().iterator(); // Iterator객체는 Enumeration객체를확장시킨 개념의 객체
		while (keyIter.hasNext()) {// 객체를 하나씩 꺼내서 그 객체명으로 Properties객체에 저장된 객체에 접근
			String command = (String) keyIter.next();
			String className = pr.getProperty(command);
			try {
				Class commandClass = Class.forName(className); // key에서 가져온 문자열을 클래스로만든다.
				Object commandInstance = commandClass.newInstance(); // 로딩해온 클래스의 객체를 생성
				commandMap.put(command, commandInstance); // Map객체인 commandMap에 객체 저장
			} catch (ClassNotFoundException e) {
				throw new ServletException(e);
			} catch (InstantiationException e) {
				throw new ServletException(e);
			} catch (IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
	
	
	// get방식의 서비스 메소드
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
		//세션이 필요하면 request.getSession(); <-세션객체 가져올수 있음
	}

	// post방식의 서비스 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	// 시용자의 요청을 분석해서 해당 작업을 처리
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandAction com = null; //슈퍼타입
		
		try {
			String command = request.getRequestURI(); //uri값을 가져와서
			if (command.indexOf(request.getContextPath()) == 0) { //contextroot로 시작하면
				command = command.substring(request.getContextPath().length()); //그 부분 추출한 나머지를 command에 저장
			}
			
			com = (CommandAction) commandMap.get(command); //키와 매핑된 value를 가져와서 저장하고
			
			if(com==null){
				com =new NullHandler();
			}
			
			view = com.requestPro(request, response); //페이지 번호 지정
		} catch (Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
