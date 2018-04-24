package kr.co.mlec.repository.domain;

public class Film {

    //  상영날짜 번호
    private Integer screeningSeq;

    //  영화번호
    private String filmSeq;

    //  영화이름
    private String filmName;

    public Integer getScreeningSeq() {
        return screeningSeq;
    }

    public void setScreeningSeq(Integer screeningSeq) {
        this.screeningSeq = screeningSeq;
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