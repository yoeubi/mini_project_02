CREATE TABLE tb_movie_poster
(
    movie_seq          NUMBER(4)       NOT NULL, 
    poster_no          NUMBER(4)       NOT NULL, 
    poster_path        VARCHAR2(50)    NOT NULL, 
    poster_sys_name    VARCHAR2(50)    NOT NULL, 
    poster_ori_name    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT TB_MOVIE_POSTER_PK PRIMARY KEY (poster_no)
)
/

COMMENT ON COLUMN tb_movie_poster.movie_seq IS '영화고유번호'
/

COMMENT ON COLUMN tb_movie_poster.poster_no IS '포스터번호'
/

COMMENT ON COLUMN tb_movie_poster.poster_path IS '포스터경로'
/

COMMENT ON COLUMN tb_movie_poster.poster_sys_name IS '포스터저장이름'
/

COMMENT ON COLUMN tb_movie_poster.poster_ori_name IS '포스터이름'
/

ALTER TABLE tb_movie_poster
    ADD CONSTRAINT FK_tb_movie_poster_movie_seq_t FOREIGN KEY (movie_seq)
        REFERENCES tb_movieinfo (movie_seq)
/