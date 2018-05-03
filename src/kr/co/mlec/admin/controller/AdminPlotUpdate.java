package kr.co.mlec.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.MovieInfo;
import kr.co.mlec.repository.mapper.MovieInfoMapper;

@WebServlet("/admin/plotUpdate")
public class AdminPlotUpdate extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieInfoMapper mapper =MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
		
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
		MovieInfo movie = new MovieInfo();
		
		movie.setMovieSeq(movieSeq);
		movie.setMoviePlot(request.getParameter("moviePlot"));
		
		mapper.updateMoviePlot(movie);
		
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(mapper.selectMovieInfoByRank(movieSeq)));
		
		
	}
	
}
