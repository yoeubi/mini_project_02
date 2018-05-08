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
import kr.co.mlec.repository.domain.Film;
import kr.co.mlec.repository.mapper.FilmMapper;

@WebServlet("/controller/film")
public class SelectFilmController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FilmMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(FilmMapper.class);
		response.setContentType("application/json; charset=utf-8");
		System.out.println("screeningCode/" + request.getParameter("screeningCode")+"/");
		List<Film> films = mapper.selectFilms(request.getParameter("screeningCode"));
		PrintWriter out = response.getWriter();
		out.write(new Gson().toJson(films));
		System.out.println(new Gson().toJson(films));
		out.close();
	}
}
