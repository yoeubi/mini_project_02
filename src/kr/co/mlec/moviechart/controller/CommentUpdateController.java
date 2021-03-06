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

@WebServlet("/moviechart/commentUpdate")
public class CommentUpdateController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommentMapper.class);
		
		int commentSeq = Integer.parseInt(request.getParameter("commentSeq"));
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));

		Comment comment = new Comment();
		comment.setContent(request.getParameter("content"));
		comment.setCommentSeq(commentSeq);
		
		mapper.updateComment(comment);
		
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(mapper.selectComment(movieSeq)));
	}
	
}
