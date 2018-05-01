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
import kr.co.mlec.repository.domain.Showtimes;
import kr.co.mlec.repository.domain.Theater;
import kr.co.mlec.repository.mapper.ShowtimesMapper;
import kr.co.mlec.repository.mapper.TheaterMapper;

@WebServlet("/controller/timetable")
public class SelectTimeTableController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TheaterMapper theaterMapper = MyAppSqlConfig.getSqlSession().getMapper(TheaterMapper.class);
		ShowtimesMapper showtimesMapper = MyAppSqlConfig.getSqlSession().getMapper(ShowtimesMapper.class);
		request.getParameter("filmCode");
		response.setContentType("application/json; charset=utf-8");
		List<Theater> theaterList = theaterMapper.selectTheater(request.getParameter("filmCode"));
		for(Theater th : theaterList) {
			List<Showtimes> showtimesList = showtimesMapper.selectShowtimes(th.getTheaterCode());
			th.setTimeTable(showtimesList);
		}
		PrintWriter out = response.getWriter();
		out.write(new Gson().toJson(theaterList));
		out.close();
	}
}
