package kr.co.mlec.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.BranchMapper;
import kr.co.mlec.repository.mapper.FilmMapper;
import kr.co.mlec.repository.mapper.LocationMapper;
import kr.co.mlec.repository.mapper.ScreeningMapper;
import kr.co.mlec.repository.mapper.ShowtimesMapper;
import kr.co.mlec.repository.mapper.TheaterMapper;


@WebServlet("/controller/booking")
public class BookingController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		String showCode = request.getParameter("showCode");
		request.setAttribute("showCode", showCode);
		String[] codes = showCode.split("-");
		// 지역 , 지점 , 날짜 , 영화이름 , 영화관 , 상영시간
		String locationCode = codes[0];
		LocationMapper locationMapper = MyAppSqlConfig.getSqlSession().getMapper(LocationMapper.class);
		String locationName = locationMapper.selectLocationName(locationCode);
		request.setAttribute("locationCode", locationCode);
		request.setAttribute("locationName", locationName);
		
		String branchCode = String.format("%s-%s", codes[0], codes[1]);
		BranchMapper branchMapper = MyAppSqlConfig.getSqlSession().getMapper(BranchMapper.class);
		String branchName = branchMapper.selectBranchName(branchCode);
		request.setAttribute("branchCode", branchCode);
		request.setAttribute("branchName", branchName);
		
		String screeningCode = String.format("%s-%s-%s", codes[0],codes[1],codes[2]);
		ScreeningMapper screeningMapper = MyAppSqlConfig.getSqlSession().getMapper(ScreeningMapper.class);
		String screeningDate = screeningMapper.selectScreeningDate(screeningCode);
		request.setAttribute("screeningCode", screeningCode);
		request.setAttribute("screeningDate", screeningDate);
		
		String filmCode = String.format("%s-%s-%s-%s", codes[0],codes[1],codes[2],codes[3]);
		FilmMapper filmMapper = MyAppSqlConfig.getSqlSession().getMapper(FilmMapper.class);
		String filmName = filmMapper.selectFilmName(filmCode);
		request.setAttribute("filmCode", filmCode);
		request.setAttribute("filmName", filmName);
		
		String theaterCode = String.format("%s-%s-%s-%s-%s", codes[0],codes[1],codes[2],codes[3],codes[4]);
		TheaterMapper theaterMapper = MyAppSqlConfig.getSqlSession().getMapper(TheaterMapper.class);
		String theaterName = theaterMapper.selectTheaterName(theaterCode);
		request.setAttribute("theaterCode", theaterCode);
		request.setAttribute("theaterName", theaterName);
		
		ShowtimesMapper showtimesMapper = MyAppSqlConfig.getSqlSession().getMapper(ShowtimesMapper.class);
		String showTime = showtimesMapper.selectShowTime(showCode);
		request.setAttribute("showCode", showCode);
		request.setAttribute("showTime", showTime);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/ticket/selectSeat.jsp");
		rd.forward(request, response);
	}
}
