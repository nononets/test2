package controller.login;

/**
 * @author 송은혁
 * @since 2019.12.03
 */

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.MainController;
import dao.MainDAO;

public class LoginAction implements MainController {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String view = "";
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		HttpSession session = req.getSession();
		
		int cnt = new MainDAO().LoginAction(id, pw);
		
		if (cnt == 1) {
			session.setAttribute("MID", id);
		}
		
		return view;
	}

}
