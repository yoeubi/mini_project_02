CREATE TABLE tb_stilcut
(
    movie_seq                 NUMBER(4)        NOT NULL, 
    stilcut_no                NUMBER(4)        NOT NULL, 
    stilcut_path              VARCHAR2(100)    NOT NULL, 
    stilcut_thumb_path        VARCHAR2(100)    NOT NULL, 
    stilcut_sys_name          VARCHAR2(100)    NOT NULL, 
    stilcut_thumb_sys_name    VARCHAR2(100)    NOT NULL, 
    CONSTRAINT TB_STILCUT_PK PRIMARY KEY (stilcut_no)
)
/

COMMENT ON COLUMN tb_stilcut.movie_seq IS '영화고유번호'
/

COMMENT ON COLUMN tb_stilcut.stilcut_no IS '스틸컷번호'
/

COMMENT ON COLUMN tb_stilcut.stilcut_path IS '스틸컷경로'
/

COMMENT ON COLUMN tb_stilcut.stilcut_thumb_path IS '스틸컷썸네일경로'
/

COMMENT ON COLUMN tb_stilcut.stilcut_sys_name IS '스틸컷저장이름'
/

COMMENT ON COLUMN tb_stilcut.stilcut_thumb_sys_name IS '스틸컷썸네일저장이름'
/

ALTER TABLE tb_stilcut
    ADD CONSTRAINT FK_tb_stilcut_movie_seq_tb_mov FOREIGN KEY (movie_seq)
        REFERENCES tb_movieinfo (movie_seq)
/