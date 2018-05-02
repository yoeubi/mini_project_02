package kr.co.mlec.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mapper.Mapper;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/myPagePassUpdate")
public class MyPagePassUpdateController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String passExis= request.getParameter("inputPassExis");
		String passNew= request.getParameter("inputPassNew");
//		String passNewCheck= request.getParameter("inputPassCheck");
		HttpSession session = request.getSession();
		Member user = (Member)session.getAttribute("user");
		String id = user.getMemberId();
		
		
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		
		Member member = new Member();
		member.setMemberId(id);
		member.setMemberPass(passNew);
		mapper.updateMemberPass(member);
		
		response.sendRedirect("myPageForm");
		
		
	}
	
} 
