CREATE TABLE tb_movieinfo
(
    movie_seq             NUMBER(4)         NOT NULL, 
    movie_title           VARCHAR2(50)      NOT NULL, 
    movie_title_eng       VARCHAR2(50)      NOT NULL, 
    movie_release_date    VARCHAR2(20)      NOT NULL, 
    movie_director        VARCHAR2(50)      NOT NULL, 
    movie_rating          VARCHAR2(50)      NOT NULL, 
    movie_runtime         VARCHAR2(20)      NOT NULL, 
    movie_nation          VARCHAR2(20)      NOT NULL, 
    movie_sales_share     VARCHAR2(10)      NOT NULL, 
    movie_plot            VARCHAR2(2000)    NULL, 
    movie_trailer         VARCHAR2(1000)    NULL, 
    CONSTRAINT TB_MOVIEINFO_PK PRIMARY KEY (movie_seq)
)
/

COMMENT ON COLUMN tb_movieinfo.movie_seq IS '영화고유번호'
/

COMMENT ON COLUMN tb_movieinfo.movie_title IS '영화이름'
/

COMMENT ON COLUMN tb_movieinfo.movie_title_eng IS '영문영화이름'
/

COMMENT ON COLUMN tb_movieinfo.movie_release_date IS '개봉일'
/

COMMENT ON COLUMN tb_movieinfo.movie_director IS '감독명'
/

COMMENT ON COLUMN tb_movieinfo.movie_rating IS '관람등급'
/

COMMENT ON COLUMN tb_movieinfo.movie_runtime IS '상영시간'
/

COMMENT ON COLUMN tb_movieinfo.movie_nation IS '제작국가'
/

COMMENT ON COLUMN tb_movieinfo.movie_sales_share IS '예매율'
/

COMMENT ON COLUMN tb_movieinfo.movie_plot IS '영화 줄거리'
/

COMMENT ON COLUMN tb_movieinfo.movie_trailer IS '영화트레일러주소'
/


CREATE TABLE tb_movie_genres
(
    movie_seq      NUMBER(4)       NOT NULL, 
    movie_genre    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT TB_MOVIE_GENRES_PK PRIMARY KEY (movie_seq, movie_genre)
)
/

COMMENT ON COLUMN tb_movie_genres.movie_seq IS '영화고유번호'
/

COMMENT ON COLUMN tb_movie_genres.movie_genre IS '영화장르'
/

ALTER TABLE tb_movie_genres
    ADD CONSTRAINT FK_tb_movie_genres_movie_seq_t FOREIGN KEY (movie_seq)
        REFERENCES tb_movieinfo (movie_seq)
/

CREATE TABLE tb_movie_actors
(
    movie_seq      NUMBER(4)       NOT NULL, 
    movie_actor    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT TB_MOVIE_ACTORS_PK PRIMARY KEY (movie_seq, movie_actor)
)
/

COMMENT ON COLUMN tb_movie_actors.movie_seq IS '영화고유번호'
/

COMMENT ON COLUMN tb_movie_actors.movie_actor IS '영화배우이름'
/

ALTER TABLE tb_movie_actors
    ADD CONSTRAINT FK_tb_movie_actors_movie_seq_t FOREIGN KEY (movie_seq)
        REFERENCES tb_movieinfo (movie_seq)
/

