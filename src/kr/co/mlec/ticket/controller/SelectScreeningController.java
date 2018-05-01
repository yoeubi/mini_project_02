package kr.co.mlec.ticket.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Screening;
import kr.co.mlec.repository.mapper.ScreeningMapper;

@WebServlet("/controller/screening")
public class SelectScreeningController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ScreeningMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ScreeningMapper.class);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		List<Screening> screenings = mapper.selectScreening(request.getParameter("branchCode"));
		out.write(new Gson().toJson(screenings));
		out.close();
	}
}
