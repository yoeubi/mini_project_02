package kr.co.mlec.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.MovieInfo;
import kr.co.mlec.repository.mapper.MovieInfoMapper;

@WebServlet("/main")
public class mainController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieInfoMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
		List<MovieInfo> chart = mapper.selectMovieInfo();
		request.setAttribute("chart", chart);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main/main.jsp");
		rd.forward(request, response);
	}
}
	