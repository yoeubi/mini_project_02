package kr.co.mlec.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/passCheck")
public class PasswordCheck extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
//	System.out.println("파라미터 아이디"+id);
	String pass = mapper.passCheck(id);
//	System.out.println("xml꺼내온비번"+pass);
	PrintWriter out = response.getWriter();
	out.write(new Gson().toJson(pass));
	}

}
