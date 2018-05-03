package kr.co.mlec.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Confirm;
import kr.co.mlec.repository.mapper.ConfirmMapper;

@WebServlet("/controller/confirm")
public class ConfirmController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ConfirmMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ConfirmMapper.class);
		
		Confirm confirm = new Confirm();
		confirm.setMemberId(request.getParameter("memberId"))
			   .setLocationCode(request.getParameter("memberId"))
			   .setLocationName(request.getParameter("memberId"))
			   .setBranchCode(request.getParameter("memberId"))
			   .setBranchName(request.getParameter("memberId"))
			   .setScreeningCode(request.getParameter("memberId"))
			   .setScreeningDate(request.getParameter("memberId"))
			   .setFilmCode(request.getParameter("memberId"))
			   .setFilmName(request.getParameter("memberId"))
			   .setShowCode(request.getParameter("memberId"))
			   .setShowTime(request.getParameter("memberId"))
			   .setPrice(Integer.parseInt(request.getParameter("memberId")))
			   .setCardNum(request.getParameter("memberId"))
			   .setSeat(request.getParameter("memberId"));
		mapper.insertConfirm(confirm);
	}
}
