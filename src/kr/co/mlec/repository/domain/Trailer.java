package kr.co.mlec.repository.domain;

public class Trailer {
	// 영화고유번호
	private int movieSeq;
	// 트레일러번호
	private int trailerNo;
	// 트레일러이미지경로
	private String trailerImgPath;
	// 트레일러링크
	private String trailerLink;
    //  트레일러저장이름
    private String trailerSysName;

	public int getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public int getTrailerNo() {
		return trailerNo;
	}

	public void setTrailerNo(int trailerNo) {
		this.trailerNo = trailerNo;
	}

	public String getTrailerImgPath() {
		return trailerImgPath;
	}

	public void setTrailerImgPath(String trailerImgPath) {
		this.trailerImgPath = trailerImgPath;
	}

	public String getTrailerLink() {
		return trailerLink;
	}

	public void setTrailerLink(String trailerLink) {
		this.trailerLink = trailerLink;
	}

	public String getTrailerSysName() {
		return trailerSysName;
	}

	public void setTrailerSysName(String trailerSysName) {
		this.trailerSysName = trailerSysName;
	}
	
}
