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

ALTER TABLE UserMember ADD coupon varchar2(50);
ALTER TABLE UserMember ADD point NUMBER(20);


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
   

