package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Comment;

public interface CommentMapper {
	void insertComment(Comment comment);
	Comment selectComment(int movieNo);
	void updateComment(Comment comment);
	void deleteComment(int commentNo);
}
