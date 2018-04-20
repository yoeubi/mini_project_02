package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Member;

public interface MemberMapper {
	Member selectMemberById(String id);
	void insertMember(Member member);
	void updateMemberInfo(Member member);
	void updateMemberPass(String id);
	void updateMemberProfile(String id);
	void searchId(Member member);
	void searchPass(Member member);
	
}
