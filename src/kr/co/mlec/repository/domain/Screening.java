package kr.co.mlec.repository.domain;

public class Screening {

    //  지점 번호
    private Integer branchSeq;

    //  상영날짜 번호
    private String screeningSeq;

    //  상영날짜
    private String screeningDate;

    public Integer getBranchSeq() {
        return branchSeq;
    }

    public void setBranchSeq(Integer branchSeq) {
        this.branchSeq = branchSeq;
    }

    public String getScreeningSeq() {
        return screeningSeq;
    }

    public void setScreeningSeq(String screeningSeq) {
        this.screeningSeq = screeningSeq;
    }

    public String getScreeningDate() {
        return screeningDate;
    }

    public void setScreeningDate(String screeningDate) {
        this.screeningDate = screeningDate;
    }

}