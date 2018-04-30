package kr.co.mlec.repository.domain;

import java.util.Date;

public class Comment {
	//  댓글 고유번호
    private int commentSeq;
    //  별점
    private String commentStar;
    //  한줄평
    private String content;
    //  댓글등록일
    private Date commentRegdate;
    //  회원아이디
    private String memberId;
    //  영화고유번호
    private int movieSeq;

	public int getCommentSeq() {
		return commentSeq;
	}

	public void setCommentSeq(int commentSeq) {
		this.commentSeq = commentSeq;
	}

	public String getCommentStar() {
		return commentStar;
	}

	public void setCommentStar(String commentStar) {
		this.commentStar = commentStar;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCommentRegdate() {
		return commentRegdate;
	}

	public void setCommentRegdate(Date commentRegdate) {
		this.commentRegdate = commentRegdate;
	}
	
}
