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

@WebServlet("/user/pwSearch")
public class PwSearchController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		response.setContentType("application/json; charset=utf-8"); 
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		
		Member member = new Member();
		member.setMemberId(id);
		member.setMemberEmail(email);
		member.setMemberName(name);
		
		String pass = mapper.searchPass(member);
		System.out.println("넘어온 비밀번호는"+pass);
		
		PrintWriter out = response.getWriter();
		out.write(new Gson().toJson(pass));
		out.close();
		
		
	}
	

}
