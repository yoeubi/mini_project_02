package kr.co.mlec.repository.domain;

public class Theater {

    //  영화번호
    private Integer filmSeq;

    //  상영관 번호
    private Integer theaterSeq;

    //  상영관 이름
    private String theaterName;

    //  상영관좌석
    private Integer theaterTotalSeat;

    //  예약된 좌석
    private String theaterSoldSeat;

    public Integer getFilmSeq() {
        return filmSeq;
    }

    public void setFilmSeq(Integer filmSeq) {
        this.filmSeq = filmSeq;
    }

    public Integer getTheaterSeq() {
        return theaterSeq;
    }

    public void setTheaterSeq(Integer theaterSeq) {
        this.theaterSeq = theaterSeq;
    }

    public String getTheaterName() {
        return theaterName;
    }

    public void setTheaterName(String theaterName) {
        this.theaterName = theaterName;
    }

    public Integer getTheaterTotalSeat() {
        return theaterTotalSeat;
    }

    public void setTheaterTotalSeat(Integer theaterTotalSeat) {
        this.theaterTotalSeat = theaterTotalSeat;
    }

    public String getTheaterSoldSeat() {
        return theaterSoldSeat;
    }

    public void setTheaterSoldSeat(String theaterSoldSeat) {
        this.theaterSoldSeat = theaterSoldSeat;
    }

}