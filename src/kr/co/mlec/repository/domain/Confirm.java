package kr.co.mlec.repository.domain;

import java.util.Date;

public class Confirm {

    //  예매번호
    private int confirmNo;

    //  사용자명
    private String memberId;

    //  영화이름
    private String movieSeq;

    //  지점번호
    private int branchNo;

    //  시작시간
    private String startTime;

    //  좌석들
    private String seats;

    //  금액
    private String price;

    //  예매날짜
    private Date regDate;

    //  상영날짜
    private String showingDays;

    public int getConfirmNo() {
        return confirmNo;
    }

    public void setConfirmNo(int confirmNo) {
        this.confirmNo = confirmNo;
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

    public int getBranchNo() {
        return branchNo;
    }

    public void setBranchNo(int branchNo) {
        this.branchNo = branchNo;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
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
