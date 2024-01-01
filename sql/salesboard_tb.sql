CREATE SEQUENCE SALESBOARD_TB_SEQ
    MINVALUE 1
    INCREMENT BY 1
    START WITH 1
    NOCACHE
NOORDER
NOCYCLE;

-- 게시글
CREATE TABLE SALESBOARD_TB(
  ID NUMBER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  TITLE VARCHAR2(300),
  CONTENT CLOB,
  SALE_CATEGORY VARCHAR2(30),
  CELNO VARCHAR2(15),
  INPT_DTTM DATE,
  INPT_USER VARCHAR2(30),
  UPDT_DTTM DATE,
  UPDT_USER VARCHAR2(30),

  CONSTRAINT SALESBOARD_TB_FK_USERID FOREIGN KEY(INPT_USER) REFERENCES USER_TB(USER_ID)
)
;

COMMENT ON TABLE SALESBOARD_TB IS '판매게시판';
COMMENT ON COLUMN SALESBOARD_TB.ID IS 'PK';
COMMENT ON COLUMN SALESBOARD_TB.TITLE IS '제목';
COMMENT ON COLUMN SALESBOARD_TB.CONTENT IS '내용';
COMMENT ON COLUMN SALESBOARD_TB.SALE_CATEGORY IS '구매/판매여부';
COMMENT ON COLUMN SALESBOARD_TB.CELNO IS '게시글 등록 연락처';
COMMENT ON COLUMN SALESBOARD_TB.INPT_DTTM IS '등록일시';
COMMENT ON COLUMN SALESBOARD_TB.INPT_USER IS '등록아이디';
COMMENT ON COLUMN SALESBOARD_TB.UPDT_DTTM IS '수정일시';
COMMENT ON COLUMN SALESBOARD_TB.UPDT_USER IS '수정아이디';


