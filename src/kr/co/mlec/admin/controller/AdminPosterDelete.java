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
import kr.co.mlec.repository.mapper.MovieInfoMapper;
import kr.co.mlec.repository.mapper.MoviePosterMapper;

@WebServlet("/admin/posterDelete")
public class AdminPosterDelete extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieInfoMapper inmapper =MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
		MoviePosterMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MoviePosterMapper.class);
		
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
		
		mapper.deleteMoviePoster(Integer.parseInt(request.getParameter("posterNo")));
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(inmapper.selectMovieInfoByRank(movieSeq)));
		
			
		
		
	}
	
}
