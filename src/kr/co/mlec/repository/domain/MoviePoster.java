package kr.co.mlec.repository.domain;

public class MoviePoster {
	// 영화고유번호
	private int movieSeq;
	// 포스터번호
	private int posterNo;
	// 포스터경로
	private String posterPath;
	// 포스터저장이름
    private String posterSysName;

	public int getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public int getPosterNo() {
		return posterNo;
	}

	public void setPosterNo(int posterNo) {
		this.posterNo = posterNo;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	public String getPosterSysName() {
		return posterSysName;
	}

	public void setPosterSysName(String posterSysName) {
		this.posterSysName = posterSysName;
	}
	
}
