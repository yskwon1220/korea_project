CREATE TABLE event(
event_NO varchar2(20) PRIMARY KEY,
user_no number CONSTRAINT fk_user2 REFERENCES UserMember(customer_no),
title varchar2(20),
main_img varchar2(30),
d_day DATE,
detail_img1 varchar2(30),
detail_img2 varchar2(30),
detail_img3 varchar2(30)
);

DROP TABLE EVENT ;

ALTER TABLE event MODIFY title varchar2(100);
ALTER TABLE event MODIFY main_img varchar2(50);
ALTER TABLE event MODIFY detail_img1 varchar2(50);
ALTER TABLE event MODIFY detail_img2 varchar2(50);
ALTER TABLE event MODIFY detail_img3 varchar2(50);
ALTER TABLE event MODIFY user_no number(20);
ALTER TABLE event ADD e_price number(20);
ALTER TABLE event ADD discount NUMBER(20);

ALTER TABLE EVENT
modify CONSTRAINT user_fk FOREIGN KEY (user_no)
REFERENCES UserMember(customer_no);

DROP TABLE USERMEMBER ;

CREATE TABLE USERMEMBER
   (   USER_NO NUMBER, 
   ID VARCHAR2(50), 
   PW VARCHAR2(50), 
   NAME VARCHAR2(50), 
   BIRTH NVARCHAR2(7), 
   EMAIL VARCHAR2(50), 
   TEL VARCHAR2(50), 
   GENDER VARCHAR2(10), 
   ADMIN VARCHAR2(50), 
   ADDR VARCHAR2(100), 
   RESERVE_CNT NUMBER, 
   REGDATE DATE, 
   COUPON VARCHAR2(50), 
   POINT NUMBER(20,0), 
    PRIMARY KEY (USER_NO) ENABLE
   );
  
 INSERT ALL
INTO USERMEMBER
values(1,'asd1', 'asd1','까치','1999823','asd@ads','010-9890-1036','남','ㄴㄴ','서울시', 5, '20201212','쿠폰',1000)
INTO USERMEMBER
values(2,'asd2', 'asd1','제비','1994813','asd@ads','010-9250-1036','여','ㄴㄴ','서울시', 5, '20201211','쿠폰',1000)
INTO USERMEMBER
values(3,'asd3', 'asd1','참새','1952823','asd@ads','010-9360-1036','남','ㄴㄴ','서울시', 5, '20201211','쿠폰',1000)
INTO USERMEMBER
values(4,'asd4', 'asd1','까마귀','1939823','asd@ads','010-9640-1036','여','ㄴㄴ','서울시', 5, '20201213','쿠폰',1000)
INTO USERMEMBER
values(5,'asd5', 'asㅇ1','종달새','1991823','asd@ads','010-9430-1036','남','ㄴㄴ','서울시', 5, '20201214','쿠폰',1000)
INTO USERMEMBER
values(6,'asd6', 'asd1','매','1996823','asd@ads','010-9290-1036','여','ㄴㄴ','서울시', 5, '20201217','쿠폰',1000)
INTO USERMEMBER
values(7,'asd7', 'asd1','독수리','1998823','asd@ads','010-9252-1036','남','ㄴㄴ','서울시', 5, '20201211','쿠폰',1000)
INTO USERMEMBER
values(8,'asd8', 'asd1','딱다구리','1995823','asd@ads','010-9434-1036','남','ㄴㄴ','서울시', 5, '20201219','쿠폰',1000)
INTO USERMEMBER
values(9,'asd9', 'asd1','학','1995823','asd@ads','010-9560-1036','남','ㄴㄴ','서울시', 5, '20201220','쿠폰',1000)
INTO USERMEMBER
values(10,'asd10', 'asd1','기러기','1992823','asd@ads','010-9867-1036','남','ㄴㄴ','서울시', 5, '20201220','쿠폰',1000)
SELECT * FROM dual;

INSERT INTO UserMember (customer_no,id,pw,name,birth,email,tel, gender,addr,point) 
values(1,'a1','1111','이주호','19940528','tjrnw1003@gmail.com','01047775555','M','천호동',100);

INSERT ALL
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d1','오픈이벤트 20% 할인', 'fit01.jpg','20/12/31','fit02.jpg','fit03.jpg','fit04.jpg')
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d2','PT 결제 30% 할인', 'fit05.jpg','20/12/31','fit06.jpg','fit07.jpg','fit08.jpg')
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d3','크리스마스 10% 할인 쿠폰', 'fit9.jpg','20/12/25','fit10.jpg','fit11.jpg','fit12.jpg')
SELECT * FROM dual;

UPDATE UserMember SET coupon='event,join' WHERE id='a1' ;
UPDATE UserMember SET point=100 WHERE id='a1' ;

