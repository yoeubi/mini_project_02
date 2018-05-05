package kr.co.mlec.repository.domain;

import java.util.Date;

public class Confirm {

    private int confirmSeq;

    private String memberId;

    private Date confirmDate;

    private String locationCode;

    private String locationName;

    private String branchCode;

    private String branchName;

    private String screeningCode;

    private String screeningDate;

    private String filmCode;

    private String filmName;

    private String showCode;

    private String showTime;
    
    private String wheaterTicket;

    private int price;

    private String cardNum;

    private String seat;

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

   

}