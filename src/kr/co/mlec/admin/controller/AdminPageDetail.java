package kr.co.mlec.admin.controller;

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
import kr.co.mlec.repository.domain.StilCut;
import kr.co.mlec.repository.mapper.MovieInfoMapper;
import kr.co.mlec.repository.mapper.MoviePosterMapper;
import kr.co.mlec.repository.mapper.StilCutMapper;

@WebServlet("/admin/detail")
public class AdminPageDetail extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
		
		MovieInfoMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
		MovieInfo movie = mapper.selectMovieInfoByRank(movieSeq);
		
		MoviePosterMapper pomapper = MyAppSqlConfig.getSqlSession().getMapper(MoviePosterMapper.class);
		List<MoviePoster> poster = pomapper.selectMoviePoster(movieSeq);
		
		StilCutMapper stmapper = MyAppSqlConfig.getSqlSession().getMapper(StilCutMapper.class);
		List<StilCut> steel = stmapper.selectStilCut(movieSeq);
		
		request.setAttribute("movie", movie);
		request.setAttribute("poster", poster);
		request.setAttribute("steel", steel);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/pageDetail.jsp");
		rd.forward(request, response);
	}
}
