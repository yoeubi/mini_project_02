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
import kr.co.mlec.repository.mapper.CommentMapper;

@WebServlet("/moviechart/commentDelete")
public class CommentDeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CommentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(CommentMapper.class);
		
		int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
		int CommentSeq = Integer.parseInt(request.getParameter("commentSeq"));
		
		mapper.deleteComment(CommentSeq);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println(new Gson().toJson(mapper.selectComment(movieSeq)));
	
	}
}
