package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Comment;

public interface CommentMapper {
	void insertComment(Comment comment);
	List<Comment> selectComment(int movieNo);
	void updateComment(Comment comment);
	void deleteComment(int commentNo);
}
