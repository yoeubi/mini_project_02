package kr.co.mlec.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
import kr.co.mlec.repository.domain.MoviePoster;
import kr.co.mlec.repository.mapper.MoviePosterMapper;

@WebServlet("/admin/posterRegist")
public class AdminPosterRegist extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MoviePosterMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MoviePosterMapper.class);
		
		
		String uploadPath = "c:/java-lec/upload";
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		File file = new File(uploadPath + datePath);
		if (!file.exists()) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request,  
				uploadPath + datePath,
				1024 * 1024 * 100, 
				"utf-8",  
				new MlecFileRenamePolicy() 
				);
		
		int movieSeq = Integer.parseInt(mRequest.getParameter("movieSeq"));
		// 파일 저장..
		Enumeration<String> names = mRequest.getFileNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			File f = mRequest.getFile(name);
			if (f != null) {
				String oriName = mRequest.getOriginalFileName(name);
				String systemName = mRequest.getFilesystemName(name);
				
				MoviePoster poster = new MoviePoster();
				poster.setMovieSeq(movieSeq);
				poster.setPosterPath(datePath);
				poster.setPosterSysName(systemName);
				poster.setPosterOriName(oriName);
				
				mapper.insertMoviePoster(poster);
			}
		}
		
		response.sendRedirect("detail?movieSeq=" + movieSeq);
		
		

	}
}
