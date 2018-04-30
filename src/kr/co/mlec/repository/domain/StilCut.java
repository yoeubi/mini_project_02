package kr.co.mlec.repository.domain;

public class StilCut {
	//  영화고유번호
    private int movieSeq;
    //  스틸컷번호
    private int stilcutNo;
    //  스틸컷경로
    private String stilcutPath;
    //  스틸컷썸네일경로
    private String stilcutThumbPath;
    //  스틸컷저장이름
    private String stilcutSysName;
    //  스틸컷썸네일저장이름
    private String stilcutThumbSysName;

    public int getMovieSeq() {
        return movieSeq;
    }

    public void setMovieSeq(int movieSeq) {
        this.movieSeq = movieSeq;
    }

    public int getStilcutNo() {
        return stilcutNo;
    }

    public void setStilcutNo(int stilcutNo) {
        this.stilcutNo = stilcutNo;
    }

    public String getStilcutPath() {
        return stilcutPath;
    }

    public void setStilcutPath(String stilcutPath) {
        this.stilcutPath = stilcutPath;
    }

    public String getStilcutThumbPath() {
        return stilcutThumbPath;
    }

    public void setStilcutThumbPath(String stilcutThumbPath) {
        this.stilcutThumbPath = stilcutThumbPath;
    }

	public String getStilcutSysName() {
		return stilcutSysName;
	}

	public void setStilcutSysName(String stilcutSysName) {
		this.stilcutSysName = stilcutSysName;
	}

	public String getStilcutThumbSysName() {
		return stilcutThumbSysName;
	}

	public void setStilcutThumbSysName(String stilcutThumbSysName) {
		this.stilcutThumbSysName = stilcutThumbSysName;
	}
    
}
