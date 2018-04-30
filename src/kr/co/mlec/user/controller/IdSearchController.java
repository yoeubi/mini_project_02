package kr.co.mlec.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/user/idSearch")
public class IdSearchController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		response.setContentType("application/json; charset=utf-8");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		Member member = new Member();
		System.out.println(name);
		System.out.println(email);
		
		member.setMemberName(name);
		member.setMemberEmail(email);
		
		String id = mapper.searchId(member);
		System.out.println(id);
		
		PrintWriter out = response.getWriter();
		out.print("{\"id\":\""+id+"\"}");	
		
		
		
	}
	

}
