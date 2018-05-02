package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Member;

public interface MemberMapper {
	Member login(Member member);
	void insertMember(Member member);
	void updateMemberInfo(Member member);
	void updateMemberPass(Member member);
	void insertProfilePhoto(Member member);
	String searchId(Member member);
	String searchPass(Member member);
	int doubleCheckId(String id);
	String passCheck(String id);
}
