package kr.co.mlec.repository.domain;

import java.util.Date;

public class Confirm {

    //  예매번호
    private int confirmSeq;

    //  사용자 아이디
    private String memberId;

    //  예매시간
    private Date confirmDate;

    //  지역 코드
    private String locationCode;

    //  지역 이름
    private String locationName;

    //  지점 코드
    private String branchCode;

    //  지점 이름
    private String branchName;

    //  상영날짜 코드
    private String screeningCode;

    //  상영날짜
    private String screeningDate;

    //  영화 코드
    private String filmCode;

    //  영화 이름
    private String filmName;

    //  상영관 코드
    private String theaterCode;

    //  상영관 이름
    private String theaterName;

    //  상영시간 코드
    private String showCode;

    //  상영시간
    private String showTime;
    
    private String wheaterTicket;

    //  가격
    private int price;

    //  카드번호
    private String cardNum;

    //  좌석
    private String seat;

<<<<<<< HEAD
    public int getConfirmSeq() {
        return confirmSeq;
    }

    public Confirm setConfirmSeq(int confirmSeq) {
        this.confirmSeq = confirmSeq;
        return this;
    }

    public String getMemberId() {
        return memberId;
    }

    public Confirm setMemberId(String memberId) {
        this.memberId = memberId;
        return this;
    }

    public Date getConfirmDate() {
        return confirmDate;
    }

    public Confirm setConfirmDate(Date confirmDate) {
        this.confirmDate = confirmDate;
        return this;
    }

    public String getLocationCode() {
        return locationCode;
    }

    public Confirm setLocationCode(String locationCode) {
        this.locationCode = locationCode;
        return this;
    }

    public String getLocationName() {
        return locationName;
    }

    public Confirm setLocationName(String locationName) {
        this.locationName = locationName;
        return this;
    }

    public String getBranchCode() {
        return branchCode;
    }

    public Confirm setBranchCode(String branchCode) {
        this.branchCode = branchCode;
        return this;
    }

    public String getBranchName() {
        return branchName;
    }

    public Confirm setBranchName(String branchName) {
        this.branchName = branchName;
        return this;
    }

    public String getScreeningCode() {
        return screeningCode;
    }

    public Confirm setScreeningCode(String screeningCode) {
        this.screeningCode = screeningCode;
        return this;
    }

    public String getScreeningDate() {
        return screeningDate;
    }

    public Confirm setScreeningDate(String screeningDate) {
        this.screeningDate = screeningDate;
        return this;
    }

    public String getFilmCode() {
        return filmCode;
    }

    public Confirm setFilmCode(String filmCode) {
        this.filmCode = filmCode;
        return this;
    }

    public String getFilmName() {
        return filmName;
    }

    public Confirm setFilmName(String filmName) {
        this.filmName = filmName;
        return this;
    }

    public String getTheaterCode() {
        return theaterCode;
    }

    public Confirm setTheaterCode(String theaterCode) {
        this.theaterCode = theaterCode;
        return this;
    }

    public String getTheaterName() {
        return theaterName;
    }

    public Confirm setTheaterName(String theaterName) {
        this.theaterName = theaterName;
        return this;
    }

    public String getShowCode() {
        return showCode;
    }

    public Confirm setShowCode(String showCode) {
        this.showCode = showCode;
        return this;
    }

    public String getShowTime() {
        return showTime;
    }

    public Confirm setShowTime(String showTime) {
        this.showTime = showTime;
        return this;
    }

    public int getPrice() {
        return price;
    }

    public Confirm setPrice(int price) {
        this.price = price;
        return this;
    }

    public String getCardNum() {
        return cardNum;
    }

    public Confirm setCardNum(String cardNum) {
        this.cardNum = cardNum;
        return this;
    }

    public String getSeat() {
        return seat;
    }

    public Confirm setSeat(String seat) {
        this.seat = seat;
        return this;
    }
=======
	public int getConfirmSeq() {
		return confirmSeq;
	}

	public Confirm setConfirmSeq(int confirmSeq) {
		this.confirmSeq = confirmSeq;
		return this;
	}

	public String getMemberId() {
		return memberId;
	}

	public Confirm setMemberId(String memberId) {
		this.memberId = memberId;
		return this;
	}

	public Date getConfirmDate() {
		return confirmDate;
	}

	public Confirm setConfirmDate(Date confirmDate) {
		this.confirmDate = confirmDate;
		return this;
	}

	public String getLocationCode() {
		return locationCode;
	}

	public Confirm setLocationCode(String locationCode) {
		this.locationCode = locationCode;
		return this;
	}

	public String getLocationName() {
		return locationName;
	}

	public Confirm setLocationName(String locationName) {
		this.locationName = locationName;
		return this;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public Confirm setBranchCode(String branchCode) {
		this.branchCode = branchCode;
		return this;
	}

	public String getBranchName() {
		return branchName;
	}

	public Confirm setBranchName(String branchName) {
		this.branchName = branchName;
		return this;
	}

	public String getScreeningCode() {
		return screeningCode;
	}

	public Confirm setScreeningCode(String screeningCode) {
		this.screeningCode = screeningCode;
		return this;
	}

	public String getScreeningDate() {
		return screeningDate;
	}

	public Confirm setScreeningDate(String screeningDate) {
		this.screeningDate = screeningDate;
		return this;
	}

	public String getFilmCode() {
		return filmCode;
	}

	public Confirm setFilmCode(String filmCode) {
		this.filmCode = filmCode;
		return this;
	}

	public String getFilmName() {
		return filmName;
	}

	public Confirm setFilmName(String filmName) {
		this.filmName = filmName;
		return this;
	}

	public String getShowCode() {
		return showCode;
	}

	public Confirm setShowCode(String showCode) {
		this.showCode = showCode;
		return this;
	}

	public String getShowTime() {
		return showTime;
	}

	public Confirm setShowTime(String showTime) {
		this.showTime = showTime;
		return this;
	}

	public int getPrice() {
		return price;
	}

	public Confirm setPrice(int price) {
		this.price = price;
		return this;
	}

	public String getCardNum() {
		return cardNum;
	}

	public Confirm setCardNum(String cardNum) {
		this.cardNum = cardNum;
		return this;
	}

	public String getSeat() {
		return seat;
	}

	public Confirm setSeat(String seat) {
		this.seat = seat;
		return this;
	}

	public String getWheaterTicket() {
		return wheaterTicket;
	}

	public void setWheaterTicket(String wheaterTicket) {
		this.wheaterTicket = wheaterTicket;
	}

   
>>>>>>> 69b410b2fa303af4b6b5f2bc1a34b03e55669d96

}