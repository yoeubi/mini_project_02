package kr.co.mlec.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controller/showresult")
public class ShowResult extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String locationCode = request.getParameter("lcode");
		String locationName = request.getParameter("lname");
		String branchCode = request.getParameter("bcode");
		String branchName = request.getParameter("bname");
		String screeningCode = request.getParameter("sccode");
		String screeningDate = request.getParameter("sdate");
		String theaterCode = request.getParameter("tcode");
		String theaterName = request.getParameter("tname");
		String filmCode = request.getParameter("fcode");
		String filmName = request.getParameter("fname");
		String showCode = request.getParameter("shcode");
		String showTime= request.getParameter("shtime");
		String price= request.getParameter("price");
		String cardNum= request.getParameter("card");
		String memberId= request.getParameter("memberid");
		String seat= request.getParameter("seat");
		
		request.setAttribute("locationCode", locationCode);
		request.setAttribute("locationName", locationName);
		request.setAttribute("branchCode", branchCode);
		request.setAttribute("branchName", branchName);
		request.setAttribute("screeningCode", screeningCode);
		request.setAttribute("screeningDate", screeningDate);
		request.setAttribute("theaterCode", theaterCode);
		request.setAttribute("theaterName", theaterName);
		request.setAttribute("filmCode", filmCode);
		request.setAttribute("filmName", filmName);
		request.setAttribute("showCode", showCode);
		request.setAttribute("showTime", showTime);
		request.setAttribute("price", price);
		request.setAttribute("cardNum", cardNum);
		request.setAttribute("memberId", memberId);
		request.setAttribute("seat", seat);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/ticket/showresult.jsp");
		rd.forward(request, response);
		
		
		
		
	}
}
