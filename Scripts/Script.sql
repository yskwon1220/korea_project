CREATE TABLE event(
event_NO varchar2(20) PRIMARY KEY,
user_no varchar2(20),
title varchar2(20),
main_img varchar2(30),
d_day DATE,
detail_img1 varchar2(30),
detail_img2 varchar2(30),
detail_img3 varchar2(30)
);

ALTER TABLE event MODIFY title varchar2(100);
ALTER TABLE event MODIFY main_img varchar2(50);
ALTER TABLE event MODIFY detail_img1 varchar2(50);
ALTER TABLE event MODIFY detail_img2 varchar2(50);
ALTER TABLE event MODIFY detail_img3 varchar2(50);

INSERT INTO event(event_no, user_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d1','u1','오픈이벤트 20% 할인', 'fit01.jpg','20/12/31','fit02.jpg','fit03.jpg','fit04.jpg');
INSERT INTO event(event_no, user_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d2','u2','PT 결제 30% 할인', 'fit05.jpg','20/12/31','fit06.jpg','fit07.jpg','fit08.jpg');
INSERT INTO event(event_no, user_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d3','u3','크리스마스 10% 할인 쿠폰', 'fit9.jpg','20/12/25','fit10.jpg','fit11.jpg','fit12.jpg');

SELECT * FROM event ORDER BY event_no desc;

SELECT title, detail_img1, detail_img2, detail_img3 FROM event Where event_no='d2';

CREATE TABLE VISITOR(VISITDATE DATE);

INSERT INTO VISITOR (VISITDATE) VALUES ('20201210');
INSERT INTO VISITOR (VISITDATE) VALUES ('20201211');
INSERT INTO VISITOR (VISITDATE) VALUES ('20201212');
INSERT INTO VISITOR (VISITDATE) VALUES ('20201213');
INSERT INTO VISITOR (VISITDATE) VALUES ('20201214');
INSERT INTO VISITOR (VISITDATE) VALUES ('20201215');

SELECT COUNT(*) FROM VISITOR WHERE VISITDATE = TO_DATE('20201211', 'YYYYMMDD');

CREATE TABLE review(
   review_no NUMBER,
   NO NUMBER,
   TR_NO varchar2(50),
   LO_NO varchar2(50),
   Review_file varchar2(999),
   Title varchar2(50),
   Regdate DATE,
   Cnt number,
   PW varchar2(50),
   content varchar2(999),
   star number
);

CREATE TABLE UserMember (
customer_no NUMBER PRIMARY KEY,
id VARCHAR2(50),
pw VARCHAR2(50),
name VARCHAR2(50),
birth DATE ,
email VARCHAR2(50),
tel VARCHAR2(50),
gender VARCHAR2(10),
admin VARCHAR2(50),
addr VARCHAR2(100),
reserve_cnt NUMBER,
regdate DATE
);

INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('1', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('2', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('3', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('4', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('5', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('6', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('7', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('8', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('9', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('10', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('11', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');
INSERT INTO RESERVATION (NO, LO_NAME, TYPE, TR_NAME, RESDATE, RESTIME, USER_NAME, USER_PW, USER_TEL, CONTENT)
VALUES ('12', '권용석', '타입', '박혜지', '123123', '12313123', 'ㅎㅇㅎㅇㅎㅇ', 'ㅁㄴㅇㅁㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㄴ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ');

create table location (
no            varchar2(99),
  lo_tel           varchar2(99),
  lo_addr       varchar2(99),
lo_name      varchar2(99),
tr_name  varchar2(99),
   tr_pic    varchar2(99),
 content  varchar2(99)
);
INSERT ALL
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (6, '1002', '원숭이', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (7, '1002', '하이에나', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (8, '1002', '호랑이', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (9, '1002', '사자', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (10, '1002', '여우', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (11, '1002', '늑대', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (12, '1002', '낙타', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (13, '1002', '전갈', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (14, '1002', '나비', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (15, '1002', '돌고래', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (16, '1002', '혹등고래', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (17, '1002', '상어', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (18, '1002', '구름이', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (19, '1002', '아주가끔은', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (20, '1002', '웃던', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (21, '1002', '너의 얼굴을', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (22, '1002', '괜찮다 믿은것', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (23, '1002', '모를리 있니', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (24, '1002', '너는 떠나가고', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (25, '1002', '아니 어쩜', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (26, '1002', '이미 떠나갔', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (27, '1002', '해질녘 노을이', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (28, '1002', '더 아름다운 것', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (29, '1002', '끝사랑이', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (30, '1002', '더 아름다워', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (31, '1002', '너의 마음은', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (32, '1002', '시계바늘', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES (33, '1002', '권진아', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg')
SELECT * FROM dual;

DROP TABLE TRAINER;

CREATE TABLE TRAINER (
	tr_no number PRIMARY KEY,
	lo_no varchar2(30),
	tr_name varchar2(20),
	ismanage NUMBER,
	content varchar2(300),
	star NUMBER,
	tr_pic varchar2(60),
	regdate timestamp
);

INSERT ALL
INTO TRAINER
VALUES (1, '1002', '곰', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg', '201213')
INTO TRAINER
VALUES (2, '1002', '말', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg', '201211')
INTO TRAINER
VALUES (3, '1002', '돼지', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '5.jpg','201211')
INTO TRAINER
VALUES (4, '1002', '소', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '1.jpg','201213')
INTO TRAINER
VALUES (5, '1002', '너구리', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '2.jpg','201213')
INTO TRAINER
VALUES (6, '1002', '오리', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg','201213')
INTO TRAINER
VALUES (7, '1002', 'ASDSD', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (8, '1002', 'SAGG', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (9, '1002', 'FGFD', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (10, '1002', 'WERER', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (11, '1002', 'ZXCZX', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (12, '1002', 'ASSA', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (13, '1002', 'RTREW', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (14, '1002', 'ASDS', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (15, '1002', 'GFG', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (16, '1002', 'YTU', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (17, '1002', 'FGF', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (18, '1002', 'DFS', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (19, '1002', 'CBC', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (20, '1002', 'DSFD', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (21, '1002', 'SDFDX', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
INTO TRAINER
VALUES (22, '1002', 'XCV', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213')
SELECT * FROM dual;

CREATE TABLE qna (
   qna_no number(5),
   NO number(20),
   kind varchar2(20),
   title varchar2(100),
   context varchar2(999),
   regdate timestamp,
   cnt number(5),
   file_0 varchar2(100)
);
DROP TABLE NOTICE;
CREATE TABLE notice (
   notice_no NUMBER(5),
   NO NUMBER(20),
   title varchar2(100),
   context varchar2(999),
   regdate timestamp,
   cnt number(5),
   file_0 varchar2(100)
);
CREATE TABLE fnqboard (
   board_no number(5),
   NO number(20),
   title varchar2(100),
   content varchar2(999),
   regdate timestamp,
   file_0 varchar2(100),
   rep varchar2(20),
   gid number(5),
   seq number(5),
   lev number(5)
);
      INSERT INTO FNQBOARD 
      (BOARD_NO, NO, TITLE, CONTENT, REGDATE, FILE_0, REP, GID, SEQ, LEV) 
      VALUES 
      (3, 1, '제목제목제목', '내용내용내용', sysdate,'','처리중',3,0,0 );
     
     DROP  TABLE USERMEMBER;
 CREATE TABLE "WEB"."USERMEMBER" 
   (   "ID" VARCHAR2(50), 
   "PW" VARCHAR2(50), 
   "NAME" VARCHAR2(50), 
   "EMAIL" VARCHAR2(50), 
   "TEL" VARCHAR2(50), 
   "GENDER" VARCHAR2(10), 
   "ADMIN" VARCHAR2(50), 
   "ADDR" VARCHAR2(100), 
   "RESERVE_CNT" NUMBER, 
   "REGDATE" DATE
   ) ;

  DROP TABLE qna;
 
  CREATE TABLE QNA(
 QNA_NO NUMBER,
 KIND VARCHAR2(100),
 TITLE VARCHAR2(500),
 CONTENT VARCHAR2(999),
 REGDATE TIMESTAMP,
 CNT NUMBER
 );
 
SELECT COUNT(*) FROM TRAINER WHERE LO_NO = '1001';

		UPDATE TRAINER SET STAR = (star + (SELECT SUM(starcnt) FROM REVIEW WHERE TR_NO = 17)) / 
     	(SELECT COUNT(*) FROM REVIEW WHERE TR_NO = 17) WHERE TR_NO = 17;
     	
     select * from reservation where user_id = 'minjoo'
		order by re_no DESC
     
