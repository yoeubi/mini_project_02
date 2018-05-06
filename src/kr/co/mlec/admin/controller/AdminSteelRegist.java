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
import kr.co.mlec.common.file.ThumbnailUtil;
import kr.co.mlec.repository.domain.StilCut;
import kr.co.mlec.repository.mapper.StilCutMapper;

@WebServlet("/admin/steelRegist")
public class AdminSteelRegist extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StilCutMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(StilCutMapper.class);
		
		
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
			System.out.println(name);
			File f = mRequest.getFile(name);
			if (f != null) {
				String oriName = mRequest.getOriginalFileName(name);
				String systemName = mRequest.getFilesystemName(name);
				
//				System.out.println(datePath);
//				System.out.println(systemName);
//				System.out.println("/thumb_"+systemName);
				
				StilCut stil = new StilCut();
				stil.setMovieSeq(movieSeq);
				stil.setStilcutPath(datePath);
				stil.setStilcutSysName(systemName);
				stil.setStilcutThumbPath(datePath);
				stil.setStilcutThumbSysName("/thumb_"+systemName);
				
				mapper.insertStilCut(stil);
				
				ThumbnailUtil.createThumbnail(f.getPath(), f.getParent() + "/thumb_" + f.getName(),
						200, 0, "W");
			}
		}
		response.sendRedirect("detail?movieSeq=" + movieSeq);
	}
}
