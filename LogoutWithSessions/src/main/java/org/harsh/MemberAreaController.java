package org.harsh;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberAreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberAreaController() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch ( action ) {
		case "destroy": {
			request.getSession().invalidate();
			response.sendRedirect(request.getContextPath() +"/SiteController?action=login");
		}
		break;
		case "member" :{
			request.getRequestDispatcher("member.jsp").forward(request, response);
		}
		break;
		
				}
			}
			
		
			
			
		}

