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

	public void setTimeTable(List<Showtimes> timeTable) {
		this.timeTable = timeTable;
	}

	public String getFilmCode() {
        return filmCode;
    }

    public void setFilmCode(String filmCode) {
        this.filmCode = filmCode;
    }

    public String getTheaterCode() {
        return theaterCode;
    }

    public void setTheaterCode(String theaterCode) {
        this.theaterCode = theaterCode;
    }

    public String getTheaterName() {
        return theaterName;
    }

    public void setTheaterName(String theaterName) {
        this.theaterName = theaterName;
    }

    public String getTheaterTotalSeat() {
        return theaterTotalSeat;
    }

    public void setTheaterTotalSeat(String theaterTotalSeat) {
        this.theaterTotalSeat = theaterTotalSeat;
    }

    public String getTheaterSoldSeat() {
        return theaterSoldSeat;
    }

    public void setTheaterSoldSeat(String theaterSoldSeat) {
        this.theaterSoldSeat = theaterSoldSeat;
    }

}