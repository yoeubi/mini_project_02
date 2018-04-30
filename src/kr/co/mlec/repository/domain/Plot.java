package kr.co.mlec.repository.domain;

public class Plot {
	//  영화고유번호
	private int movieSeq;
	//  영화줄거리
	private String moviePlot;

	public int getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getMoviePlot() {
		return moviePlot;
	}

	public void setMoviePlot(String moviePlot) {
		this.moviePlot = moviePlot;
	}
}
