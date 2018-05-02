package kr.co.mlec.user.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
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
		
		
		//프로필 사진 업로드
		String uploadPath="${pageContext.request.contextPath}/images/upload";
		String photoName = "/"+user.getMemberId();
		File file = new File(uploadPath+photoName);
		if(!file.exists()) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request,  
				uploadPath+photoName,
				1024 * 1024 * 100, 
				"utf-8",  
				new MlecFileRenamePolicy() 
				);
		
		Enumeration<String> names = mRequest.getFileNames();
		if(names.hasMoreElements()) {
			String fName = names.nextElement();
			File f = mRequest.getFile(fName);
			if (f != null) {
				// 데이터베이스에 파일 정보 저장
				Member fMember = new Member();
				fMember.setMemberPhotoName(user.getMemberId());
				fMember.setMemberPhotoPath(uploadPath+photoName);
				
				mapper.insertProfilePhoto(fMember);
			}
		}
		
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
			Member cloneMember = member.clone(user);
			cloneMember.setMemberEmail(email);
			cloneMember.setMemberName(name);
			cloneMember.setMemberPhoneNo(phone);
			cloneMember.setMemberId(sessionId);
			mapper.updateMemberInfo(cloneMember);
			System.out.println(cloneMember.getMemberEmail());
			System.out.println(cloneMember.getMemberPhotoPath());
			System.out.println(cloneMember.getMemberType());
			session.setAttribute("user", cloneMember);
			
		}else {
			request.setAttribute("errMsg", "비밀번호가 일치하지 않습니다.");
		};
		response.sendRedirect("myPageForm");
		
		
		
		
	}
	
} 






















