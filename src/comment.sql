CREATE TABLE tb_comment
(
    comment_seq        NUMBER(4)         NOT NULL, 
    comment_star       NUMBER(1)         NOT NULL, 
    member_id          VARCHAR2(20)      NOT NULL, 
    movie_seq          NUMBER(4)         NOT NULL, 
    content            VARCHAR2(1000)    NOT NULL, 
    comment_regdate    DATE              NOT NULL, 
    CONSTRAINT TB_COMMENT_PK PRIMARY KEY (comment_seq)
)
/

COMMENT ON COLUMN tb_comment.comment_seq IS '댓글 고유번호'
/

COMMENT ON COLUMN tb_comment.comment_star IS '별점'
/

COMMENT ON COLUMN tb_comment.member_id IS '회원아이디'
/

COMMENT ON COLUMN tb_comment.movie_seq IS '영화고유번호'
/

COMMENT ON COLUMN tb_comment.content IS '한줄평'
/

COMMENT ON COLUMN tb_comment.comment_regdate IS '댓글등록일'
/

ALTER TABLE tb_comment
    ADD CONSTRAINT FK_tb_comment_member_id_tb_mem FOREIGN KEY (member_id)
        REFERENCES tb_member (member_id)
/

ALTER TABLE tb_comment
    ADD CONSTRAINT FK_tb_comment_movie_seq_tb_mov FOREIGN KEY (movie_seq)
        REFERENCES tb_movieinfo (movie_seq)
/