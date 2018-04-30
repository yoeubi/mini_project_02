package kr.co.mlec.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/signup")
public class SignUpController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		Member member = new Member();
		String memberID = request.getParameter("inputId3");
		String memberPass = request.getParameter("inputPass3");
		String memberName = request.getParameter("inputName3");
		String memberEmail = request.getParameter("inputEmail3");
		String memberPhoneNo = request.getParameter("inputPhone3");
		member.setMemberID(memberID);
		member.setMemberPass(memberPass);
		member.setMemberEmail(memberEmail);
		member.setMemberPhoneNo(memberPhoneNo);
		member.setMemberName(memberName);
		
		mapper.insertMember(member);
		response.sendRedirect("login");
	}
	
}
