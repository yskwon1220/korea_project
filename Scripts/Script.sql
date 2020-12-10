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

INSERT ALL
INTO event(event_no, user_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d1','u1','오픈이벤트 20% 할인', 'fit01.jpg','20/12/31','fit02.jpg','fit03.jpg','fit04.jpg');
INTO event(event_no, user_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d2','u2','PT 결제 30% 할인', 'fit05.jpg','20/12/31','fit06.jpg','fit07.jpg','fit08.jpg');
INTO event(event_no, user_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3) 
values('d3','u3','크리스마스 10% 할인 쿠폰', 'fit9.jpg','20/12/25','fit10.jpg','fit11.jpg','fit12.jpg');
SELECT * FROM dual;

SELECT * FROM event ORDER BY event_no desc;

SELECT title, detail_img1, detail_img2, detail_img3 FROM event Where event_no='d2';

