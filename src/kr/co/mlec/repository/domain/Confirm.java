package kr.co.mlec.repository.domain;

import java.util.Date;

public class Confirm {

    //  예매번호
    private int confirmSeq;

    //  사용자명
    private String memberId;

    //  영화번호
    private int movieSeq;

    //  지점번호
    private int branchSeq;

    //  상영시간
    private String showTime;

    //  좌석들
    private String seats;

    //  금액
    private int price;

    //  예매날짜
    private Date regDate;

    //  상영날짜
    private String showingDays;

    public int getConfirmSeq() {
        return confirmSeq;
    }

    public void setConfirmSeq(int confirmSeq) {
        this.confirmSeq = confirmSeq;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public int getMovieSeq() {
        return movieSeq;
    }

    public void setMovieSeq(int movieSeq) {
        this.movieSeq = movieSeq;
    }

    public int getBranchSeq() {
        return branchSeq;
    }

    public void setBranchSeq(int branchSeq) {
        this.branchSeq = branchSeq;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public String getSeats() {
        return seats;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getShowingDays() {
        return showingDays;
    }

    public void setShowingDays(String showingDays) {
        this.showingDays = showingDays;
    }

}
