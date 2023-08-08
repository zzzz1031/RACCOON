CREATE TABLE USER_TB
(
    USER_ID     VARCHAR2(30 BYTE),
    "PASSWORD"  VARCHAR2(200 BYTE),
    USER_NM     VARCHAR2(100 BYTE),
    CELNO       VARCHAR2(15 BYTE),
    ADDRESS1    VARCHAR2(200 BYTE),
    ADDRESS2    VARCHAR2(100 BYTE),
    USER_AUTH   CHAR(1 BYTE),
    INPT_DTTM   DATE,
    UPDT_DTTM   DATE
)

ALTER TABLE USER_TB ADD CONSTRAINT PK_USER_TB PRIMARY KEY(USER_ID);

ALTER TABLE USER_TB ADD NICKNAME VARCHAR2(30);

COMMENT ON TABLE USER_TB IS '유저 정보';
COMMENT ON COLUMN USER_TB.USER_ID IS 'ID';
COMMENT ON COLUMN USER_TB.PASSWORD IS '패스워드';
COMMENT ON COLUMN USER_TB.USER_NM IS '이름';
COMMENT ON COLUMN USER_TB.CELNO IS '연락처';
COMMENT ON COLUMN USER_TB.ADDRESS1 IS '주소';
COMMENT ON COLUMN USER_TB.ADDRESS2 IS '상세 주소';
COMMENT ON COLUMN USER_TB.USER_AUTH IS '사용자 구분';
COMMENT ON COLUMN USER_TB.INPT_DTTM IS '입력일';
COMMENT ON COLUMN USER_TB.NICKNAME IS '닉네임';

CREATE SEQUENCE VISIT_SEQ
MINVALUE 1
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE;

CREATE TABLE VISIT_TB(
	SEQ NUMBER PRIMARY KEY,
	SESSION_ID VARCHAR2(500),
	INPT_DTTM DATE,
	USER_IP VARCHAR2(30)
)
;

-----------------------------------------태양!!!




//