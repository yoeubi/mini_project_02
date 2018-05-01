package kr.co.mlec.repository.domain;

public class Screening {

    //  지점 번호
    private String branchCode;

    //  상영날짜 번호
    private String screeningCode;

    //  상영날짜
    private String screeningDate;

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getScreeningCode() {
		return screeningCode;
	}

	public void setScreeningCode(String screeningCode) {
		this.screeningCode = screeningCode;
	}

	public String getScreeningDate() {
		return screeningDate;
	}

	public void setScreeningDate(String screeningDate) {
		this.screeningDate = screeningDate;
	}
    
    
    

}