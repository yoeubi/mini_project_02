package api;

import java.util.List;

public class ChartApi {
	private DailyBoxOffice boxOfficeResult;
	
	public DailyBoxOffice getBoxOfficeResult() {
		return boxOfficeResult;
	}
	public void setBoxOfficeResult(DailyBoxOffice boxOfficeResult) {
		this.boxOfficeResult = boxOfficeResult;
	}
}

//순위별
class DailyBoxOffice{
	private List<RankOffice> dailyBoxOfficeList;

	public List<RankOffice> getDailyBoxOfficeList() {
		return dailyBoxOfficeList;
	}

	public void setDailyBoxOfficeList(List<RankOffice> dailyBoxOfficeList) {
		this.dailyBoxOfficeList = dailyBoxOfficeList;
	}
	
	
}

//순위별 필요 정보
class RankOffice{
	// 영화코드 - 영화 상세보기에 사용
	private String movieCd;
	// 영화예매율
	private String salesShare;
	
	public String getMovieCd() {
		return movieCd;
	}
	public void setMovieCd(String movieCd) {
		this.movieCd = movieCd;
	}
	public String getSalesShare() {
		return salesShare;
	}
	public void setSalesShare(String salesShare) {
		this.salesShare = salesShare;
	}
}

//영화 상세보기
class MovieDetail{
	private DetailInfo movieInfoResult;

	public DetailInfo getMovieInfoResult() {
		return movieInfoResult;
	}
	public void setMovieInfoResult(DetailInfo movieInfoResult) {
		this.movieInfoResult = movieInfoResult;
	}
}

//상세
class DetailInfo {
	private Detail movieInfo;
	public Detail getMovieInfo() {
		return movieInfo;
	}
	public void setMovieInfo(Detail movieInfo) {
		this.movieInfo = movieInfo;
	}
}

//영화 상세 필요정보
class Detail{
	// 영화이름
	private String movieNm;
	// 영화 영어 이름
	private String movieNmEn;
	// 상영시간
	private String showTm;
	// 개봉일
	private String openDt;
	// 제작국가
	private List<Nation> nations;
	// 장르
	private List<Genre> genres;
	// 감독
	private List<Director> directors;
	// 배우
	private List<Actor> actors;
	// 관람등급
	private List<Audit> audits;
	public String getMovieNm() {
		return movieNm;
	}
	public void setMovieNm(String movieNm) {
		this.movieNm = movieNm;
	}
	public String getMovieNmEn() {
		return movieNmEn;
	}
	public void setMovieNmEn(String movieNmEn) {
		this.movieNmEn = movieNmEn;
	}
	public String getShowTm() {
		return showTm;
	}
	public void setShowTm(String showTm) {
		this.showTm = showTm;
	}
	public String getOpenDt() {
		return openDt;
	}
	public void setOpenDt(String openDt) {
		this.openDt = openDt;
	}
	public List<Nation> getNations() {
		return nations;
	}
	public void setNations(List<Nation> nations) {
		this.nations = nations;
	}
	public List<Genre> getGenres() {
		return genres;
	}
	public void setGenres(List<Genre> genres) {
		this.genres = genres;
	}
	public List<Director> getDirectors() {
		return directors;
	}
	public void setDirectors(List<Director> directors) {
		this.directors = directors;
	}
	public List<Actor> getActors() {
		return actors;
	}
	public void setActors(List<Actor> actors) {
		this.actors = actors;
	}
	public List<Audit> getAudits() {
		return audits;
	}
	public void setAudits(List<Audit> audits) {
		this.audits = audits;
	}
}

//제작국가
class Nation{
	private String nationNm;

	public String getNationNm() {
		return nationNm;
	}
	public void setNationNm(String nationNm) {
		this.nationNm = nationNm;
	}
}

//장르
class Genre {
	private String genreNm;

	public String getGenreNm() {
		return genreNm;
	}
	public void setGenreNm(String genreNm) {
		this.genreNm = genreNm;
	}
}

//감독
class Director{
	private String peopleNm;

	public String getPeopleNm() {
		return peopleNm;
	}
	public void setPeopleNm(String peopleNm) {
		this.peopleNm = peopleNm;
	}
}

//배우
class Actor{
	private String peopleNm;

	public String getPeopleNm() {
		return peopleNm;
	}
	public void setPeopleNm(String peopleNm) {
		this.peopleNm = peopleNm;
	}
}

//관람등급
class Audit{
	private String watchGradeNm;

	public String getWatchGradeNm() {
		return watchGradeNm;
	}
	public void setWatchGradeNm(String watchGradeNm) {
		this.watchGradeNm = watchGradeNm;
	}
}

