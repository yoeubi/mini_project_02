package kr.co.mlec.repository.domain;

public class Showtimes {

    //  상영관 번호
    private String theaterCode;
    
    private String showCode;
    //  상영시간 타임
    private String showTime;
    
	public String getTheaterCode() {
		return theaterCode;
	}
	public void setTheaterCode(String theaterCode) {
		this.theaterCode = theaterCode;
	}
	public String getShowCode() {
		return showCode;
	}
	public void setShowCode(String showCode) {
		this.showCode = showCode;
	}
	public String getShowTime() {
		return showTime;
	}
	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

    
}
