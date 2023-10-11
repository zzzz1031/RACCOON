
--코드

--CREATE TABLE CODE_TB(
--                        CODE VARCHAR2(100) PRIMARY KEY,
--                        CODE_NM VARCHAR2(1000),
--                        UP_CODE VARCHAR2(100)
--)
--;
--
--COMMENT ON TABLE CODE_TB IS '코드 테이블';
--COMMENT ON COLUMN CODE_TB.CODE IS '코드';
--COMMENT ON COLUMN CODE_TB.CODE_NM IS '코드명';
--COMMENT ON COLUMN CODE_TB.UP_CODE IS '상위코드';
--;
--

-- MariaDB
CREATE TABLE CODE_TB(
   `CODE` VARCHAR(100) PRIMARY KEY,
   CODE_NM VARCHAR(1000),
   UP_CODE VARCHAR(100)
)
;
ALTER TABLE CODE_TB COMMENT = '코드 테이블';
ALTER TABLE code_tb MODIFY `CODE` VARCHAR(100) COMMENT '코드';
ALTER TABLE CODE_tB MODIFY CODE_NM VARCHAR(1000) COMMENT '코드명';
ALTER TABLE CODE_TB MODIFY UP_CODE VARCHAR(100) COMMENT '상위코드';