-- id, pw, email,
-- 이름, 나이, 성별, 휴대폰번호, 주소
-- DROP TABLE CAMP_USER CASCADE CONSTRAINTS;


-- DROP TABLE CF_USER CASCADE CONSTRAINTS;
CREATE TABLE CF_USER
(
	userId VARCHAR2(300),
	userPw VARCHAR2(300),
	userEmail VARCHAR2(200),
	ADMINSTRATOR NUMBER(1) DEFAULT 0
  CONSTRAINT CF_USER_PK PRIMARY KEY (userId)
);

-- DEFAULT 0 이라면 일반 유저
ALTER TABLE CF_USER ADD ADMINSTRATOR NUMBER(1) DEFAULT 0;


INSERT INTO CF_USER
(USERID, USERPW, USEREMAIL)
VALUES('test1', 'test1', 'test1@gmail.com');

SELECT * FROM CF_USER;