DROP TABLE ONE_PAY_LIST ;

CREATE TABLE One_Pay_list(
user_no NUMBER(30) CONSTRAINT fk_user REFERENCES UserMember(customer_no),
card_number NUMBER(30) NOT null,
validity DATE NOT null,
cvc number(5) NOT null,
card_pass number(4) NOT null,
card_company varchar2(50) NOT null,
payment_pass number(30) NOT null,
owner varchar2(10) NOT null,
regist_date timestamp NOT NULL
);

ALTER TABLE One_Pay_list MODIFY validity number(4);

INSERT INTO One_Pay_list (user_no,card_number,validity,cvc,card_pass,card_company,payment_pass, owner,regist_date) 
values(1,1234567812345678,527,337,45,'신한',123456,'이주호','2019-09-09 13:00:00');

DROP TABLE COUPON_JOIN ;

CREATE TABLE coupon_join(
   coupon_no varchar2(50) PRIMARY KEY,
   user_no NUMBER(30) CONSTRAINT user_fk REFERENCES UserMember(customer_no),
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
user_no NUMBER(30) CONSTRAINT tpc_user_fk REFERENCES UserMember(customer_no),
card_number NUMBER(38) NOT null,
validity number(4) NOT null,
cvc number(5) NOT null,
card_pass number(4) NOT null,
card_company varchar2(50) NOT null,
payment_pass number(30) NOT null,
owner varchar2(10) NOT null
);

DROP TABLE Temporary_Payment_Card;
ALTER TABLE temporary_payment_card DROP column payment_pass;

INSERT INTO TEMPORARY_Payment_Card 
values(1,1234567812345678,527,337,45,'신한',123456,'이주호');
   
select * from 
	(SELECT * FROM 
		( SELECT rownum rnum, TRAINER.* FROM TRAINER)
			pagetable where rnum <= 10) 
where rnum >= 6;

DROP TABLE LOCATION ;

CREATE TABLE LOCATION(
	lo_cnt NUMBER,
	lo_no varchar2(30) PRIMARY KEY,
	lo_name varchar2(30),
	lo_pic varchar2(30),
	lo_tel varchar2(30),
	lo_addr varchar2(30),
	maximum NUMBER,
	income NUMBER,
	outcome NUMBER,
	regdate timestamp,
	content varchar2(300)
);

INSERT ALL
INTO LOCATION 
values(1, '1001','피트니스 클럽 강남점', '01.jpg', '02-3375-3375','서울시 강남구', 30, 0, 0, '20201211', 'adsadsadsad')
INTO LOCATION 
values(2, '1002','피트니스 클럽 강북점', '02.jpg', '02-2209-2244','서울시 강북구', 30, 0, 0, '20200911', 'adsadsadsad')
INTO LOCATION 
values(3, '1003','피트니스 클럽 강서점', '03.jpg', '02-1278-4433','서울시 강서구', 30, 0, 0, '20201111', 'adsadsadsad')
SELECT * FROM dual;

CREATE TABLE goods(
	goods_cnt NUMBER,
	goods_no varchar2(30) PRIMARY KEY,
	goods_name varchar2(50),
	goods_price NUMBER,
	regdate timestamp
);

DROP TABLE goods;

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

SELECT * FROM RESERVATION;

select * from 
	(SELECT * FROM 
		( SELECT rownum rnum, reservation.* FROM RESERVATION)
			pagetable where rnum <= 10) 
where rnum >= 1 AND LO_NO = '1002';

DROP TABLE RESERVATION ;

CREATE TABLE RESERVATION (
	re_no NUMBER,
	lo_no varchar2(60),
	lo_name varchar2(60),
	type varchar2(60),
	tr_name varchar2(20),
	resdate DATE,
	restime varchar2(20),
	user_name varchar2(20),
	user_pw varchar2(20),
	user_tel varchar2(20),
	content varchar2(300)
);

