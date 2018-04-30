package kr.co.mlec.repository.domain;

public class Genres {
	//  영화고유번호
	private int movieSeq;
	//  영화장르
	private String movieGenre;

	public int getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getMovieGenre() {
		return movieGenre;
	}

	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}
}
