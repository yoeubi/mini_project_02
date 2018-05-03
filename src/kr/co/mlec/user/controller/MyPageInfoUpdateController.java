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
		Member user = (Member)session.getAttribute("user");
		String sessionId= user.getMemberId();
		String sessionPass= user.getMemberPass();
		String sessionName= user.getMemberName();
		String sessionEmail= user.getMemberEmail();
		String sessionPhone= user.getMemberPhoneNo();
		System.out.println("세션이름"+sessionName);
		
		//프로필 사진 업로드
//		 String dir = System.getProperty("user.dir");
//		 String dir = MyPageInfoUpdateController.class.getResource("").getPath();
//		 System.out.println("현재경로"+dir);
//		 System.out.println("프로젝트명 : "+request.getContextPath());
		String uploadPath="E:\\java-lec\\git\\mini_pro_2\\WebContent\\images\\profileUpload";

//		/minipro2/WebContent/images/profileUpload
//		String photoName = user.getMemberId();
		File file = new File(uploadPath);
		
		 
		MultipartRequest mRequest = new MultipartRequest(
				request,  
				uploadPath,
				1024 * 1024 * 100, 
				"utf-8",  
				new MlecFileRenamePolicy() 
				);
		
		String pass = mRequest.getParameter("inputPassword3");
		String name = mRequest.getParameter("inputName3");
		String email = mRequest.getParameter("inputEmail3");
		String phone = mRequest.getParameter("inputPhone3");
		String wheatherD = mRequest.getParameter("defaltPhotoGrid");
		
		//프로필 기본값 변경
		if(wheatherD.equals("Y")) {
			Member dafaulMem = new Member();
			dafaulMem.setMemberPhotoName("default_profile.jpg");
			dafaulMem.setMemberPhotoPath(uploadPath);
			dafaulMem.setMemberId(sessionId);
			mapper.insertProfilePhoto(dafaulMem);		
		}
		
		if(name.equals("")) {
			name=sessionName;
//			System.out.println("이름넣음");
		}
		if(email.equals("")) {
			email=sessionEmail;
//			System.out.println("이메일 넣음");
		}
		if(phone.equals("")) {
			phone=sessionPhone;
//			System.out.println("핸드폰넣음");
		}
		
		Enumeration<String> names = mRequest.getFileNames();
		if(names.hasMoreElements()) {
//			if(!file.exists()) file.mkdirs();
			String fName = names.nextElement();
			System.out.println("파일이름"+fName) ;
			File f2 = mRequest.getFile(fName);
			
			if (f2 != null) {
				// 데이터베이스에 파일 정보 저장
				Member fMember = new Member();
				fMember.setMemberId(user.getMemberId());
				fMember.setMemberPhotoName(mRequest.getFilesystemName(fName));
				System.out.println(mRequest.getFilesystemName("파일 시스템이름"+fName));
				fMember.setMemberPhotoPath(uploadPath);
				
				mapper.insertProfilePhoto(fMember);
				Member upMem = mapper.findMember(user.getMemberId());
				session.setAttribute("user", upMem);
			}
		}
		
//		System.out.println("세션비밀번호"+sessionPass);
//		System.out.println("파라미터이름 "+name);
//		System.out.println("파라미터 이메일"+email);
//		System.out.println("파라미터 번호"+phone);
		if(sessionPass.equals(pass)) { 
//			System.out.println("비번 같음 확인");
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






















