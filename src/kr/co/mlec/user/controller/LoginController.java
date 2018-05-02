package kr.co.mlec.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/login")
public class LoginController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		
		String id = request.getParameter("inputId3");
		String pass = request.getParameter("inputPassword3");
		
		Member member = new Member();
		System.out.println("id :" +id);
		System.out.println("pass" + pass);
		
		member.setMemberId(id);
		member.setMemberPass(pass);
		Member user = mapper.login(member);
//		System.out.println("xml 결과"+result);
		
		if(user == null) {
			request.setAttribute("errMsg", "아이디와 비밀번호가 일치하지 않습니다.");
		}else {
			System.out.println("로그인 성공");
			
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main/main.jsp"
		);
		rd.forward(request, response);
		
	}
	

}
