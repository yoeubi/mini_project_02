package kr.co.mlec.repository.domain;

public class Branch {

    //  지역번호
    private String locationSeq;

    //  지점번호
    private Integer branchSeq;

    //  지점이름
    private String branchName;

    public String getLocationSeq() {
        return locationSeq;
    }

    public void setLocationSeq(String locationSeq) {
        this.locationSeq = locationSeq;
    }

    public Integer getBranchSeq() {
        return branchSeq;
    }

    public void setBranchSeq(Integer branchSeq) {
        this.branchSeq = branchSeq;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

}