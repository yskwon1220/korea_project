DROP TABLE USERMEMBER ;

CREATE TABLE USERMEMBER
   (	USER_NO NUMBER, 
	USER_ID VARCHAR2(50), 
	USER_PW VARCHAR2(50), 
	USER_NAME VARCHAR2(50), 
	USER_BIRTH VARCHAR2(7), 
	USER_EMAIL VARCHAR2(50), 
	USER_TEL VARCHAR2(50), 
	GENDER VARCHAR2(10), 
	ADMIN VARCHAR2(50),  
	RESERVE_CNT NUMBER, 
	REGDATE DATE, 
	COUPON VARCHAR2(50), 
	POINT NUMBER(20,0), 
	 PRIMARY KEY ("USER_NO") ENABLE
   ) ;

INSERT all
 INTO USERMEMBER
values  (1, 'minjoo', '1111','박민주','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (2, 'hyeji', '1111','박혜지','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (3, 'yongseok', '1111','궈뇽석','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (4, 'seongmin', '1111','길성민','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (5, 'hyeonhee', '1111','이현희','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (6, 'jooho', '1111','이주호','9507142','minjoo0714@nave.com','010-9080-1929', 'F', 'admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (7, 'kkachi', '1111','까치','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (8, 'goose', '1111','구스','9507142','minjoo0714@nave.com','010-9080-1929', 'F', 'admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (9, 'tiger', '1111','타이거','9507142','minjoo0714@nave.com','010-9080-1929', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (10, 'lion', '1111','라이언','9507142','minjoo0714@nave.com','010-9080-1929', 'F', 'admin',0, SYSDATE, 'coupon', 2000)
SELECT * FROM dual;

DROP TABLE LOCATION ;

create table location (
lo_no  varchar2(50),
lo_tel  varchar2(50),
lo_addr  varchar2(50),
lo_name  varchar2(50),
lo_pic  varchar2(50),
lo_cnt number,
maximum number,
income number,
outcome number,
regdate timestamp,
content varchar(999)
);

INSERT ALL
INTO LOCATION 
values('1001', '02-3375-3375', '서울시 강남구', '피트니스 클럽 강남점', '01.jpg', 1, 30, 0, 0, '20200911', 'adsadsadsad')
INTO LOCATION 
values('1002', '02-3375-3375', '서울시 강북구', '피트니스 클럽 강북점', '02.jpg', 2, 30, 0, 0, '20201111', 'adsadsadsad')
INTO LOCATION 
values('1003', '02-3375-3375', '서울시 강서구', '피트니스 클럽 강서점', '03.jpg', 3, 30, 0, 0, '20201211', 'adsadsadsad')
SELECT * FROM dual;

DROP TABLE goods;

CREATE TABLE goods(
	goods_cnt NUMBER,
	goods_no varchar2(30) PRIMARY KEY,
	goods_name varchar2(50),
	goods_price NUMBER,
	regdate timestamp
);

INSERT ALL
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate) 
values(1, 'G1001', '[ 피트니스 회원권 1개월 ]', 80000, '191225')
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate) 
values(2, 'G1002', '[ 피트니스 회원권 3개월 ]', 00, '191225')
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate) 
values(3, 'G1003', '[ 피트니스 회원권 6개월 ]', 400000, '191225')
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate) 
values(4, 'G1004', '[ 피트니스 회원권 12개월 ]', 700000, '191225')
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate) 
values(5, 'G1005', '[ 피트니스 회원권 24개월 ]', 1000000, '191225')
SELECT * FROM dual;

DROP TABLE RESERVATION ;

create table reservation (
re_no number,
lo_no varchar2(50),
lo_name varchar2(50),
type varchar2(50),
tr_name varchar2(50),
resdate date,
restime varchar2(50),
user_id varchar2(50),
user_name varchar2(50),
user_pw varchar2(50),
user_tel varchar2(50),
content varchar2(999)
);

