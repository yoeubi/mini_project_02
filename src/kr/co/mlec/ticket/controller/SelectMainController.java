package kr.co.mlec.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controller/selectmain")
public class SelectMainController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filmName = request.getParameter("filmName");
		if(filmName != null) {
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/mini/test01.jsp");
			rd.forward(request, response);
		}
	}
}
