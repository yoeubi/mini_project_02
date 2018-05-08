CREATE TABLE tb_member
(
    member_id            VARCHAR2(20)     NOT NULL, 
    member_name          VARCHAR2(20)     NOT NULL, 
    member_pass          VARCHAR2(20)     NOT NULL, 
    member_phone_no      VARCHAR2(13)     NOT NULL, 
    member_email         VARCHAR2(25)     NOT NULL, 
    member_photo_name    VARCHAR2(10)     NULL, 
    member_photo_path    VARCHAR2(50)    default '/minipro2/images/icon/default_profile.jpg' NULL, 
    member_type          CHAR(1)          default 'U', 
    CONSTRAINT TB_MEMBER_PK PRIMARY KEY (member_id)
);