INSERT ALL
INTO RESERVATION 
values(1, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201217', '5', '권용석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(2, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '1', '권ㅇ석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(3, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201211', '12', '권ㄱ석', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(4, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201212', '6', '권용2', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(5, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201213', '7', '권용ㅁ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(6, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201214', '8', '권용ㅛ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(7, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201215', '10', '권용ㅗ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(8, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201216', '11', '권용ㅓ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(9, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201212', '12', '권용ㅎ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(10, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '5', '권용ㅑ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(11, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(12, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(13, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(14, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(15, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(16, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(17, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(18, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(19, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(20, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(21, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(22, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(23, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(24, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(25, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(26, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(27, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(28, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(29, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(30, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(31, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(32, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(33, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(34, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(35, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(36, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(37, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(38, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(39, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(40, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(41, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(42, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(43, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(44, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(45, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(46, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(47, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(48, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(49, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(50, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(51, '1001','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(52, '1002','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
INTO RESERVATION 
values(53, '1003','피트니스 클럽 강남점', 'type', '강사이름','20201207', '3', '권용ㄱ', '1234', '010-9890-1036', 'adsadsadsad')
SELECT * FROM dual;

CREATE TABLE restime(
	lo_no varchar2(99),
	restime varchar2(99),
	resdate DATE,
	nowcnt NUMBER DEFAULT NULL
);

			select * from 
				(SELECT * FROM 
					(SELECT rownum rnum, payment.* FROM payment)
						pagetable where rnum <= 11 ORDER BY PAYMENT_DATE DESC) 
			where rnum >= 1;
		
        select * from (select rownum rnum, t1.* 
         from (select * from PAYMENT
         order by payment_date desc) t1) 
         where rnum >= 6 and rnum <= 10;
        
SELECT * FROM LOCATION;
SELECT * FROM RESERVATION;
SELECT count(*) FROM RESERVATION WHERE lo_no = '1002';

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

DROP TABLE payment;

INSERT ALL
INTO payment
values('1001', 1, '1001', 'G1001', 'page_no', 80000, 20000, 1000, '카드', 59000, '결제 완료', '20201211')
INTO payment
values('1002', 2, '1002', 'G1002', 'page_no', 40000, 0, 1000, '카드', 40000, '결제 완료', '20201212')
INTO payment
values('1003', 3, '1003', 'G1003', 'page_no', 50000, 0, 1000, '카드', 50000, '결제 완료', '20201213')
INTO payment
values('1004', 4, '1001', 'G1004', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20201214')
INTO payment
values('1005', 5, '1002', 'G1005', 'page_no', 70000, 0, 1000, '카드', 70000, '결제 완료', '20201211')
INTO payment
values('1006', 6, '1003', 'G1006', 'page_no', 1550000, 0, 1000, '카드', 1550000, '결제 완료', '20201212')
INTO payment
values('1007', 7, '1001', 'G1001', 'page_no', 850000, 0, 1000, '카드', 850000, '결제 완료', '20201213')
INTO payment
values('1008', 8, '1002', 'G1002', 'page_no', 260000, 0, 1000, '카드', 260000, '결제 완료', '20201214')
INTO payment
values('1009', 9, '1003', 'G1003', 'page_no',470000, 0, 1000, '카드', 470000, '결제 완료', '20201211')
INTO payment
values('1010', 10, '1001', 'G1004', 'page_no', 450000, 0, 1000, '카드', 450000, '결제 완료', '20201212')
INTO payment
values('1011', 1, '1002', 'G1005', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20201213')
INTO payment
values('1012', 2, '1003', 'G1006', 'page_no', 230000, 0, 1000, '카드', 230000, '결제 완료', '20201214')
INTO payment
values('1013', 3, '1001', 'G1001', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20201211')
INTO payment
values('1014', 4, '1002', 'G1002', 'page_no', 340000, 0, 1000, '카드', 340000, '결제 완료', '20201212')
INTO payment
values('1015', 5, '1003', 'G1002', 'page_no', 240000, 0, 1000, '카드', 240000, '결제 완료', '20201213')
INTO payment
values('1016', 6, '1001', 'G1003', 'page_no', 630000, 0, 1000, '카드', 630000, '결제 완료', '20201214')
INTO payment
values('1017', 7, '1002', 'G1003', 'page_no', 800000, 0, 1000, '카드', 800000, '결제 완료', '20201211')
INTO payment
values('1018', 8, '1003', 'G1003', 'page_no', 340000, 0, 1000, '카드', 340000, '결제 완료', '20201212')
INTO payment
values('1019', 9, '1001', 'G1003', 'page_no', 340000, 0, 1000, '카드', 340000, '결제 완료', '20201213')
INTO payment
values('1020', 10, '1002', 'G1004', 'page_no', 60000, 0, 1000, '카드', 60000, '결제 완료', '20201214')
INTO payment
values('1021', 1, '1003', 'G1002', 'page_no', 30000, 0, 1000, '카드', 30000, '결제 완료', '20201211')
INTO payment
values('1022', 2, '1001', 'G1002', 'page_no', 10000, 0, 1000, '카드', 10000, '결제 완료', '20201212')
INTO payment
values('1023', 3, '1002', 'G1002', 'page_no', 460000, 0, 1000, '카드', 460000, '결제 완료', '20201213')
INTO payment
values('1024', 4, '1003', 'G1002', 'page_no', 770000, 0, 1000, '카드', 770000, '결제 완료', '20201214')
INTO payment
values('1025', 5, '1001', 'G1005', 'page_no', 990000, 0, 1000, '카드', 990000, '결제 완료', '20201211')
INTO payment
values('1026', 6, '1002', 'G1005', 'page_no', 670000, 0, 1000, '카드', 670000, '결제 완료', '20201212')
INTO payment
values('1027', 7, '1003', 'G1005', 'page_no', 856000, 0, 1000, '카드', 856000, '결제 완료', '20201213')
INTO payment
values('1028', 8, '1001', 'G1005', 'page_no', 87000, 0, 1000, '카드', 87000, '결제 완료', '20201214')
INTO payment
values('1029', 9, '1002', 'G1002', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20201211')
INTO payment
values('1030', 10, '1003', 'G1004', 'page_no', 210000, 0, 1000, '카드', 210000, '결제 완료', '20201212')
INTO payment
values('1031', 1, '1001', 'G1005', 'page_no', 245000, 0, 1000, '카드', 245000, '결제 완료', '20201213')
INTO payment
values('1032', 2, '1002', 'G1004', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20201214')
INTO payment
values('1033', 3, '1003', 'G1003', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20201211')
INTO payment
values('1034', 4, '1001', 'G1005', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20201212')
INTO payment
values('1035', 5, '1002', 'G1006', 'page_no', 742000, 0, 1000, '카드', 742000, '결제 완료', '20201213')
INTO payment
values('1036', 6, '1003', 'G1002', 'page_no', 564000, 0, 1000, '카드', 564000, '결제 완료', '20201214')
INTO payment
values('1037', 7, '1001', 'G1003', 'page_no', 450000, 0, 1000, '카드', 450000, '결제 완료', '20201211')
INTO payment
values('1038', 8, '1002', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20201212')
INTO payment
values('1039', 9, '1003', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20201213')
INTO payment
values('1040',10, '1001', 'G1002', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20201214')
INTO payment
values('1041', 1, '1002', 'G1002', 'page_no', 150000, 0, 1000, '카드', 150000, '결제 완료', '20201211')
INTO payment
values('1042', 2, '1003', 'G1003', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20201212')
INTO payment
values('1043', 3, '1001', 'G1005', 'page_no', 440000, 0, 1000, '카드', 440000, '결제 완료', '20201213')
INTO payment
values('1044', 4, '1002', 'G1003', 'page_no', 440000, 0, 1000, '카드', 440000, '결제 완료', '20201214')
INTO payment
values('1045', 5, '1003', 'G1002', 'page_no', 440000, 0, 1000, '카드', 440000, '결제 완료', '20201211')
INTO payment
values('1046', 6, '1001', 'G1001', 'page_no', 770000, 0, 1000, '카드', 770000, '결제 완료', '20201212')
INTO payment
values('1047', 2, '1002', 'G1004', 'page_no', 640000, 0, 1000, '카드', 640000, '결제 완료', '20201214')
INTO payment
values('1048', 3, '1003', 'G1003', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20201211')
INTO payment
values('1049', 4, '1001', 'G1005', 'page_no', 650000, 0, 1000, '카드', 650000, '결제 완료', '20201212')
INTO payment
values('1050', 5, '1002', 'G1006', 'page_no', 742000, 0, 1000, '카드', 742000, '결제 완료', '20201213')
INTO payment
values('1051', 6, '1003', 'G1002', 'page_no', 564000, 0, 1000, '카드', 564000, '결제 완료', '20201214')
INTO payment
values('1052', 7, '1001', 'G1003', 'page_no', 450000, 0, 1000, '카드', 450000, '결제 완료', '20201211')
INTO payment
values('1053', 8, '1002', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20201212')
INTO payment
values('1054', 9, '1003', 'G1002', 'page_no', 740000, 0, 1000, '카드', 740000, '결제 완료', '20201213')
INTO payment
values('1055',10, '1001', 'G1002', 'page_no', 430000, 0, 1000, '카드', 430000, '결제 완료', '20201214')
SELECT * FROM dual;

        select * from (select rownum rnum, t1.* 
         from (select * from PAYMENT WHERE lo_no = '1002'
         order by PAYMENT_DATE DESC) t1) 
         where rnum >= 1 and rnum <= 5;
        
        SELECT rownum rnum, payment.* FROM PAYMENT ordey BY PAYMENT_DATE;
	
SELECT name FROM USERMEMBER WHERE user_NO = 4;

        select * from (select rownum rnum, t1.* 
         from (select * from PAYMENT WHERE USER_NO = 1
         order by PAYMENT_DATE DESC) t1) 
         where rnum >= 1 and rnum <= 5;
         
SELECT DECODE(LO_NO, NULL, '1000', LO_NO) AS LO_NO, SUM(total_payment) AS totalPayment FROM PAYMENT GROUP BY ROLLUP(lo_no);

SELECT sum(total_payment) AS totalPayment FROM PAYMENT;
SELECT sum(total_payment) AS totalPayment FROM PAYMENT WHERE LO_NO = '1003';






