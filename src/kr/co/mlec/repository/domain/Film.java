package kr.co.mlec.repository.domain;

public class Film {

    //  상영날짜 번호
    private String screeningCode;

    //  영화번호
    private String filmCode;

    //  영화이름
    private String filmName;

    public String getScreeningCode() {
        return screeningCode;
    }

    public void setScreeningCode(String screeningCode) {
        this.screeningCode = screeningCode;
    }

    public String getFilmCode() {
        return filmCode;
    }

    public void setFilmCode(String filmCode) {
        this.filmCode = filmCode;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

}