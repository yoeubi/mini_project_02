package ajax.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/ajax/user/doubleCheckId")
public class DoubleCheckId extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
		response.setContentType("application/json; charset=utf-8");
		String id = request.getParameter("id");
		int count = mapper.doubleCheckId(id);
		PrintWriter out= response.getWriter();
		out.print("{\"result\":"+ count+"}");
	}
	

}
