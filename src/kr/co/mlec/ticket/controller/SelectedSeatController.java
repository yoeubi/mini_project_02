package kr.co.mlec.ticket.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controller/seat")
public class SelectedSeatController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selectedSeat = request.getParameter("selectedSeat");
		String showCode = request.getParameter("showCode");
		System.out.println(selectedSeat);
		System.out.println(showCode);
	}
	
}