INSERT ALL
INTO RESERVATION 
values(1, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201217', '5', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(2, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '1', 'minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(3, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201211', '12', 'minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(4, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201212', '6',  'yongseok','권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(5, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201213', '7',  'hyeji', '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(6, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201214', '8',  'hyeji','박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(7, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201215', '10',  'minjoo','박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(8, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201216', '11',  'hyeonhee', '이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(9, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201212', '12',  'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(10, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '5',  'hyeonhee','이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(11, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(12, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeji', '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(13, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'seongmin', '길성민', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(14, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(15, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'seongmin', '길성민', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(16, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(17, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeji', '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(18, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(19, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(20, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'seongmin', '길성민', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(21, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'jooho', '이주호', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(22, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'seongmin', '길성민', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(23, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(24, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(25, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(26, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeonhee', '이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(27, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','hyeji',  '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(28, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','jooho', '이주호', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(29, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(30, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'minjoo','박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(31, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeji', '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(32, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeonhee', '이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(33, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeonhee', '이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(34, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(35, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(36, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','jooho', '이주호', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(37, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(38, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','hyeji', '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(39, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','hyeonhee', '이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(40, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(41, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(42, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','seongmin', '길성민', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(43, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','hyeonhee', '이현희', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(44, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','minjoo', '박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(45, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','jooho', '이주호', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(46, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'yongseok','권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(47, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'hyeji','박혜지', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(48, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'jooho','이주호', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(49, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'jooho','이주호', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(50, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'minjoo','박민주', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(51, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', 'seongmin','길성민', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(52, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','yongseok', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(53, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3','hyeji', '박혜지', '1234', '010-9890-1036', 'adsadsadsad')
SELECT * FROM dual;

DROP TABLE RESTIME;

CREATE TABLE restime(
	lo_no varchar2(99),
	restime varchar2(99),
	resdate DATE,
	nowcnt NUMBER
);

DROP TABLE REVIEW ;

 CREATE TABLE review(
	
	review_no NUMBER PRIMARY KEY ,
	user_id varchar2(50),
	TR_NO varchar2(50),
	LO_NO varchar2(50),
	Review_file_name varchar2(999),
	Title varchar2(50),
	Regdate DATE,
	Cnt number,
	content varchar2(4000),
	starCnt number(20)
);

DROP TABLE NOTICE ;

CREATE TABLE NOTICE(
 NOTICE_NO number,
 TITLE VARCHAR2(500),
 CONTENT VARCHAR2(999),
 REGDATE TIMESTAMP,
 CNT NUMBER
 );

  INSERT ALL
 INTO notice
  VALUES (1, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0);
  INTO NOTICE 
  VALUES (2, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO NOTICE 
  VALUES (3, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (4, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (5, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
   INTO NOTICE 
  VALUES (6, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (7, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (9, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (10, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (11, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (12, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (13, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (14, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (15, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
   INTO NOTICE 
  VALUES (16, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (17, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
   INTO NOTICE 
  VALUES (18, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (19, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (20, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (21, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (22, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
    INTO NOTICE 
  VALUES (23, '제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  SELECT * FROM dual;
  
 DROP TABLE qna;
 
 CREATE TABLE QNA(
 QNA_NO NUMBER,
 KIND VARCHAR2(100),
 TITLE VARCHAR2(500),
 CONTENT VARCHAR2(999),
 REGDATE TIMESTAMP,
 CNT NUMBER
 );

  INSERT ALL
  INTO qna 
  VALUES(1, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(2, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(3, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(4, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(5, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(6, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(7, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(8, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(9, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(10, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(11, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna 
  VALUES(12, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  INTO qna
  VALUES(13, '로그인','제목제목제목제목', '내용내용내용내용내용', SYSDATE, 0)
  SELECT * FROM dual;
  
 DROP TABLE FNQBOARD ;
 
   CREATE TABLE FNQBOARD(
 BOARD_NO NUMBER,
 USER_ID VARCHAR2(100),
 TITLE VARCHAR2(500),
 CONTENT VARCHAR2(999),
 REGDATE TIMESTAMP,
 REP VARCHAR2(100),
 REPLY VARCHAR2(999)
 );
 
 INSERT all
 INTO FNQBOARD
  VALUES (1, '','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (2, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (3, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (4, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (5, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (6, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (7, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (8, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (9, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (10, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (11, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (12, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (13, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (14, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (15, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (16, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
 INTO FNQBOARD
  VALUES (17, 'aaa','제목제목제목제목', '내용내용내용내용내용', SYSDATE, '처리중', '')
  SELECT * FROM dual;
  
 DROP TABLE PAYMENT;

CREATE TABLE payment(
	payment_no varchar2(30),
	user_NO NUMBER,
	lo_no varchar2(30),
	goods_no varchar2(30),
	page_no varchar2(30),
	price NUMBER NOT NULL,
	discount NUMBER,
	use_point NUMBER,
	payment_method varchar2(30),
	total_payment number,
	payment_state varchar2(30),
	payment_date DATE
);
 
INSERT ALL
INTO payment
values('1001', 1, '1001', 'G1001', 'page_no', 80000, 20000, 1000, '카드', 59000, '결제 완료', '20200111')
INTO payment
values('1002', 2, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200112')
INTO payment
values('1003', 3, '1003', 'G1003', 'page_no', 50000, 0, 1000, '카드', 50000, '결제 완료', '20200113')
INTO payment
values('1004', 4, '1001', 'G1004', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20200114')
INTO payment
values('1005', 5, '1002', 'G1005', 'page_no', 70000, 0, 1000, '카드', 70000, '결제 완료', '20200111')
INTO payment
values('1006', 6, '1003', 'G1006', 'page_no', 1550000, 0, 1000, '카드', 1550000, '결제 완료', '20200112')
INTO payment
values('1007', 7, '1001', 'G1001', 'page_no', 850000, 0, 1000, '카드', 850000, '결제 완료', '20200113')
INTO payment
values('1008', 8, '1002', 'G1002', 'page_no', 260000, 0, 1000, '카드', 260000, '결제 완료', '20200114')
INTO payment
values('1009', 9, '1003', 'G1003', 'page_no',470000, 0, 1000, '카드', 470000, '결제 완료', '20200111')
INTO payment
values('1010', 10, '1001', 'G1004', 'page_no', 450000, 0, 1000, '카드', 450000, '결제 완료', '20200112')
INTO payment
values('1011', 1, '1002', 'G1005', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200113')
INTO payment
values('1012', 2, '1003', 'G1006', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200114')
INTO payment
values('1013', 3, '1001', 'G1001', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20201211')
INTO payment
values('1014', 4, '1002', 'G1002', 'page_no', 340000, 0, 1000, '카드', 340000, '결제 완료', '20200212')
INTO payment
values('1015', 5, '1003', 'G1002', 'page_no', 240000, 0, 1000, '카드', 240000, '결제 완료', '20200213')
INTO payment
values('1016', 6, '1001', 'G1003', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20200214')
INTO payment
values('1017', 7, '1002', 'G1003', 'page_no', 800000, 0, 1000, '카드', 800000, '결제 완료', '20200211')
INTO payment
values('1018', 8, '1003', 'G1003', 'page_no', 340000, 0, 1000, '카드', 340000, '결제 완료', '20200212')
INTO payment
values('1019', 9, '1001', 'G1003', 'page_no', 340000, 0, 1000, '카드', 340000, '결제 완료', '20200213')
INTO payment
values('1020', 10, '1002', 'G1004', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20200214')
INTO payment
values('1021', 1, '1003', 'G1002', 'page_no', 30000, 0, 1000, '카드', 30000, '결제 완료', '20200211')
INTO payment
values('1022', 2, '1001', 'G1002', 'page_no', 10000, 0, 1000, '카드', 10000, '결제 완료', '20200212')
INTO payment
values('1023', 3, '1002', 'G1002', 'page_no', 460000, 0, 1000, '카드', 460000, '결제 완료', '20200213')
INTO payment
values('1024', 4, '1003', 'G1002', 'page_no', 770000, 0, 1000, '카드', 770000, '결제 완료', '20200214')
INTO payment
values('1025', 5, '1001', 'G1005', 'page_no', 990000, 0, 1000, '카드', 990000, '결제 완료', '20200211')
INTO payment
values('1026', 6, '1002', 'G1005', 'page_no', 670000, 0, 1000, '카드', 670000, '결제 완료', '20200312')
INTO payment
values('1027', 7, '1003', 'G1005', 'page_no', 856000, 0, 1000, '카드', 856000, '결제 완료', '20200313')
INTO payment
values('1028', 8, '1001', 'G1005', 'page_no', 87000, 0, 1000, '카드', 87000, '결제 완료', '20200314')
INTO payment
values('1029', 9, '1002', 'G1002', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20200311')
INTO payment
values('1030', 10, '1003', 'G1004', 'page_no', 210000, 0, 1000, '카드', 210000, '결제 완료', '20200312')
INTO payment
values('1031', 1, '1001', 'G1005', 'page_no', 245000, 0, 1000, '카드', 245000, '결제 완료', '20200313')
INTO payment
values('1032', 2, '1002', 'G1004', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20200314')
INTO payment
values('1033', 3, '1003', 'G1003', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20200311')
INTO payment
values('1034', 4, '1001', 'G1005', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20200312')
INTO payment
values('1035', 5, '1002', 'G1006', 'page_no', 742000, 0, 1000, '카드', 742000, '결제 완료', '20200313')
INTO payment
values('1036', 6, '1003', 'G1002', 'page_no', 564000, 0, 1000, '카드', 564000, '결제 완료', '20200314')
INTO payment
values('1037', 7, '1001', 'G1003', 'page_no', 450000, 0, 1000, '카드', 450000, '결제 완료', '20200311')
INTO payment
values('1038', 8, '1002', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20200312')
INTO payment
values('1039', 9, '1003', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20200313')
INTO payment
values('1040',10, '1001', 'G1002', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20200314')
INTO payment
values('1041', 1, '1002', 'G1002', 'page_no', 150000, 0, 1000, '카드', 150000, '결제 완료', '20200311')
INTO payment
values('1042', 2, '1003', 'G1003', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20200312')
INTO payment
values('1043', 3, '1001', 'G1005', 'page_no', 440000, 0, 1000, '카드', 440000, '결제 완료', '20200313')
INTO payment
values('1044', 4, '1002', 'G1003', 'page_no', 440000, 0, 1000, '카드', 440000, '결제 완료', '20200314')
INTO payment
values('1045', 5, '1003', 'G1002', 'page_no', 440000, 0, 1000, '카드', 440000, '결제 완료', '20200311')
INTO payment
values('1046', 6, '1001', 'G1001', 'page_no', 770000, 0, 1000, '카드', 770000, '결제 완료', '20200412')
INTO payment
values('1047', 2, '1002', 'G1004', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20200414')
INTO payment
values('1048', 3, '1003', 'G1003', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20200411')
INTO payment
values('1049', 4, '1001', 'G1005', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20200412')
INTO payment
values('1050', 5, '1002', 'G1006', 'page_no', 742000, 0, 1000, '카드', 742000, '결제 완료', '20200413')
INTO payment
values('1051', 6, '1003', 'G1002', 'page_no', 564000, 0, 1000, '카드', 564000, '결제 완료', '20200414')
INTO payment
values('1052', 7, '1001', 'G1003', 'page_no', 450000, 0, 1000, '카드', 450000, '결제 완료', '20200411')
INTO payment
values('1053', 8, '1002', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20200412')
INTO payment
values('1054', 9, '1003', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20200413')
INTO payment
values('1055',1, '1001', 'G1001', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20200414')
INTO payment
values('1056',2, '1002', 'G1002', 'page_no', 140000, 0, 1000, '카드', 140000, '결제 완료', '20200414')
INTO payment
values('1057',3, '1003', 'G1003', 'page_no', 530000, 0, 1000, '카드', 530000, '결제 완료', '20200414')
INTO payment
values('1058',4, '1001', 'G1004', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20200414')
INTO payment
values('1059',5, '1002', 'G1005', 'page_no', 460000, 0, 1000, '카드', 460000, '결제 완료', '20200414')
INTO payment
values('1060',6, '1003', 'G1006', 'page_no', 10000, 0, 1000, '카드', 10000, '결제 완료', '20200414')
INTO payment
values('1061',7, '1001', 'G1001', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20200414')
INTO payment
values('1062',8, '1002', 'G1002', 'page_no', 80000, 0, 1000, '카드', 80000, '결제 완료', '20200414')
INTO payment
values('1063',9, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200414')
INTO payment
values('1064',10, '1001', 'G1004', 'page_no', 100000, 0, 1000, '카드', 100000, '결제 완료', '20200414')
INTO payment
values('1065',1, '1002', 'G1005', 'page_no', 120000, 0, 1000, '카드', 120000, '결제 완료', '20200514')
INTO payment
values('1066',2, '1003', 'G1006', 'page_no', 30000, 0, 1000, '카드', 30000, '결제 완료', '20200514')
INTO payment
values('1067',3, '1001', 'G1001', 'page_no', 130000, 0, 1000, '카드', 130000, '결제 완료', '20200514')
INTO payment
values('1068',4, '1002', 'G1002', 'page_no', 250000, 0, 1000, '카드', 250000, '결제 완료', '20200514')
INTO payment
values('1069',5, '1003', 'G1003', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200514')
INTO payment
values('1070',6, '1001', 'G1004', 'page_no', 280000, 0, 1000, '카드', 280000, '결제 완료', '20200514')
INTO payment
values('1071',7, '1002', 'G1005', 'page_no', 390000, 0, 1000, '카드', 390000, '결제 완료', '20200514')
INTO payment
values('1072',8, '1003', 'G1006', 'page_no', 120000, 0, 1000, '카드', 120000, '결제 완료', '20200514')
INTO payment
values('1073',9, '1001', 'G1001', 'page_no', 10000, 0, 1000, '카드', 10000, '결제 완료', '20200514')
INTO payment
values('1074',10, '1002', 'G1002', 'page_no', 30000, 0, 1000, '카드', 30000, '결제 완료', '20200514')
INTO payment
values('1075',1, '1003', 'G1003', 'page_no', 50000, 0, 1000, '카드', 50000, '결제 완료', '20200514')
INTO payment
values('1076',2, '1001', 'G1004', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20200514')
INTO payment
values('1077',3, '1002', 'G1005', 'page_no', 330000, 0, 1000, '카드', 330000, '결제 완료', '20200514')
INTO payment
values('1078',4, '1003', 'G1006', 'page_no', 730000, 0, 1000, '카드', 730000, '결제 완료', '20200514')
INTO payment
values('1079',5, '1001', 'G1001', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200514')
INTO payment
values('1080',6, '1002', 'G1002', 'page_no', 460000, 0, 1000, '카드', 460000, '결제 완료', '20200514')
INTO payment
values('1081',7, '1003', 'G1003', 'page_no', 420000, 0, 1000, '카드', 420000, '결제 완료', '20200514')
INTO payment
values('1082',8, '1001', 'G1004', 'page_no', 150000, 0, 1000, '카드', 150000, '결제 완료', '20200514')
INTO payment
values('1083',9, '1002', 'G1005', 'page_no', 70000, 0, 1000, '카드', 70000, '결제 완료', '20200514')
INTO payment
values('1084',10, '1003', 'G1006', 'page_no', 370000, 0, 1000, '카드', 370000, '결제 완료', '20200514')
INTO payment
values('1085',1, '1001', 'G1001', 'page_no', 50000, 0, 1000, '카드', 50000, '결제 완료', '20200514')
INTO payment
values('1086',2, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200514')
INTO payment
values('1087',3, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200514')
INTO payment
values('1088',4, '1001', 'G1004', 'page_no', 10000, 0, 1000, '카드', 10000, '결제 완료', '20200614')
INTO payment
values('1089',5, '1002', 'G1005', 'page_no', 460000, 0, 1000, '카드', 460000, '결제 완료', '20200614')
INTO payment
values('1090',6, '1003', 'G1006', 'page_no', 150000, 0, 1000, '카드', 150000, '결제 완료', '20200614')
INTO payment
values('1091',7, '1001', 'G1001', 'page_no', 360000, 0, 1000, '카드', 360000, '결제 완료', '20200614')
INTO payment
values('1092',8, '1002', 'G1002', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200614')
INTO payment
values('1093',9, '1003', 'G1003', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20200614')
INTO payment
values('1094',10, '1001', 'G1004', 'page_no', 80000, 0, 1000, '카드', 80000, '결제 완료', '20200614')
INTO payment
values('1095',1, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200614')
INTO payment
values('1096',2, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200614')
INTO payment
values('1097',3, '1001', 'G1001', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20200614')
INTO payment
values('1098',4, '1002', 'G1002', 'page_no', 20000, 0, 1000, '카드', 20000, '결제 완료', '20200614')
INTO payment
values('1099',5, '1003', 'G1003', 'page_no', 10000, 0, 1000, '카드',10000, '결제 완료', '20200614')
INTO payment
values('1100',6, '1001', 'G1004', 'page_no', 150000, 0, 1000, '카드', 150000, '결제 완료', '20200614')
INTO payment
values('1101',7, '1002', 'G1005', 'page_no', 130000, 0, 1000, '카드', 130000, '결제 완료', '20200614')
INTO payment
values('1102',8, '1003', 'G1006', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200614')
INTO payment
values('1103',9, '1001', 'G1001', 'page_no', 330000, 0, 1000, '카드', 330000, '결제 완료', '20200614')
INTO payment
values('1104',10, '1002', 'G1002', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20200614')
INTO payment
values('1105',1, '1003', 'G1003', 'page_no', 530000, 0, 1000, '카드', 530000, '결제 완료', '20200614')
INTO payment
values('1106',2, '1001', 'G1004', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20200714')
INTO payment
values('1107',3, '1002', 'G1005', 'page_no', 730000, 0, 1000, '카드', 730000, '결제 완료', '20200714')
INTO payment
values('1108',4, '1003', 'G1006', 'page_no', 830000, 0, 1000, '카드', 830000, '결제 완료', '20200714')
INTO payment
values('1109',5, '1001', 'G1001', 'page_no', 930000, 0, 1000, '카드', 930000, '결제 완료', '20200714')
INTO payment
values('1110',6, '1002', 'G1002', 'page_no', 130000, 0, 1000, '카드', 130000, '결제 완료', '20200714')
INTO payment
values('1111',7, '1003', 'G1003', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200714')
INTO payment
values('1112',8, '1001', 'G1004', 'page_no', 330000, 0, 1000, '카드', 330000, '결제 완료', '20200714')
INTO payment
values('1113',9, '1002', 'G1005', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20200714')
INTO payment
values('1114',10, '1003', 'G1006', 'page_no', 420000, 0, 1000, '카드', 420000, '결제 완료', '20200714')
INTO payment
values('1115',1, '1001', 'G1001', 'page_no', 410000, 0, 1000, '카드', 410000, '결제 완료', '20200714')
INTO payment
values('1116',2, '1002', 'G1002', 'page_no', 420000, 0, 1000, '카드', 420000, '결제 완료', '20200714')
INTO payment
values('1117',3, '1003', 'G1003', 'page_no', 470000, 0, 1000, '카드', 470000, '결제 완료', '20200714')
INTO payment
values('1118',4, '1001', 'G1004', 'page_no', 490000, 0, 1000, '카드', 490000, '결제 완료', '20200814')
INTO payment
values('1119',5, '1002', 'G1005', 'page_no', 460000, 0, 1000, '카드', 460000, '결제 완료', '20200814')
INTO payment
values('1120',6, '1003', 'G1006', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20200814')
INTO payment
values('1121',7, '1001', 'G1001', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20200814')
INTO payment
values('1122',8, '1002', 'G1002', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20200814')
INTO payment
values('1123',9, '1003', 'G1003', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20200814')
INTO payment
values('1124',10, '1001', 'G1004', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20200814')
INTO payment
values('1125',1, '1002', 'G1005', 'page_no', 930000, 0, 1000, '카드', 930000, '결제 완료', '20200814')
INTO payment
values('1126',2, '1003', 'G1006', 'page_no', 530000, 0, 1000, '카드', 530000, '결제 완료', '20200814')
INTO payment
values('1127',3, '1001', 'G1001', 'page_no', 130000, 0, 1000, '카드', 130000, '결제 완료', '20200814')
INTO payment
values('1128',4, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1129',5, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1130',6, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1131',7, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1132',8, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1133',9, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1134',10, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1135',1, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1136',2, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1137',3, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1138',4, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1139',5, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1140',6, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1141',7, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1142',8, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1143',9, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
SELECT * FROM dual;

INSERT ALL
INTO payment
values('1144',10, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1145',1, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1146',2, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1147',3, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1148',4, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1149',5, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1150',6, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1151',7, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1152',8, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1153',9, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
SELECT * FROM dual;

INSERT ALL
INTO payment
values('1154',10, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1155',1, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1156',2, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1157',3, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1158',4, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1159',5, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1160',6, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1161',7, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1162',8, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1163',9, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1164',10, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1165',1, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1166',2, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1167',3, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1168',4, '1003', 'G1006', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20200914')
INTO payment
values('1169',5, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1170',6, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1171',7, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1172',8, '1001', 'G1004', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1173',9, '1002', 'G1005', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1174',10, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1175',1, '1001', 'G1001', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1176',2, '1002', 'G1002', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1177',3, '1003', 'G1003', 'page_no', 43000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1178',4, '1001', 'G1004', 'page_no', 40000, 0, 1000, '카드', 43000, '결제 완료', '20201014')
INTO payment
values('1179',5, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1180',6, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1181',7, '1001', 'G1001', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1182',8, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1183',9, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1184',10, '1001', 'G1004', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1185',1, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1186',2, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1187',3, '1001', 'G1001', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1188',4, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201014')
INTO payment
values('1189',5, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1190',6, '1001', 'G1004', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1191',7, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1192',8, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1193',9, '1001', 'G1001', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1194',10, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1195',1, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1196',2, '1001', 'G1004', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1197',3, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1198',4, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1199',5, '1001', 'G1001', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1200',6, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1201',7, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201114')
INTO payment
values('1202',8, '1001', 'G1004', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1203',9, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1204',10, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1205',1, '1001', 'G1001', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1206',2, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1207',3, '1003', 'G1003', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1208',4, '1001', 'G1004', 'page_no', 30000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1209',5, '1002', 'G1005', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
INTO payment
values('1210',6, '1003', 'G1006', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201214')
SELECT * FROM dual;

