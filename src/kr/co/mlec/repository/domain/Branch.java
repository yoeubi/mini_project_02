package kr.co.mlec.repository.domain;

public class Branch {

    //  지역번호
    private String locationNo;

    //  지점번호
    private int branchNo;

    //  지점이름
    private String branchName;

    public String getLocationNo() {
        return locationNo;
    }

    public void setLocationNo(String locationNo) {
        this.locationNo = locationNo;
    }

    public int getBranchNo() {
        return branchNo;
    }

    public void setBranchNo(int branchNo) {
        this.branchNo = branchNo;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

}
