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
import kr.co.mlec.repository.domain.Actors;
import kr.co.mlec.repository.domain.Comment;
import kr.co.mlec.repository.domain.Genres;
import kr.co.mlec.repository.domain.MovieInfo;
import kr.co.mlec.repository.mapper.ActorsMapper;
import kr.co.mlec.repository.mapper.CommentMapper;
import kr.co.mlec.repository.mapper.GenresMapper;
import kr.co.mlec.repository.mapper.MovieInfoMapper;

@WebServlet("/moviechart/detail")
public class DetailController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieInfoMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
		ActorsMapper actmapper = MyAppSqlConfig.getSqlSession().getMapper(ActorsMapper.class);
		GenresMapper genmapper = MyAppSqlConfig.getSqlSession().getMapper(GenresMapper.class);
//		CommentMapper commapper = MyAppSqlConfig.getSqlSession().getMapper(CommentMapper.class);
		
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
		MovieInfo movie = mapper.selectMovieInfoByRank(movieSeq);
		request.setAttribute("movie", movie);
		
		List<Actors> act = actmapper.selectActors(movieSeq);
		List<Genres> gen = genmapper.selectGenres(movieSeq);
//		List<Comment> com = commapper.selectComment(movieSeq);
		
		request.setAttribute("act", act);
		request.setAttribute("gen", gen);
//		request.setAttribute("com", com);
		
		// 댓글 목록에서 수정 링크 클릭시 값이 넘어옴
		request.setAttribute("commentSeq", request.getParameter("commentSeq"));
//		System.out.println(request.getParameter("commentSeq"));
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/moviechart/detail.jsp");
		rd.forward(request, response);
	
	}

	
	
	
}
