package kr.co.mlec.moviechart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Comment;
import kr.co.mlec.repository.mapper.CommentMapper;

@WebServlet("/moviechart/commentRegist")
public class CommentRegistController extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CommentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommentMapper.class);
		
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
		
		Comment comment = new Comment();
		comment.setMovieSeq(movieSeq);
		comment.setMemberId(request.getParameter("memberId"));
		comment.setCommentStar(Integer.parseInt(request.getParameter("commentStar")));
		comment.setContent(request.getParameter("content"));
	
		mapper.insertComment(comment);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(mapper.selectComment(movieSeq)));
		
	}
}
