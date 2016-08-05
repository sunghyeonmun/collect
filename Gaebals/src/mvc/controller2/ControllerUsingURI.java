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
	private Map commandMap = new HashMap(); // ��ɾ�� ��ɾ� ó�� Ŭ������ ������ ����

	// ��ɾ�� ó��Ŭ������ ���εǾ� �ִ� properties ������ �о Map��ü�� commandMap�� ����
	// ��ɾ�� ó��Ŭ������ ���εǾ� �ִ� properties ������ Command.properties����
	public void init(ServletConfig config) throws ServletException {

		// web.xml���� propertyConfig�� �ش��ϴ� init-param �� ���� �о��
		String props = config.getInitParameter("propertyConfig");
		// ��ɾ�� ó��Ŭ������ ���������� ������ Properties��ü ����
		Properties pr = new Properties();
		FileInputStream f = null;
		try {
			f = new FileInputStream(props);// Command.properties������ ������ �о��
			pr.load(f);// Command.properties������ ������ Properties��ü�� ����
		} catch (IOException e) {
			throw new ServletException(e);
		} finally {
			if (f != null)
				try {f.close();
				} catch (IOException e) {}
		  }

		Iterator keyIter = pr.keySet().iterator(); // Iterator��ü�� Enumeration��ü��Ȯ���Ų ������ ��ü
		while (keyIter.hasNext()) {// ��ü�� �ϳ��� ������ �� ��ü������ Properties��ü�� ����� ��ü�� ����
			String command = (String) keyIter.next();
			String className = pr.getProperty(command);
			try {
				Class commandClass = Class.forName(className); // key���� ������ ���ڿ��� Ŭ�����θ����.
				Object commandInstance = commandClass.newInstance(); // �ε��ؿ� Ŭ������ ��ü�� ����
				commandMap.put(command, commandInstance); // Map��ü�� commandMap�� ��ü ����
			} catch (ClassNotFoundException e) {
				throw new ServletException(e);
			} catch (InstantiationException e) {
				throw new ServletException(e);
			} catch (IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
	
	
	// get����� ���� �޼ҵ�
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
		//������ �ʿ��ϸ� request.getSession(); <-���ǰ�ü �����ü� ����
	}

	// post����� ���� �޼ҵ�
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	// �ÿ����� ��û�� �м��ؼ� �ش� �۾��� ó��
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandAction com = null; //����Ÿ��
		
		try {
			String command = request.getRequestURI(); //uri���� �����ͼ�
			if (command.indexOf(request.getContextPath()) == 0) { //contextroot�� �����ϸ�
				command = command.substring(request.getContextPath().length()); //�� �κ� ������ �������� command�� ����
			}
			
			com = (CommandAction) commandMap.get(command); //Ű�� ���ε� value�� �����ͼ� �����ϰ�
			
			if(com==null){
				com =new NullHandler();
			}
			
			view = com.requestPro(request, response); //������ ��ȣ ����
		} catch (Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
