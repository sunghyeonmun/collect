package erp_action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class P_27 implements CommandActionERP  {// �ۼ��� ��

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		return "/sitemesh/ERP/27_P_personnalCardForm.jsp";// �ش��
	}
}