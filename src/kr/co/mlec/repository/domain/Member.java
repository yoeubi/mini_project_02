package kr.co.mlec.repository.domain;

public class Member {

	private String memberID;
	private String memberName;
	private String memberPass;
	private String memberPhoneNo;
	private String memberEmail;
	private String memberType;
	private String memberPhotoName;
	private String memberPhotoPath;
	
	public String getMemberPhotoName() {
		return memberPhotoName;
	}
	public void setMemberPhotoName(String memberPhotoName) {
		this.memberPhotoName = memberPhotoName;
	}
	public String getMemberPhotoPath() {
		return memberPhotoPath;
	}
	public void setMemberPhotoPath(String memberPhotoPath) {
		this.memberPhotoPath = memberPhotoPath;
	}
	
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPass() {
		return memberPass;
	}
	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}
	public String getMemberPhoneNo() {
		return memberPhoneNo;
	}
	public void setMemberPhoneNo(String memberPhoneNo) {
		this.memberPhoneNo = memberPhoneNo;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	
}
