DROP TABLE USERMEMBER ;

CREATE TABLE USERMEMBER
   (	USER_NO NUMBER, 
	USER_ID VARCHAR2(50), 
	USER_PW VARCHAR2(50), 
	USER_NAME VARCHAR2(50), 
	USER_BIRTH VARCHAR2(7), 
	USER_EMAIL VARCHAR2(50), 
	USER_TEL VARCHAR2(50), 
	lo_no varchar2(50),
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
values  (1, 'minjoo', '1111','박민주','9507142','minjoo0714@nave.com','010-9080-1929', '1001', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (2, 'hyeji', '1111','박혜지','9507142','minjoo0714@nave.com','010-9080-1929', '1002', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (3, 'yongseok', '1111','궈뇽석','9507142','minjoo0714@nave.com','010-9080-1929', '1003', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (4, 'seongmin', '1111','길성민','9507142','minjoo0714@nave.com','010-9080-1929', '1001', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (5, 'hyeonhee', '1111','이현희','9507142','minjoo0714@nave.com','010-9080-1929', '1002', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (6, 'jooho', '1111','이주호','9507142','minjoo0714@nave.com','010-9080-1929', '1003', 'F', 'admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (7, 'kkachi', '1111','까치','9507142','minjoo0714@nave.com','010-9080-1929', '1001', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (8, 'goose', '1111','구스','9507142','minjoo0714@nave.com','010-9080-1929', '1001', 'F', 'admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (9, 'tiger', '1111','타이거','9507142','minjoo0714@nave.com','010-9080-1929', '1003', 'F','admin',0, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (10, 'lion', '1111','라이언','9507142','minjoo0714@nave.com','010-9080-1929', '1001', 'F', 'admin',0, SYSDATE, 'coupon', 2000)
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
	reserv_cnt NUMBER,
	regdate timestamp
);

INSERT ALL
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate, reserv_cnt) 
values(1, 'G1001', '[ 피트니스 이용권 30회 ]', 80000, '191225', 30)
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate, reserv_cnt) 
values(2, 'G1002', '[ 피트니스 이용권 60회 ]', 140000, '191225', 60)
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate, reserv_cnt) 
values(3, 'G1003', '[ 피트니스 이용권 90회 ]', 200000, '191225', 90)
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate, reserv_cnt) 
values(4, 'G1004', '[ 피트니스 이용권 120회 ]', 250000, '191225', 120)
INTO goods(goods_cnt, goods_no, goods_name, goods_price, regdate, reserv_cnt) 
values(5, 'G1005', '[ 피트니스 이용권 240회 ]', 490000, '191225', 240)
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

Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','05',to_date('20/12/15','RR/MM/DD'),30);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','21',to_date('20/12/26','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','17',to_date('20/12/15','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','11',to_date('20/12/15','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','05',to_date('20/12/01','RR/MM/DD'),2);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','07',to_date('20/12/01','RR/MM/DD'),13);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','05',to_date('20/12/17','RR/MM/DD'),2);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','07',to_date('20/12/17','RR/MM/DD'),12);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','09',to_date('20/12/17','RR/MM/DD'),3);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','07',to_date('20/12/15','RR/MM/DD'),23);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','09',to_date('20/12/15','RR/MM/DD'),13);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','11',to_date('20/12/15','RR/MM/DD'),11);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','15',to_date('20/12/15','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','17',to_date('20/12/15','RR/MM/DD'),17);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','19',to_date('20/12/15','RR/MM/DD'),7);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','21',to_date('20/12/15','RR/MM/DD'),8);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','05',to_date('20/12/15','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','07',to_date('20/12/15','RR/MM/DD'),25);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','09',to_date('20/12/15','RR/MM/DD'),9);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','11',to_date('20/12/17','RR/MM/DD'),6);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','15',to_date('20/12/15','RR/MM/DD'),10);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','17',to_date('20/12/15','RR/MM/DD'),15);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','19',to_date('20/12/15','RR/MM/DD'),16);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','21',to_date('20/12/15','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','05',to_date('20/12/15','RR/MM/DD'),9);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','07',to_date('20/12/15','RR/MM/DD'),10);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','09',to_date('20/12/15','RR/MM/DD'),8);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','11',to_date('20/12/15','RR/MM/DD'),12);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','15',to_date('20/12/15','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','15',to_date('20/12/17','RR/MM/DD'),7);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','19',to_date('20/12/15','RR/MM/DD'),13);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','21',to_date('20/12/15','RR/MM/DD'),11);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','05',to_date('20/12/16','RR/MM/DD'),3);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','07',to_date('20/12/16','RR/MM/DD'),17);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','09',to_date('20/12/16','RR/MM/DD'),7);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','17',to_date('20/12/17','RR/MM/DD'),5);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','15',to_date('20/12/16','RR/MM/DD'),15);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','17',to_date('20/12/16','RR/MM/DD'),25);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','19',to_date('20/12/16','RR/MM/DD'),10);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','21',to_date('20/12/16','RR/MM/DD'),19);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','05',to_date('20/12/16','RR/MM/DD'),15);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','07',to_date('20/12/16','RR/MM/DD'),15);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','09',to_date('20/12/16','RR/MM/DD'),16);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','11',to_date('20/12/16','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','15',to_date('20/12/16','RR/MM/DD'),9);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','17',to_date('20/12/16','RR/MM/DD'),10);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','19',to_date('20/12/16','RR/MM/DD'),8);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','21',to_date('20/12/16','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','05',to_date('20/12/16','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','07',to_date('20/12/16','RR/MM/DD'),23);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','09',to_date('20/12/16','RR/MM/DD'),13);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','11',to_date('20/12/16','RR/MM/DD'),11);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','15',to_date('20/12/16','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','17',to_date('20/12/16','RR/MM/DD'),17);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','19',to_date('20/12/16','RR/MM/DD'),7);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','21',to_date('20/12/16','RR/MM/DD'),9);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','09',to_date('20/12/01','RR/MM/DD'),13);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','11',to_date('20/12/01','RR/MM/DD'),2);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','15',to_date('20/12/01','RR/MM/DD'),12);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','17',to_date('20/12/01','RR/MM/DD'),3);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','05',to_date('20/11/01','RR/MM/DD'),10);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','07',to_date('20/11/01','RR/MM/DD'),8);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','09',to_date('20/11/01','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','11',to_date('20/11/01','RR/MM/DD'),14);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','15',to_date('20/11/01','RR/MM/DD'),23);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','17',to_date('20/11/01','RR/MM/DD'),13);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','19',to_date('20/11/01','RR/MM/DD'),11);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','05',to_date('20/12/19','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('1','21',to_date('20/12/31','RR/MM/DD'),2);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','21',to_date('20/12/19','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','05',to_date('20/12/26','RR/MM/DD'),2);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('3','21',to_date('20/12/25','RR/MM/DD'),1);
Insert into WEB.RESTIME (LO_NO,RESTIME,RESDATE,NOWCNT) values ('2','21',to_date('20/12/18','RR/MM/DD'),1);

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

INSERT ALL
INTO REVIEW 
values(1, 'yongseok', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(2, 'minjoo', '1', '1001', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(3, 'hyeonhee', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(4, 'minjoo', '1', '1001', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(5, 'seongmin', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(6, 'hyeonhee', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(7, 'hyeji', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(8, 'hyeonhee', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(9, 'jooho', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(10, 'seongmin', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(11, 'jooho', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(12, 'hyeji', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(13, 'yongseok', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(14, 'jooho', '1', '1001', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(15, 'seongmin', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(16, 'minjoo', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(17, 'hyeonhee', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(18, 'hyeji', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(19, 'seongmin', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(20, 'jooho', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(21, 'minjoo', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
VALUES(22, 'yongseok', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(23, 'yongseok', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(24, 'minjoo', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(25, 'hyeonhee', '1', '1001', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(26, 'jooho', '1', '1001', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(27, 'hyeji', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(28, 'hyeonhee', '1', '1003', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(29, 'seongmin', '1', '1002', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
INTO REVIEW 
values(30, 'minjoo', '1', '1001', '01.jpg', '리뷰입니다 리뷰입니다', sysdate, 0, '가나다라나가나다라나 가나라나다', 5)
SELECT * FROM dual;

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
	payment_no number,
	user_NO NUMBER,
	lo_no varchar2(30),
	goods_no varchar2(30),
	discount NUMBER,
	use_point NUMBER,
	payment_method varchar2(30),
	total_payment number,
	payment_date DATE
);
 
INSERT ALL
INTO payment
values(1, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200111')
INTO payment
values(2, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200111')
INTO payment
values(3, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200111')
INTO payment
values(4, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200111')
INTO payment
values(5, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200111')
INTO payment
values(6, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200111')
INTO payment
values(7, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200111')
INTO payment
values(8, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200111')
INTO payment
values(9, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200111')
INTO payment
values(10, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200111')
INTO payment
values(11, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200111')
INTO payment
values(12, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200111')
INTO payment
values(13, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200111')
INTO payment
values(14, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200111')
INTO payment
values(15, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200111')
INTO payment
values(16, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200111')
INTO payment
values(17, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200111')
INTO payment
values(18, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200111')
INTO payment
values(19, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200111')
INTO payment
values(20, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200111')
INTO payment
values(21, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200211')
INTO payment
values(22, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(23, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
values(24, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(25, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(26, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200211')
INTO payment
values(27, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(28, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
values(29, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(30, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(31, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200211')
INTO payment
values(32, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(33, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
values(34, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(35, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(36, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200211')
INTO payment
values(37, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(38, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
VALUES(39, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(40, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(41, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200311')
INTO payment
values(42, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(43, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(44, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(45, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(46, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200311')
INTO payment
values(47, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(48, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(49, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(50, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(51, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200311')
INTO payment
values(52, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(53, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(54, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(55, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(56, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200311')
INTO payment
values(57, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(58, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(59, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(60, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(61, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200411')
INTO payment
values(62, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(63, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(64, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(65, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(66, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200411')
INTO payment
values(67, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(68, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(69, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(70, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(71, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200411')
INTO payment
values(72, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(73, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(74, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(75, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(76, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200411')
INTO payment
values(77, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(78, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(79, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(80, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(81, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200511')
INTO payment
values(82, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(83, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(84, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(85, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200511')
INTO payment
values(86, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200511')
INTO payment
values(87, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(88, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(89, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(90, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200511')
INTO payment
values(91, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200511')
INTO payment
values(92, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(93, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(94, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(95, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200511')
INTO payment
values(96, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200511')
INTO payment
values(97, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(98, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(99, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(100, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200511')
INTO payment
values(101, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(102, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(103, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(104, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(105, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200611')
INTO payment
values(106, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(107, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(108, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(109, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(110, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200611')
INTO payment
values(111, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(112, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(113, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(114, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(115, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200611')
INTO payment
values(116, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(117, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(118, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(119, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(120, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200611')
INTO payment
values(121, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(122, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(123, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(124, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(125, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200711')
INTO payment
values(126, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(127, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(128, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(129, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(130, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200711')
INTO payment
values(131, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(132, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(133, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(134, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(135, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200711')
INTO payment
values(136, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(137, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(138, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(139, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(140, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200811')
INTO payment
values(141, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(142, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(143, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(144, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(145, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200811')
INTO payment
values(146, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(147, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(148, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(149, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(150, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200811')
INTO payment
values(151, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(152, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(153, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(154, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(155, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200811')
INTO payment
values(156, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(157, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(158, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(159, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(160, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200911')
INTO payment
values(161, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(162, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(163, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(164, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(165, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200911')
INTO payment
values(166, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(167, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(168, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(169, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(170, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200911')
INTO payment
values(171, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(172, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(173, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(174, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(175, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200911')
INTO payment
values(176, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(177, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(178, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(179, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(180, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200911')
INTO payment
values(181, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(182, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(183, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(184, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(185, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20201011')
INTO payment
values(186, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(187, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(188, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(189, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(190, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20201011')
INTO payment
values(191, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(192, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(193, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(194, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(195, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20201011')
INTO payment
values(196, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(197, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(198, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(199, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(200, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20201011')
INTO payment
values(201, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(202, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(203, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(204, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(205, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20201111')
INTO payment
values(206, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(207, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(208, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(209, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(210, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20201111')
INTO payment
values(211, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(212, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(213, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(214, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(215, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20201111')
INTO payment
values(216, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(217, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(218, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(219, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(220, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20201111')
INTO payment
values(221, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201211')
INTO payment
values(222, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201211')
INTO payment
values(223, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201211')
INTO payment
values(224, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201211')
INTO payment
values(225, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20201211')
INTO payment
values(226, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20201211')
INTO payment
values(227, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20201211')
INTO payment
values(228, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20201211')
INTO payment
values(229, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20201211')
INTO payment
values(230, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20201211')
INTO payment
values(231, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20201211')
INTO payment
values(232, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20201211')
INTO payment
values(233, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20201211')
INTO payment
values(234, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20201211')
INTO payment
values(235, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20201211')
INTO payment
values(236, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201211')
INTO payment
values(237, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201211')
INTO payment
values(238, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201211')
INTO payment
values(239, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201211')
INTO payment
values(240, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20201211')
SELECT * FROM dual;

DROP TABLE event;

CREATE TABLE event(
event_NO varchar2(20) PRIMARY KEY,
title varchar2(100),
main_img varchar2(50),
d_day DATE,
detail_img1 varchar2(50),
detail_img2 varchar2(50),
detail_img3 varchar2(50),
e_price number(20),
discount NUMBER(20)
);

INSERT ALL
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3,e_price,discount) 
values('d1','오픈이벤트 20% 할인', 'fit01.jpg','20/12/31','fit02.jpg','fit03.jpg','fit04.jpg',150000,30000)
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3,e_price,discount) 
values('d2','다 함께 힘내요 코로나시대 2만원 할인', 'fit05.jpg','20/12/31','fit06.jpg','fit07.jpg','fit08.jpg',150000,20000)
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3,e_price,discount) 
values('d3','크리스마스 당일 5만원 할인', 'fit09.jpg','20/12/25','fit10.jpg','fit11.jpg','fit12.jpg',150000,50000)
SELECT * FROM dual;

DROP TABLE ONE_PAY_LIST ;

CREATE TABLE One_Pay_list(
user_no NUMBER(30) CONSTRAINT one_pay_fk REFERENCES UserMember(user_no),
card_number NUMBER(30) NOT null,
validity number(4) NOT null,
cvc number(5) NOT null,
card_pass number(4) NOT null,
card_company varchar2(50) NOT null,
payment_pass number(30) NOT null,
owner varchar2(10) NOT null,
regist_date timestamp NOT NULL
);

INSERT INTO One_Pay_list (user_no,card_number,validity,cvc,card_pass,card_company,payment_pass, owner,regist_date) 
values(1,1234567812345678,527,337,45,'신한',123456,'이주호',sysdate);

DROP TABLE COUPON_JOIN ;

CREATE TABLE coupon_join(
	coupon_no varchar2(50) PRIMARY KEY,
	user_no NUMBER(30) CONSTRAINT coupon_join_fk REFERENCES UserMember(user_no),
	coupon_content varchar2(100),
	coupon_discount number(5),
	coupon_contri number(15)
	);

	INSERT INTO coupon_join(coupon_no, user_no, coupon_content,coupon_discount,coupon_contri) 
	VALUES ('abcdef1234',1,'회원가입 20% 할인 쿠폰',20,30);
	INSERT INTO coupon_join(coupon_no, user_no, coupon_content,coupon_discount,coupon_contri) 
	VALUES ('openkk12345',1,'오픈기념 10% 할인 쿠폰',10,30);

DROP TABLE TEMPORARY_PAYMENT_CARD ;

CREATE TABLE Temporary_Payment_Card(
user_no NUMBER(30) CONSTRAINT tpc_user_fk REFERENCES UserMember(user_no),
card_number NUMBER(30) NOT null,
validity number(4) NOT null,
cvc number(5) NOT null,
card_pass number(4) NOT null,
card_company varchar2(50) NOT null,
owner varchar2(10) NOT null
);

INSERT INTO TEMPORARY_Payment_Card(user_no,card_number,validity,cvc,card_pass,card_company,owner) values(1,1234567812345678,527,337,45,'신한','이주호');

DROP TABLE PAYMENT_LIST ;

CREATE TABLE payment_list(
payment_no varchar2(20) NOT null PRIMARY KEY,
user_no NUMBER(30) NOT null CONSTRAINT paylist_fk REFERENCES UserMember(user_no),
p_no varchar2(60) default ' ',
p_title varchar2(60) DEFAULT ' ',
origin_price varchar2(60)default ' ',
discount_price varchar2(60) default ' ',
coupon_no varchar2(50) default ' ',
point_price varchar2(60) default ' ',
pay_way varchar2(50) default ' ',
payment_date DATE,
save_point NUMBER default 0
);

insert into payment_list 
      (payment_no,USER_NO)   
      values 
      (1,6);
      
SELECT payment_no from payment_list; 
		
		DELETE FROM PAYMENT_LIST WHERE PAYMENT_NO = '2';
		UPDATE PAYMENT_LIST set payment_no = payment_no - 1 where payment_no > '2';
		SELECT * FROM PAYMENT WHERE PAYMENT_NO = '4';
		
	SELECT * FROM payment_list where payment_no = '2';