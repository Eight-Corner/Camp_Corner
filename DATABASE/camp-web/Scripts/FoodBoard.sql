-- 
CREATE SEQUENCE SEQ_FOOD_BOARD;

DROP TABLE TBL_FOOD_BOARD ;
CREATE TABLE TBL_FOOD_BOARD(
	BNO NUMBER(10),
	TITLE VARCHAR2(200) NOT NULL,
	CONTENT VARCHAR2(2000) NOT NULL,
	WRITER VARCHAR2(200) NOT NULL,
	REGDATE DATE DEFAULT SYSDATE,
	UPDATEDATE DATE DEFAULT SYSDATE,
	LIKECNT NUMBER DEFAULT 0,
	REPLYCNT NUMBER DEFAULT 0,
	READCNT NUMBER DEFAULT 0
);

ALTER TABLE TBL_FOOD_BOARD ADD CONSTRAINT PK_FOOD_BOARD PRIMARY KEY(BNO);
ALTER TABLE TBL_FOOD_BOARD ADD CONSTRAINT FK_FOOD_BOARD FOREIGN KEY(WRITER) REFERENCES CF_USER(userId) ON DELETE CASCADE;

ALTER TABLE TBL_FOOD_BOARD ADD (READCNT NUMBER DEFAULT 0);

UPDATE TBL_FOOD_BOARD SET REPLYCNT = (SELECT COUNT(RNO) FROM TBL_FOOD_REPLY 
WHERE TBL_FOOD_REPLY.BNO = TBL_FOOD_BOARD.BNO);


INSERT INTO TBL_FOOD_BOARD
(BNO, TITLE, CONTENT, WRITER, REGDATE)
VALUES(SEQ_FOOD_BOARD.NEXTVAL, '가즈아~', '으디를 가~! !!!', 'test1', SYSDATE
);

SELECT * FROM TBL_FOOD_BOARD ORDER BY BNO desc;


INSERT INTO TBL_FOOD_BOARD (BNO, TITLE, CONTENT, WRITER)
(SELECT SEQ_FOOD_BOARD.NEXTVAL, TITLE, CONTENT, WRITER FROM TBL_FOOD_BOARD);



---------------------------
-- 댓글 테이블 추가
CREATE SEQUENCE SEQ_FOOD_REPLY;
CREATE TABLE TBL_FOOD_REPLY(
	RNO NUMBER(10),
	BNO NUMBER(10) NOT NULL,
	REPLY VARCHAR2(1000) NOT NULL, -- 댓글 
	REPLYER VARCHAR2(100) NOT NULL, -- 작성자
	REPLYDATE DATE DEFAULT SYSDATE, -- 작성날짜 
	UPDATEDATE DATE DEFAULT SYSDATE -- 수정날짜
);

ALTER TABLE TBL_FOOD_REPLY ADD CONSTRAINT PK_FOOD_REPLY PRIMARY KEY(RNO);
-- ALTER TABLE TBL_REPLY DROP CONSTRAINT FK_REPLY;

ALTER TABLE TBL_FOOD_REPLY ADD CONSTRAINT FK_FOOD_REPLY FOREIGN KEY(BNO)
REFERENCES TBL_FOOD_BOARD(BNO) ON DELETE CASCADE;

ALTER TABLE TBL_FOOD_REPLY ADD CONSTRAINT FK_FOOD_WRITER_REPLY FOREIGN KEY(REPLYER) REFERENCES CF_USER(userId) ON DELETE CASCADE;
-------------------------------------------

SELECT * FROM TBL_FOOD_REPLY;

INSERT INTO TBL_FOOD_REPLY (RNO, BNO, REPLY, REPLYER) VALUES (SEQ_FOOD_REPLY.NEXTVAL, 1, '별로인데용?!', 'test1');


---------------------------------------
-- 파일 첨부 테이블 

CREATE TABLE TBL_FOOD_ATTACH (
	UUID VARCHAR2(200) NOT NULL,
	UPLOADPATH VARCHAR2(200) NOT NULL,
	FILENAME VARCHAR2(200) NOT NULL,
--	FILETYPE CHAR(1) DEFAULT 'I',
	FILETYPE CHAR(1) CHECK(FILETYPE IN(0, 1)), -- 파일타입이 이미지인지 구분하기 위해 지정한다. 0 또는 1이 참이어야지 들어가는 조건식
	BNO NUMBER(10,0)
);

ALTER TABLE TBL_FOOD_ATTACH ADD CONSTRAINT PK_FOOD_ATTACH PRIMARY KEY (UUID);
ALTER TABLE TBL_FOOD_ATTACH ADD CONSTRAINT FK_FOOD_BOARD_ATTACH FOREIGN KEY(BNO) REFERENCES TBL_FOOD_BOARD(BNO) ON DELETE CASCADE;


SELECT * FROM TBL_FOOD_ATTACH;

SELECT * FROM TBL_FOOD_BOARD ;

SELECT * FROM TBL_FOOD_ATTACH WHERE UPLOADPATH LIKE TO_CHAR((SYSDATE-1), 'YYYY/MM') || '%';