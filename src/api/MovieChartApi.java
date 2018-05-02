package api;

import java.util.List;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Actors;
import kr.co.mlec.repository.domain.Genres;
import kr.co.mlec.repository.domain.MovieInfo;
import kr.co.mlec.repository.mapper.ActorsMapper;
import kr.co.mlec.repository.mapper.GenresMapper;
import kr.co.mlec.repository.mapper.MovieInfoMapper;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;

public class MovieChartApi {
	public static void main(String[] args) {
		String key = "69f7efb7f821ba2b9806d4dd5d8cf464";
		String itemPerPage = "12";
		try {
			KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
			String dailyoffice = service.getDailyBoxOffice(true, "20180430", itemPerPage,"", "", "");
			MovieInfoMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(MovieInfoMapper.class);
			ActorsMapper actmapper = MyAppSqlConfig.getSqlSession().getMapper(ActorsMapper.class);
			GenresMapper genmapper = MyAppSqlConfig.getSqlSession().getMapper(GenresMapper.class);

			Gson gson = new Gson();
			ChartApi api = gson.fromJson(dailyoffice, ChartApi.class);
			DailyBoxOffice box = api.getBoxOfficeResult();
			List<RankOffice> rank =box.getDailyBoxOfficeList();
			MovieInfo info = new MovieInfo();

			for(RankOffice ra : rank) {
				// 영화 예매율
				info.setMovieSalesShare(ra.getSalesShare());
				String movieDta = service.getMovieInfo(true, ra.getMovieCd());
				MovieDetail detail = gson.fromJson(movieDta, MovieDetail.class);
				DetailInfo einfo = detail.getMovieInfoResult();

				Detail movie = einfo.getMovieInfo();
				// 영화이름
				info.setMovieTitle(movie.getMovieNm());
				// 영화 영어 이름
				info.setMovieTitleEng(movie.getMovieNmEn());
				// 상영 시간
				info.setMovieRuntime(movie.getShowTm());
				// 개봉일
				info.setMovieReleaseDate(movie.getOpenDt());

				// 제작국가
				List<Nation> nation = movie.getNations();
				for(Nation n : nation) {
					info.setMovieNation(n.getNationNm());
					break;
				}

				// 감독
				List<Director> director = movie.getDirectors();
				for(Director d : director) {
					info.setMovieDirector(d.getPeopleNm());
					break;
				}

				// 관람 등급
				List<Audit> audit = movie.getAudits();
				for(Audit au : audit) {
					info.setMovieRating(au.getWatchGradeNm());
					break;
				}

				mapper.insertMovieInfo(info);
				
				// 장르
				List<Genre> genre = movie.getGenres();
				for(Genre g : genre) {
					Genres gen = new Genres();
					gen.setMovieSeq(info.getMovieSeq());
					gen.setMovieGenre(g.getGenreNm());
					genmapper.insertGenres(gen);
				}

				// 배우
				List<Actor> actor = movie.getActors();
				for(Actor a : actor) {
					Actors act = new Actors();
					act.setMovieSeq(info.getMovieSeq());
					act.setMovieActor(a.getPeopleNm());
					actmapper.insertActors(act);
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
