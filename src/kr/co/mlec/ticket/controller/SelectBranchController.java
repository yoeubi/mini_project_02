package kr.co.mlec.ticket.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Branch;
import kr.co.mlec.repository.mapper.BranchMapper;

@WebServlet("/controller/branch")
public class SelectBranchController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BranchMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(BranchMapper.class);
		response.setContentType("application/json; charset=utf-8");
		List<Branch> branches = mapper.selectBranch(request.getParameter("locationCode"));
		PrintWriter out = response.getWriter();
		out.write(new Gson().toJson(branches));
		out.close();
	}
	
}
