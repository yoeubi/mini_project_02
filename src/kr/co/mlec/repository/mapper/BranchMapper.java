package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Branch;


public interface BranchMapper {
	List<Branch> selectBranch(String locationCode);
	String selectBranchName(String branchCode);
}
