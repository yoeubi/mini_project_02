package kr.co.mlec.repository.domain;

public class Showtimes {

    //  상영관 번호
    private Integer theaterSeq;

    //  상영시간 타임
    private String showTime;

    public Integer getTheaterSeq() {
        return theaterSeq;
    }

    public void setTheaterSeq(Integer theaterSeq) {
        this.theaterSeq = theaterSeq;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }
}
