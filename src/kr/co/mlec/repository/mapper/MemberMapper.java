package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Member;

public interface MemberMapper {
	Member login(Member member);
	void insertMember(Member member);
	void updateMemberInfo(Member member);
	void updateMemberPass(String id);
	void updateMemberProfile(String id);
	String searchId(Member member);
	String searchPass(Member member);
	int doubleCheckId(String id);
}
