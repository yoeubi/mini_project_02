package kr.co.mlec.repository.domain;

public class Film {

    //  영화번호
    private int filmSeq;

    //  상영관 번호
    private int theaterNo;

    //  상영관 이름
    private String theaterName;

    //  상영관좌석
    private int theaterTotalSeat;

    //  예약된 좌석
    private String theaterSoldSeat;

    public int getFilmSeq() {
        return filmSeq;
    }

    public void setFilmSeq(int filmSeq) {
        this.filmSeq = filmSeq;
    }

    public int getTheaterNo() {
        return theaterNo;
    }

    public void setTheaterNo(int theaterNo) {
        this.theaterNo = theaterNo;
    }

    public String getTheaterName() {
        return theaterName;
    }

    public void setTheaterName(String theaterName) {
        this.theaterName = theaterName;
    }

    public int getTheaterTotalSeat() {
        return theaterTotalSeat;
    }

    public void setTheaterTotalSeat(int theaterTotalSeat) {
        this.theaterTotalSeat = theaterTotalSeat;
    }

    public String getTheaterSoldSeat() {
        return theaterSoldSeat;
    }

    public void setTheaterSoldSeat(String theaterSoldSeat) {
        this.theaterSoldSeat = theaterSoldSeat;
    }

}