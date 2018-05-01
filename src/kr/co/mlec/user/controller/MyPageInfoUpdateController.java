package kr.co.mlec.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/myPageInfoUpdate")
public class MyPageInfoUpdateController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		HttpSession session = request.getSession();
		String pass = request.getParameter("inputPassword3");
		String name = request.getParameter("inputName3");
		String email = request.getParameter("inputEmail3");
		String phone = request.getParameter("inputPhone3");
		
		Member user = (Member)session.getAttribute("user");
		String sessionId= user.getMemberId();
		String sessionPass= user.getMemberPass();
		String sessionName= user.getMemberName();
		String sessionEmail= user.getMemberEmail();
		String sessionPhone= user.getMemberPhoneNo();
		
		if(name == null) {
			name=sessionName;
		}
		if(email == "") {
			email=sessionEmail;
		}
		if(phone == "") {
			phone=sessionPhone;
		}
//		System.out.println("세션비밀번호"+sessionPass);
		System.out.println("파라미터 "+name);
		System.out.println("파라미터 "+email);
		System.out.println("파라미터 "+phone);
		if(sessionPass.equals(pass)) {
			System.out.println("비번 같음 확인");
			Member member = new Member();
			member.setMemberEmail(email);
			member.setMemberName(name);
			member.setMemberPhoneNo(phone);
			member.setMemberId(sessionId);
			mapper.updateMemberInfo(member);
		}else {
			
		};
		response.sendRedirect("myPageForm");
		
	}
	
} 
