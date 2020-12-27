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

INSERT ALL
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d1','오픈이벤트 20% 할인', 'fit01.jpg','20/12/31','fit02.jpg','fit03.jpg','fit04.jpg')
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d2','PT 결제 30% 할인', 'fit05.jpg','20/12/31','fit06.jpg','fit07.jpg','fit08.jpg')
INTO event(event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d3','크리스마스 10% 할인 쿠폰', 'fit9.jpg','20/12/25','fit10.jpg','fit11.jpg','fit12.jpg')
SELECT * FROM dual;

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


        select * from (select rownum rnum, t1.* 
         from (select * from PAYMENT WHERE lo_no = '1002'
         order by PAYMENT_DATE DESC) t1) 
         where rnum >= 1 and rnum <= 5;
        
        SELECT rownum rnum, payment.* FROM PAYMENT ordey BY PAYMENT_DATE;
	
SELECT name FROM USERMEMBER WHERE user_NO = 4;
        select * from (select rownum rnum, t1.* 
         from (select * from RESERVATION
         order by re_no desc) t1) 
         where rnum >= 1 and rnum <= 5;
         
SELECT DECODE(LO_NO, NULL, '1000', LO_NO) AS LO_NO, SUM(total_payment) AS totalPayment FROM PAYMENT GROUP BY ROLLUP(lo_no);

SELECT sum(total_payment) AS totalPayment FROM PAYMENT;
SELECT sum(total_payment) AS totalPayment FROM PAYMENT WHERE LO_NO = '1003';

        select * from (select rownum rnum, t1.* 
         from (select * from PAYMENT WHERE PAYMENT_DATE BETWEEN TO_DATE('20200101') AND TO_DATE('20200131') 
         order by PAYMENT_DATE) t1) 
         where rnum >= 1 and rnum <= 5;

SELECT sum(total_payment) FROM PAYMENT WHERE PAYMENT_DATE BETWEEN TO_DATE('20200401') AND TO_DATE('20200430');

SELECT count(*) FROM PAYMENT WHERE PAYMENT_DATE BETWEEN TO_DATE('20200401') AND TO_DATE('20200430');

		SELECT * FROM payment WHERE payment_NO = '1209';
	
 CREATE TABLE FNQBOARD(
 BOARD_NO NUMBER PRIMARY Key,
 ID VARCHAR2(100),
 TITLE VARCHAR2(500),
 CONTENT VARCHAR2(999),
 REGDATE TIMESTAMP,
 REP VARCHAR2(100),
 REPLY VARCHAR2(999)
 );	

INSERT ALL
INTO FNQBOARD 
VALUES(1, 'asd', '까치', '가나다라마바사 가나다라', '20201217', '답변완료', '가나다라ㅏ나마만아'),
INTO FNQBOARD 
VALUES(2, 'qwe', '고니', '가나다라마바사 가나다라', '20201218', '답변완료', '가나다라ㅏ나마만아'),
INTO FNQBOARD 
VALUES(3, 'rty', '오리', '가나다라마바사 가나다라', '20201219', '답변완료', '가나다라ㅏ나마만아'),
INTO FNQBOARD 
VALUES(4, 'yui', '닭', '가나다라마바사 가나다라', '20201220', '답변완료', '가나다라ㅏ나마만아'),
INTO FNQBOARD 
VALUES(5, 'fgh', '펭귄', '가나다라마바사 가나다라', '20201221', '답변완료', '가나다라ㅏ나마만아'),
INTO FNQBOARD 
VALUES(6, 'vbn', '바다사자', '가나다라마바사 가나다라', '20201222', '답변완료', '가나다라ㅏ나마만아'),
INTO FNQBOARD 
VALUES(7, 'jkl', '가나다라마바사', '가나다라마바사 가나다라', '20201223', '답변완료', '가나다라ㅏ나마만아'),
SELECT * FROM dual;
	
			select * from 
				(SELECT * FROM 
					( SELECT rownum rnum, TRAINER.* FROM TRAINER)
						pagetable where rnum <= 5 ) 
			where rnum >= 1 and lo_no = '1001';
		
		 select * from (select rownum rnum, t1.* 
         from (select * from TRAINER WHERE LO_NO = '1002') t1) 
         where rnum >= 1 and rnum <= 5;
		
		SELECT * FROM TRAINER WHERE lo_no = '1001';
	
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

INSERT ALL
INTO FNQBOARD 
values(1, 'asd', '가나다', 'content', '20201216','reprep', '답변답변답변')
INTO FNQBOARD 
values(2, 'asdㅇ', '가나다', 'content',  '20201216','reprep', '답변답변답변')
INTO FNQBOARD 
values(3, 'asdㄴ', '가나다', 'content', '20201217', 'reprep', '답변답변답변')
INTO FNQBOARD 
values(4, 'asdㄱ', '가나다', 'content', '20201218', 'reprep', '답변답변답변')
INTO FNQBOARD 
values(5, 'asdㅅ', '가나다', 'content', '20201219', 'reprep', '답변답변답변')
INTO FNQBOARD 
values(6, 'asdㅗ', '가나다', 'content', '20201220', 'reprep', '답변답변답변')
INTO FNQBOARD 
values(7, 'asdㅜ', '가나다', 'content',  '20201220','reprep', '답변답변답변')
SELECT * FROM dual;

        select * from (select rownum rnum, t1.* 
         from (select * from reservation WHERE lo_no ='1002' 
         and USER_NAME like '%' ||'박민'|| '%'
        ) t1) 
         where rnum >= 1 and rnum <= 5;
         
        SELECT COUNT(*) FROM reservation where lo_no = '1002' AND TR_NAME like '%' ||'박'|| '%'
        
        SELECT RESERV_CNT FROM goods WHERE GOODS_NO = 'G1001'; 
        
       SELECT lo_no FROM USERMEMBER WHERE USER_ID = 'minjoo';
       
      INSERT INTO PAYMENT
      VALUES ((SELECT max(PAYMENT_NO) + 1 FROM PAYMENT) ,
      (SELECT USER_NO FROM USERMEMBER WHERE USER_ID = 'minjoo'),
      (SELECT lo_NO FROM USERMEMBER WHERE USER_ID = 'minjoo'),
      'G1001', 0, 0, '간편결제', '80000', SYSDATE);
     
     SELECT * FROM reservation WHERE user_id = 'minjoo';
      