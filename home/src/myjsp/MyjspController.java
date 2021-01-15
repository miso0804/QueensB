package myjsp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/jsp_servlet/*")
public class MyjspController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		String context=request.getContextPath();
		MyjspDAO dao=new MyjspDAO();
		
		
		if(uri.indexOf("login.do")!= -1) {
			String userid=request.getParameter("userid");
			String userpw=request.getParameter("userpw");
			/*System.out.println("userid"+userid);
			System.out.println("userpw"+userpw); */
			MyjspDTO dto=new MyjspDTO();
			dto.setUserid(userid);
			dto.setUserpw(userpw);
			String result=dao.loginCheck(dto);
			System.out.println(result);
			request.setAttribute("result",result);
			String page="/web/jsp/login_result.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("join.do")!= -1) {
			String userid=request.getParameter("userid");
			String userpw=request.getParameter("userpw");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			MyjspDTO dto=new MyjspDTO();
			dto.setUserid(userid);
			dto.setUserpw(userpw);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dao.insert(dto);
			}
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}

	
