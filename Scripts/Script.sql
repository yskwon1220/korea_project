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

create table reservation(
no           varchar2(99),
 lo_name        varchar2     (99),
type             varchar2(99),
 tr_name   varchar2(99),
  resdate  varchar2(99),
  restime       varchar2(99),
user_name     varchar2(99),
 user_pw           varchar2(99),
user_tel          varchar2(99),
content varchar2(99) );

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

INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('3', '1002', '곰', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '3.jpg');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('4', '1002', '말', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '4.jpg');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('5', '1002', '돼지', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '5.jpg');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('6', '1002', '소', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '1.jpg');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('7', '1002', '너구리', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '2.jpg');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('8', '1002', '오리', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '3.jpg');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC)
VALUES ('9', '1002', '닭', '1', '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', '4', '4.jpg');

DROP TABLE TRAINER;

CREATE TABLE TRAINER (
	tr_no number PRIMARY KEY,
	lo_no varchar2(30),
	tr_name varchar2(20),
	ismanage NUMBER,
	tr_info varchar2(300),
	stars NUMBER,
	tr_pic varchar2(60),
	regdate timestamp
);

INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (1, '1002', '곰', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg', '201213');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (2, '1002', '말', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg', '201211');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (3, '1002', '돼지', 1, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '5.jpg','201211');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (4, '1002', '소', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '1.jpg','201213');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (5, '1002', '너구리', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '2.jpg','201213');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (6, '1002', '오리', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '3.jpg','201213');
INSERT INTO TRAINER (TR_NO, LO_NO, TR_NAME, ISMANAGE, TR_INFO, STARS, TR_PIC, REGDATE)
VALUES (7, '1002', '닭', 0, '수상경력입니다ㅁㄴㅇㄴㅁㅇㅁㄴㅇ', 4, '4.jpg','201213');