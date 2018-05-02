package kr.co.mlec.moviechart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		response.sendRedirect("detail?movieSeq=" + movieSeq);
		
	}
	
}
