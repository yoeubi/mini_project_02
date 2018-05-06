package kr.co.mlec.repository.domain;

import java.util.List;

public class Theater {

    //  영화번호
    private String filmCode;

    //  상영관 번호
    private String theaterCode;

    //  상영관 이름
    private String theaterName;

    //  상영관좌석
    private String theaterTotalSeat;

    //  예약된 좌석
    private String theaterSoldSeat;
    
    private List<Showtimes> timeTable;
    
    

    public List<Showtimes> getTimeTable() {
		return timeTable;
	}

	public Theater setTimeTable(List<Showtimes> timeTable) {
		this.timeTable = timeTable;
		return this;
	}

	public String getFilmCode() {
        return filmCode;
    }

    public Theater setFilmCode(String filmCode) {
        this.filmCode = filmCode;
        return this;
    }

    public String getTheaterCode() {
        return theaterCode;
    }

    public Theater setTheaterCode(String theaterCode) {
        this.theaterCode = theaterCode;
        return this;
    }

    public String getTheaterName() {
        return theaterName;
    }

    public Theater setTheaterName(String theaterName) {
        this.theaterName = theaterName;
        return this;
    }

    public String getTheaterTotalSeat() {
        return theaterTotalSeat;
    }

    public Theater setTheaterTotalSeat(String theaterTotalSeat) {
        this.theaterTotalSeat = theaterTotalSeat;
        return this;
    }

    public String getTheaterSoldSeat() {
        return theaterSoldSeat;
    }

    public Theater setTheaterSoldSeat(String theaterSoldSeat) {
        this.theaterSoldSeat = theaterSoldSeat;
        return this;
    }

}