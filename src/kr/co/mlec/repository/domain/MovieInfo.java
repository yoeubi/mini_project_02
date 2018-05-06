package kr.co.mlec.repository.domain;

/**
 * @author eunj2n
 *
 */
public class MovieInfo {
    //  영화고유번호
    private int movieSeq;
    //  영화이름
    private String movieTitle;
    //  영문영화이름
    private String movieTitleEng;
    //  개봉일
    private String movieReleaseDate;
    //  감독명
    private String movieDirector;
    //  관람등급
    private String movieRating;
    //  상영시간
    private String movieRuntime;
    //  제작국가
    private String movieNation;
    //  예매율
    private String movieSalesShare;
    // 줄거리
    private String moviePlot;
    // 트레일러 주소
    private String movieTrailer;
    
    private MoviePoster poster;
    
    

    public String getMovieTrailer() {
		return movieTrailer;
	}

	public void setMovieTrailer(String movieTrailer) {
		this.movieTrailer = movieTrailer;
	}

	public MoviePoster getPoster() {
		return poster;
	}

	public void setPoster(MoviePoster poster) {
		this.poster = poster;
	}

	public String getMoviePlot() {
		return moviePlot;
	}

	public void setMoviePlot(String moviePlot) {
		this.moviePlot = moviePlot;
	}

	public int getMovieSeq() {
        return movieSeq;
    }

    public void setMovieSeq(int movieSeq) {
        this.movieSeq = movieSeq;
    }

    public String getMovieTitle() {
        return movieTitle;
    }

    public void setMovieTitle(String movieTitle) {
        this.movieTitle = movieTitle;
    }

    public String getMovieTitleEng() {
        return movieTitleEng;
    }

    public void setMovieTitleEng(String movieTitleEng) {
        this.movieTitleEng = movieTitleEng;
    }

    public String getMovieReleaseDate() {
        return movieReleaseDate;
    }

    public void setMovieReleaseDate(String movieReleaseDate) {
        this.movieReleaseDate = movieReleaseDate;
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector;
    }

    public String getMovieRating() {
        return movieRating;
    }

    public void setMovieRating(String movieRating) {
        this.movieRating = movieRating;
    }

    public String getMovieRuntime() {
        return movieRuntime;
    }

    public void setMovieRuntime(String movieRuntime) {
        this.movieRuntime = movieRuntime;
    }

    public String getMovieNation() {
        return movieNation;
    }

    public void setMovieNation(String movieNation) {
        this.movieNation = movieNation;
    }

    public String getMovieSalesShare() {
        return movieSalesShare;
    }

    public void setMovieSalesShare(String movieSalesShare) {
        this.movieSalesShare = movieSalesShare;
    }

}
