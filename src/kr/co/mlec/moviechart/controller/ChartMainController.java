package kr.co.mlec.moviechart.controller;

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
import kr.co.mlec.repository.domain.MoviePoster;
import kr.co.mlec.repository.mapper.MovieInfoMapper;
import kr.co.mlec.repository.mapper.MoviePosterMapper;

@WebServlet("/moviechart/main")
public class ChartMainController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieInfoMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
		
		List<MovieInfo> chart = mapper.selectMovieInfo();
		
		for (MovieInfo mi : chart) {
			mi.setPoster(mapper.selectMoviePosterByMovieSeq(mi.getMovieSeq()));
		}
		
		request.setAttribute("chart", chart);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/moviechart/main.jsp");
		rd.forward(request, response);
	}
}
