package kr.co.mlec.ticket.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Confirm;
import kr.co.mlec.repository.mapper.ConfirmMapper;
import kr.co.mlec.repository.mapper.TheaterMapper;

@WebServlet("/controller/confirm")
public class ConfirmController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ConfirmMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ConfirmMapper.class);
		response.setContentType("application/json; charset=utf-8");
		Confirm confirm = new Confirm();
		confirm.setMemberId(request.getParameter("memberId"))
			   .setLocationCode(request.getParameter("locationCode"))
			   .setLocationName(request.getParameter("locationName"))
			   .setBranchCode(request.getParameter("branchCode"))
			   .setBranchName(request.getParameter("branchName"))
			   .setScreeningCode(request.getParameter("screeningCode"))
			   .setScreeningDate(request.getParameter("screeningDate"))
			   .setFilmCode(request.getParameter("filmCode"))
			   .setFilmName(request.getParameter("filmName"))
			   .setShowCode(request.getParameter("showCode"))
			   .setShowTime(request.getParameter("showTime"))
			   .setPrice(Integer.parseInt(request.getParameter("price")))
			   .setCardNum(request.getParameter("cardNum"))
			   .setSeat(request.getParameter("seat"));
		mapper.insertConfirm(confirm);
		String theaterCode = request.getParameter("theaterCode");
		TheaterMapper theaterMapper = MyAppSqlConfig.getSqlSession().getMapper(TheaterMapper.class);
//		theaterMapper.updateSeat(theaterCode);
		PrintWriter out = response.getWriter();
		out.write(new Gson().toJson("성공"));
		out.close();
	}
}
