package kr.co.mlec.repository.domain;

public class Theater {

    //  상영날짜 번호
    private int showingNo;

    //  영화번호
    private String filmSeq;

    //  영화이름
    private String filmName;

    public int getShowingNo() {
        return showingNo;
    }

    public void setShowingNo(int showingNo) {
        this.showingNo = showingNo;
    }

    public String getFilmSeq() {
        return filmSeq;
    }

    public void setFilmSeq(String filmSeq) {
        this.filmSeq = filmSeq;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

}