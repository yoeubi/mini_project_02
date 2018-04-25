package kr.co.mlec.repository.domain;

import java.util.Date;

public class Confirm {

    //  예매번호
    private Integer confirmSeq;

    //  사용자명
    private String memberId;

    //  영화번호
    private String movieSeq;

    //  지점번호
    private Integer branchSeq;

    //  상영시간
    private String showTime;

    //  좌석들
    private String seats;

    //  금액
    private String price;

    //  예매날짜
    private Date regDate;

    //  상영날짜
    private String showingDays;

    public Integer getConfirmSeq() {
        return confirmSeq;
    }

    public void setConfirmSeq(Integer confirmSeq) {
        this.confirmSeq = confirmSeq;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getMovieSeq() {
        return movieSeq;
    }

    public void setMovieSeq(String movieSeq) {
        this.movieSeq = movieSeq;
    }

    public Integer getBranchSeq() {
        return branchSeq;
    }

    public void setBranchSeq(Integer branchSeq) {
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
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
