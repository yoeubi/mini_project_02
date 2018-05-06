package kr.co.mlec.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Confirm;
import kr.co.mlec.repository.mapper.ConfirmMapper;

@WebServlet("/movieHistory")
public class movieHistory extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
//		System.out.println("파라미터 넘어온 id:"+id);
		ConfirmMapper mapper= MyAppSqlConfig.getSqlSession().getMapper(ConfirmMapper.class);
		List<Confirm> movieHis = mapper.selectMovieHistory(id);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out= response.getWriter();
		out.write(new Gson().toJson(movieHis));
		
	}
	

}
