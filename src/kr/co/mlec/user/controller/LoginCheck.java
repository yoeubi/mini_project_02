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
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/loginCheck")
public class LoginCheck extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		
		String id = request.getParameter("inputId3");
		String pass = request.getParameter("inputPassword3");
		
		Member member = new Member();
		member.setMemberId(id);
		member.setMemberPass(pass);
		Member user = mapper.login(member);
		
		PrintWriter out = response.getWriter();
		out.print(new Gson().toJson(user));
	}
	
	

}
