package kr.co.mlec.repository.domain;

public class Branch {

    //  지역번호
    private String locationCode;

    //  지점번호
    private String branchCode;

    //  지점이름
    private String branchName;

	public String getLocationCode() {
		return locationCode;
	}

	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	
    
}