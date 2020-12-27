DROP TABLE USERMEMBER ;

CREATE TABLE USERMEMBER
   (	
   USER_NO NUMBER, 
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
values  (1, 'minjoo', '1111','박민주','950714','minjoo0714@nave.com','01028571088', '1001', 'F','admin', null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (2, 'hyeji', '1111','박혜지','950314','hyeji@nave.com','01026463686', '1002', 'F','admin',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (3, 'yongseok', '1111','권용석','920914','yongseok@nave.com','01098901036', '1003', 'F','admin',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (4, 'seongmin', '1111','길성민','910614','seongmin@nave.com','01063175391', '1001', 'F','admin',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (5, 'hyeonhee', '1111','이현희','950923','hyeonhee@nave.com','01033804144', '1002', 'F','admin',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (6, 'jooho', '1111','이주호','940714','jooho@nave.com','01047886112', '1003', 'F', 'admin',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (7, 'kkachi', '1111','박민경','990811','kkachi@nave.com','01027243651', '1001', 'F','user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (8, 'goose', '1111','박치국','060402','goose@nave.com','01064483656', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (9, 'tiger', '1111','이재란','900713','tiger@nave.com','01092541000', '1003', 'F','user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (10, 'lion', '1111','박대출','901020','lion@nave.com','01026783544', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (11, 'silverstar', '1111','고은별','950318','silverstar@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (12, 'silverrain', '1111','고은비','970714','silverrain@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (13, 'baechu', '1111','배시현','970523','baechu@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (14, 'haeppiness', '1111','김경해','951129','haeppiness@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (15, 'juyeondal', '1111','이주연','951017','juyeondal@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (16, 'litghting', '1111','조미영','951114','litghting@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (17, 'stilyandb', '1111','성유정','950811','stilyandb@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (18, 'tamja', '1111','성탐자','051129','tamja@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (19, 'ayong', '1111','최아영','950311','ayong@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (20, 'baritori', '1111','김나현','950305','baritori@nave.com','01012341212', '1001', 'F', 'user',null, SYSDATE, 'coupon', 2000)
SELECT * FROM dual;

INSERT all
 INTO USERMEMBER
values  (21, 'chanm', '1111','마승찬','900413','chanm@nave.com','01021299239', '1002', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (22, '5kdol9seul', '1111','박만주','950714','5kdol9seul@nave.com','01090292100', '1002', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (23, 'gotae', '1111','고태훈','951119','gotae@nave.com','01065990932', '1002', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (24, 'daesung', '1111','김대성','951223','daesung@nave.com','01099270995', '1002', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (25, 'yeun', '1111','김예은','951215','yeun@nave.com','01087926980', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (26, 'eugine', '1111','김유진','960223','eugine@nave.com','01920569484', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (27, 'taehoon', '1111','김태훈','960223','taehoon@nave.com','01059479740', '1002', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (28, 'hj1119', '1111','김혜정','960118','hj1119@nave.com','01033395969', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (29, 'hk119', '1111','김회경','960119','hk119@nave.com','01093920198', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (30, 'heesun', '1111','노희선','951218','heesun@nave.com','01029850206', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (31, 'suujin', '1111','박수진','960823','suujin@nave.com','01062189394', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (32, 'loveitove', '1111','박지현','951210','loveitove@nave.com','01024299819', '1002', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (34, 'bugal', '1111','서부강','951009','bugal@nave.com','01071292519', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (35, 'joohee', '1111','손주희','950417','joohee@nave.com','01081336509', '1003', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (36, 'dongho', '1111','신동호','950606','dongho@nave.com','01091291233', '1003', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (37, 'jiajai', '1111','엄지아','950613','jiajai@nave.com','01012123434', '1003', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (38, 'shingok', '1111','우민경','950918','shingok@nave.com','01012331299', '1003', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (39, 'gwoooo', '1111','이건우','950611','gwoooo@nave.com','01098832345', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (40, 'sanghy', '1111','이상현','951020','sanghy@nave.com','01012439876', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (41, 'sojung', '1111','이소정','980515','sojung@nave.com','01013450556', '1003', 'F', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (42, 'godhyop', '1111','이신협','011223','godhyop@nave.com','01012335556', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (43, 'taegyun', '1111','이태균','951119','taegyun@nave.com','01098765432', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (44, 'sungjin', '1111','조성진','951119','sungjin@nave.com','01098982345', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
INTO USERMEMBER
values  (45, 'kkukku', '1111','황규환','951119','kkukku@nave.com','01090126543', '1003', 'M', 'user',null, SYSDATE, 'coupon', 2000)
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

CREATE SEQUENCE re_noidx START WITH 1 INCREMENT BY 1 MAXVALUE 1000 CYCLE NOCACHE;

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

CREATE SEQUENCE SEQ_REVIEW --시퀀스이름 EX_SEQ
INCREMENT BY 1 --증감숫자 1
START WITH 1 --시작숫자 1
MINVALUE 1 --최소값 1
MAXVALUE 100000 --최대값 
NOCYCLE --순한하지않음
; 

DROP SEQUENCE seq_review;

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
  VALUES (1, '새롭게 인사드립니다.', '안녕하세요. 피트니스 산업의 새 시대를 선도하는 기업!
앞으로도 지금보다 더 나은 서비스를 더 좋은 조건으로 여러 고객님들께 제공해 드리고 조금이라도 더 많은 고객님들의 건강을 챙기고 삶의 질을 높이는데 일조할 수 있다면 좋겠습니다.', SYSDATE, 0)
  INTO NOTICE 
  VALUES (2, '강남역 오픈!', '강남역점이
오픈 준비에 돌입했습니다.
강남역 최고 시설로 오픈 예정이며,
직영점으로 보다 안전하고 쾌적하게
운영될 피트니스센터입니다.
', SYSDATE, 0)
  INTO NOTICE 
  VALUES (3, '한글날 운영안내', '이번 한글날 연휴 (10/9 -10/11) 에도
 쉬지 않고 운영하니
운영시간 참고하셔서
 이용에 차질 없으시길 바랍니다. ', SYSDATE, 0)
    INTO NOTICE 
  VALUES (4, '강서점 리모델링 안내', '12월 30일부터 약 3주간에 걸쳐
리모델링 공사를 진행하오니 참고 부탁드립니다.
센터 이용이 중단된 해당 기간에 대해서는
공사 일정에 따라 추가 보상 기간을 드릴 예정입니다.', SYSDATE, 0)
    INTO NOTICE 
  VALUES (5, '공휴일에도 계속 운영됩니다.', '운영시간 참고하셔서
이용에 차질 없으시길 바랍니다.
오늘도 건강한 하루 보내세요!  ', SYSDATE, 0)
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
  VALUES(1, '시설이용','가입 후 없어지는 헬스장 많은데 믿을만한가요?', '저희 헬스장은 개인이 운영하는 소규모 헬스장이 아닌 
전지점 본사 직영으로만 운영하는 국내 최대 피트니스 전문 기업입니다.
FitNessClub을 믿고 편하게 운동하세요!', SYSDATE, 0)
  INTO qna 
  VALUES(2, '시설이용','코로나19 기간 내 지점 이용에 변동 사항이 있나요?', '코로나19로 인하여 한시적으로 1일 입장 이용이 제한됩니다
<br>- 현재 패스트 지점은 코로나19로 인하여 피트니스/짐/프리미엄 브랜드와 동일한 시간에 운영되고 있습니다.', SYSDATE, 0)
  INTO qna 
  VALUES(3, '시설이용','하루만 이용해볼 수 있나요?', '코로나19로 인하여 한시적으로 일일 입장 이용이 제한됩니다', SYSDATE, 0)
  INTO qna 
  VALUES(4, '시설','지점 이용시간 알고싶습니다.', '피트니스 클럽 운영시간은 다음과 같습니다.
<br>- 평일 : 24시간 운영
<br>- 주말 : 10시 ~ 18시 운영', SYSDATE, 0)
  INTO qna 
  VALUES(5, '시설이용','연기는 가능한가요?', '회원권 3개월 기준 1회, 6개월 기준 2회, 1년 기준 4회 연기 가능합니다.
1회당 최대 1개월(30일)까지 연기 가능합니다.', SYSDATE, 0)
  INTO qna 
  VALUES(6, '로그인','아이디 패스워드를 잊어버렸습니다.', '1대1 문의해주세요.', SYSDATE, 0)
  SELECT * FROM dual;
  
 DROP TABLE FNQBOARD;
 
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
  VALUES (1, 'yeun','연기 가능여부', '연기는 가능한가요?', SYSDATE, '처리완료', '회원권 3개월 기준 1회, 6개월 기준 2회, 1년 기준 4회 연기 가능합니다.
1회당 최대 1개월(30일)까지 연기 가능합니다.')
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
values(481, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200101')
INTO payment
values(482, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200101')
INTO payment
values(483, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200101')
INTO payment
values(484, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200101')
INTO payment
values(485, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200102')
INTO payment
values(486, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200103')
INTO payment
values(487, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200104')
INTO payment
values(488, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200105')
INTO payment
values(489, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200106')
INTO payment
values(490, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200107')
INTO payment
values(491, 11, '1002', 'G1001', 0, 0, '간편결제', 800000, '20200108')
INTO payment
values(492, 21, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200111')
INTO payment
values(493, 31, '1001', 'G1003', 0, 0, '간편결제', 1500000, '20200111')
INTO payment
values(494, 41, '1002', 'G1004', 0, 0, '간편결제', 2400000, '20200111')
INTO payment
values(495, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200111')
INTO payment
values(496, 16, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200111')
INTO payment
values(497, 17, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200111')
INTO payment
values(498, 18, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200111')
INTO payment
values(499, 19, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200111')
INTO payment
values(500, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200111')
INTO payment
values(501, 11, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200201')
INTO payment
values(502, 12, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200202')
INTO payment
values(503, 13, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200203')
INTO payment
values(504, 14, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200204')
INTO payment
values(505, 15, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200205')
INTO payment
values(506, 16, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200206')
INTO payment
values(507, 17, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(508, 18, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
values(509, 19, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(510, 20, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(511, 21, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200211')
INTO payment
values(512, 22, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(513, 23, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
values(514, 24, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(515, 25, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(516, 26, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200211')
INTO payment
values(517, 27, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200211')
INTO payment
values(518, 28, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200211')
INTO payment
VALUES(519, 29, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200211')
INTO payment
values(520, 30, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200211')
INTO payment
values(521, 31, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200301')
INTO payment
values(522, 32, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200301')
INTO payment
values(523, 33, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200301')
INTO payment
values(524, 34, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200301')
INTO payment
values(525, 35, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200301')
INTO payment
values(526, 36, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200302')
INTO payment
values(527, 37, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(528, 38, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(529, 39, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(530, 40, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(531, 41, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200311')
INTO payment
values(532, 42, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(533, 43, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(534, 44, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(535, 45, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(536, 16, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200311')
INTO payment
values(537, 17, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200311')
INTO payment
values(538, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200311')
INTO payment
values(539, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200311')
INTO payment
values(540, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200311')
INTO payment
values(541, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200401')
INTO payment
values(542, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200401')
INTO payment
values(543, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200401')
INTO payment
values(544, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200401')
INTO payment
values(545, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200401')
INTO payment
values(546, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200402')
INTO payment
values(547, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(548, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(549, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(550, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(551, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200411')
INTO payment
values(552, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(553, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(554, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(555, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(556, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200411')
INTO payment
values(557, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200411')
INTO payment
values(558, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200411')
INTO payment
values(559, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200411')
INTO payment
values(560, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200411')
INTO payment
values(561, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200501')
INTO payment
values(562, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200501')
INTO payment
values(563, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200501')
INTO payment
values(564, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200501')
INTO payment
values(565, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200501')
INTO payment
values(566, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200501')
INTO payment
values(567, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(568, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(569, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(570, 10, '1001', 'G1005', 0, 0, '간편결제', 45000, '20200511')
INTO payment
values(571, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200511')
INTO payment
values(572, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(573, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(574, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(575, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200511')
INTO payment
values(576, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200511')
INTO payment
values(577, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200511')
INTO payment
values(578, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200511')
INTO payment
values(579, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200511')
INTO payment
values(580, 10, '1002', 'G1005', 0, 0, '간편결제', 45000, '20200511')
INTO payment
values(581, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(582, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(583, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(584, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(585, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200611')
INTO payment
values(586, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(587, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(588, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(589, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(590, 10, '1001', 'G1005', 0, 0, '간편결제', 45000, '20200611')
INTO payment
values(591, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(592, 12, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(593, 31, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(594, 41, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(595, 15, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200611')
INTO payment
values(596, 16, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200611')
INTO payment
values(597, 27, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200611')
INTO payment
values(598, 28, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200611')
INTO payment
values(599, 19, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200611')
INTO payment
values(600, 20, '1002', 'G1005', 0, 0, '간편결제', 45000, '20200611')
INTO payment
values(601, 13, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(602, 24, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(603, 37, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(604, 45, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(605, 15, '1002', 'G1005', 0, 0, '간편결제', 45000, '20200711')
INTO payment
values(606, 3, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(607, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(608, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(609, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(610, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20200711')
INTO payment
values(611, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(612, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(613, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(614, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(615, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200711')
INTO payment
values(616, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200711')
INTO payment
values(617, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200711')
INTO payment
values(618, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200711')
INTO payment
values(619, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200711')
INTO payment
values(620, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200811')
INTO payment
values(621, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(622, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(623, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(624, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(625, 5, '1002', 'G1005', 0, 0, '간편결제', 45000, '20200811')
INTO payment
values(626, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(627, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(628, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(629, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(630, 10, '1001', 'G1005', 0, 0, '간편결제', 45000, '20200811')
INTO payment
values(631, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(632, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(633, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(634, 34, '1002', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(635, 35, '1003', 'G1005', 0, 0, '간편결제', 545000, '20200811')
INTO payment
values(636, 36, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200811')
INTO payment
values(637, 37, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200811')
INTO payment
values(638, 38, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200811')
INTO payment
values(639, 29, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200811')
INTO payment
values(640, 30, '1002', 'G1005', 0, 0, '간편결제', 545000, '20200911')
INTO payment
values(641, 21, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(642, 42, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(643, 13, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(644, 14, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(645, 15, '1002', 'G1005', 0, 0, '간편결제', 45000, '20200911')
INTO payment
values(646, 16, '1003', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(647, 17, '1001', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(648, 18, '1002', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(649, 19, '1003', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(650, 20, '1001', 'G1005', 0, 0, '간편결제', 45000, '20200911')
INTO payment
values(651, 13, '1002', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(652, 21, '1003', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(653, 32, '1001', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(654, 14, '1002', 'G1004', 0, 0, '간편결제', 40000, '20200911')
INTO payment
values(655, 25, '1003', 'G1005', 0, 0, '간편결제', 45000, '20200911')
INTO payment
values(656, 26, '1001', 'G1001', 0, 0, '간편결제', 80000, '20200911')
INTO payment
values(657, 17, '1002', 'G1002', 0, 0, '간편결제', 90000, '20200911')
INTO payment
values(658, 18, '1003', 'G1003', 0, 0, '간편결제', 150000, '20200911')
INTO payment
values(659, 19, '1001', 'G1004', 0, 0, '간편결제', 240000, '20200911')
INTO payment
values(660, 30, '1002', 'G1005', 0, 0, '간편결제', 45000, '20200911')
INTO payment
values(661, 31, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(662, 12, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(663, 13, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(664, 14, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(665, 25, '1002', 'G1005', 0, 0, '간편결제', 45000, '20201011')
INTO payment
values(666, 36, '1003', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(667, 37, '1001', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(668, 38, '1002', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(669, 39, '1003', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(670, 20, '1001', 'G1005', 0, 0, '간편결제', 45000, '20201011')
INTO payment
values(671, 11, '1002', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(672, 12, '1003', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(673, 13, '1001', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(674, 14, '1002', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(675, 15, '1003', 'G1005', 0, 0, '간편결제', 45000, '20201011')
INTO payment
values(676, 16, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201011')
INTO payment
values(677, 17, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201011')
INTO payment
values(678, 18, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201011')
INTO payment
values(679, 19, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201011')
INTO payment
values(680, 40, '1002', 'G1005', 0, 0, '간편결제', 45000, '20201011')
INTO payment
values(681, 15, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(682, 27, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(683, 36, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(684, 48, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(685, 11, '1002', 'G1005', 0, 0, '간편결제', 45000, '20201111')
INTO payment
values(686, 12, '1003', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(687, 17, '1001', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(688, 18, '1002', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(689, 19, '1003', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(690, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20201111')
INTO payment
values(691, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(692, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(693, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(694, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(695, 5, '1003', 'G1005', 0, 0, '간편결제', 45000, '20201111')
INTO payment
values(696, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201111')
INTO payment
values(697, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201111')
INTO payment
values(698, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201111')
INTO payment
values(699, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201111')
INTO payment
values(700, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20201111')
INTO payment
values(701, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201211')
INTO payment
values(702, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201211')
INTO payment
values(703, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201211')
INTO payment
values(704, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20201211')
INTO payment
values(705, 5, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20201211')
INTO payment
values(706, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20201211')
INTO payment
values(707, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20201212')
INTO payment
values(708, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20201213')
INTO payment
values(709, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20201214')
INTO payment
values(710, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20201215')
INTO payment
values(711, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20201216')
INTO payment
values(712, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20201217')
INTO payment
values(713, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20201218')
INTO payment
values(714, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20201219')
INTO payment
values(715, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20201220')
INTO payment
values(716, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20201221')
INTO payment
values(717, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20201222')
INTO payment
values(718, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20201223')
INTO payment
values(719, 9, '1001', 'G1004', 4000, 0, '간편결제', 236000, '20201224')
INTO payment
values(720, 10, '1002', 'G1005', 10000, 5000, '간편결제', 530000, '20201225')
SELECT * FROM dual;

INSERT ALL
INTO payment
values(230, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190101')
INTO payment
values(231, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190101')
INTO payment
values(232, 1, '1001', 'G1001', 0, 0, '간편결제', 800000, '20190101')
INTO payment
values(233, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190101')
INTO payment
values(234, 1, '1001', 'G1001', 0, 0, '간편결제', 800000, '20190111')
INTO payment
values(235, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190112')
INTO payment
values(236, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190113')
INTO payment
values(237, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190114')
INTO payment
values(238, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190111')
INTO payment
values(239, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190111')
INTO payment
values(240, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190111')
INTO payment
values(241, 1, '1001', 'G1001', 0, 0, '간편결제', 800000, '20190111')
INTO payment
values(242, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190111')
INTO payment
values(243, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190111')
INTO payment
values(244, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190111')
INTO payment
values(245, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190111')
INTO payment
values(246, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190111')
INTO payment
values(247, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190111')
INTO payment
values(248, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190111')
INTO payment
values(249, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190111')
INTO payment
values(250, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20190111')
INTO payment
values(251, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190111')
INTO payment
values(252, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190111')
INTO payment
values(253, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190111')
INTO payment
values(254, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190111')
INTO payment
values(255, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190111')
INTO payment
values(256, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190111')
INTO payment
values(257, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190111')
INTO payment
values(258, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190111')
INTO payment
values(259, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190111')
INTO payment
values(260, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190111')
INTO payment
values(261, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190211')
INTO payment
values(262, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190211')
INTO payment
values(263, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190211')
INTO payment
values(264, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190211')
INTO payment
values(265, 5, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20190211')
INTO payment
values(266, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190211')
INTO payment
values(267, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190211')
INTO payment
values(268, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190211')
INTO payment
values(269, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190211')
INTO payment
values(270, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20190211')
INTO payment
values(271, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190211')
INTO payment
values(272, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190211')
INTO payment
values(273, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190211')
INTO payment
values(274, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190211')
INTO payment
values(275, 5, '1003', 'G1005', 500000, 0, '간편결제', 45000, '20190211')
INTO payment
values(276, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190211')
INTO payment
values(277, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190211')
INTO payment
values(278, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190211')
INTO payment
VALUES(279, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190211')
INTO payment
values(280, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20190211')
INTO payment
values(281, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190311')
INTO payment
values(282, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190311')
INTO payment
values(283, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190311')
INTO payment
values(284, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190311')
INTO payment
values(285, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190311')
INTO payment
values(286, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190311')
INTO payment
values(287, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190311')
INTO payment
values(288, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190311')
INTO payment
values(289, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190311')
INTO payment
values(290, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20190311')
INTO payment
values(291, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190311')
INTO payment
values(292, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190311')
INTO payment
values(293, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190311')
SELECT * FROM dual;

INSERT all
INTO payment
values(294, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190311')
INTO payment
values(295, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190311')
INTO payment
values(296, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190311')
INTO payment
values(297, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190311')
INTO payment
values(298, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190311')
INTO payment
values(299, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190311')
INTO payment
values(300, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190311')
INTO payment
values(301, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190411')
INTO payment
values(302, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190411')
SELECT * FROM dual;

INSERT all
INTO payment
values(303, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190411')
INTO payment
values(304, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190411')
INTO payment
values(305, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190411')
INTO payment
values(306, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190411')
INTO payment
values(307, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190411')
INTO payment
values(308, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190411')
INTO payment
values(309, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190411')
INTO payment
values(310, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20190411')
INTO payment
values(311, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190411')
INTO payment
values(312, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190411')
INTO payment
values(313, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190411')
INTO payment
values(314, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190411')
INTO payment
values(315, 5, '1003', 'G1005', 0, 0, '간편결제', 45000, '20190411')
INTO payment
values(316, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190411')
INTO payment
values(317, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190411')
INTO payment
values(318, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190411')
INTO payment
values(319, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190411')
INTO payment
values(320, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20190411')
INTO payment
values(321, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190511')
INTO payment
values(322, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190511')
INTO payment
values(323, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190511')
INTO payment
values(324, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190511')
INTO payment
values(325, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190511')
SELECT * FROM dual;

INSERT ALL
INTO payment
values(326, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190511')
INTO payment
values(327, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190511')
INTO payment
values(328, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190511')
INTO payment
values(329, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190511')
INTO payment
values(330, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20190511')
INTO payment
values(331, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190511')
INTO payment
values(332, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190511')
INTO payment
values(333, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190511')
INTO payment
values(334, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190511')
INTO payment
values(335, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190511')
INTO payment
values(336, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190511')
INTO payment
values(337, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190511')
INTO payment
values(338, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190511')
INTO payment
values(339, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190511')
INTO payment
values(340, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20190511')
INTO payment
values(341, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190611')
INTO payment
values(342, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190611')
INTO payment
values(343, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190611')
INTO payment
values(344, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190611')
INTO payment
values(345, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190611')
INTO payment
values(346, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190611')
INTO payment
values(347, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190611')
INTO payment
values(348, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190611')
INTO payment
values(349, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190611')
INTO payment
values(350, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20190611')
INTO payment
values(351, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190611')
INTO payment
values(352, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190611')
INTO payment
values(353, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190611')
INTO payment
values(354, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190611')
INTO payment
values(355, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190611')
INTO payment
values(356, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190611')
INTO payment
values(357, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190611')
INTO payment
values(358, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190611')
INTO payment
values(359, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190611')
INTO payment
values(360, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190611')
INTO payment
values(361, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190711')
INTO payment
values(362, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190711')
INTO payment
values(363, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190711')
INTO payment
values(364, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190711')
INTO payment
values(365, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190711')
INTO payment
values(366, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190711')
INTO payment
values(367, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190711')
INTO payment
values(368, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190711')
INTO payment
values(369, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190711')
INTO payment
values(370, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20190711')
INTO payment
values(371, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190711')
INTO payment
values(372, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190711')
INTO payment
values(373, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190711')
INTO payment
values(374, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190711')
INTO payment
values(375, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190711')
INTO payment
values(376, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190711')
INTO payment
values(377, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190711')
INTO payment
values(378, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190711')
INTO payment
values(379, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190711')
INTO payment
values(380, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190811')
INTO payment
values(381, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190811')
INTO payment
values(382, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190811')
INTO payment
values(383, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190811')
INTO payment
values(384, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190811')
INTO payment
values(385, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190811')
INTO payment
values(386, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190811')
INTO payment
values(387, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190811')
INTO payment
values(388, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190811')
INTO payment
values(389, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190811')
INTO payment
values(390, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20190811')
INTO payment
values(391, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190811')
INTO payment
values(392, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190811')
INTO payment
values(393, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190811')
INTO payment
values(394, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190811')
INTO payment
values(395, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190811')
INTO payment
values(396, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190811')
INTO payment
values(397, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190811')
INTO payment
values(398, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190811')
INTO payment
values(399, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190811')
INTO payment
values(400, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190911')
INTO payment
values(401, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190911')
INTO payment
values(402, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190911')
INTO payment
values(403, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190911')
INTO payment
values(404, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190911')
INTO payment
values(405, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190911')
INTO payment
values(406, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20190911')
INTO payment
values(407, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20190911')
INTO payment
values(408, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20190911')
INTO payment
values(409, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20190911')
INTO payment
values(410, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20190911')
INTO payment
values(411, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20190911')
INTO payment
values(412, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20190911')
INTO payment
values(413, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20190911')
INTO payment
values(414, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20190911')
INTO payment
values(415, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20190911')
INTO payment
values(416, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20190911')
INTO payment
values(417, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20190911')
INTO payment
values(418, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20190911')
INTO payment
values(419, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20190911')
INTO payment
values(420, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20190911')
INTO payment
values(421, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20191011')
INTO payment
values(422, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20191011')
INTO payment
values(423, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20191011')
INTO payment
values(424, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20191011')
INTO payment
values(425, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20191011')
INTO payment
values(426, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20191011')
INTO payment
values(427, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20191011')
INTO payment
values(428, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20191011')
INTO payment
values(429, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20191011')
INTO payment
values(430, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20191011')
INTO payment
values(431, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20191011')
INTO payment
values(432, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20191011')
INTO payment
values(433, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20191011')
INTO payment
values(434, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20191011')
INTO payment
values(435, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20191011')
INTO payment
values(436, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20191011')
INTO payment
values(437, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20191011')
INTO payment
values(438, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20191011')
INTO payment
values(439, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20191011')
INTO payment
values(440, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20191011')
INTO payment
values(441, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20191111')
INTO payment
values(442, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20191111')
INTO payment
values(443, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20191111')
INTO payment
values(444, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20191111')
INTO payment
values(445, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20191111')
INTO payment
values(446, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20191111')
INTO payment
values(447, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20191111')
INTO payment
values(448, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20191111')
INTO payment
values(449, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20191111')
INTO payment
values(450, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20191111')
INTO payment
values(451, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20191111')
INTO payment
values(452, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20191111')
INTO payment
values(453, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20191111')
INTO payment
values(454, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20191111')
INTO payment
values(455, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20191111')
INTO payment
values(456, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20191111')
INTO payment
values(457, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20191111')
INTO payment
values(458, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20191111')
INTO payment
values(459, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20191111')
INTO payment
values(460, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20191111')
INTO payment
values(461, 1, '1001', 'G1001', 0, 0, '간편결제', 800000, '20191211')
INTO payment
values(462, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20191211')
INTO payment
values(463, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20191211')
INTO payment
values(464, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20191211')
INTO payment
values(465, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20191211')
INTO payment
values(466, 6, '1003', 'G1001', 0, 0, '간편결제', 800000, '20191211')
INTO payment
values(467, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20191211')
INTO payment
values(468, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20191211')
INTO payment
values(469, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20191211')
INTO payment
values(470, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20191211')
INTO payment
values(471, 1, '1002', 'G1001', 0, 0, '간편결제', 800000, '20191211')
INTO payment
values(472, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20191211')
INTO payment
values(473, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20191211')
INTO payment
values(474, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20191211')
INTO payment
values(475, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20191211')
INTO payment
values(476, 6, '1001', 'G1001', 0, 0, '간편결제', 800000, '20191211')
INTO payment
values(477, 7, '1002', 'G1002', 0, 0, '간편결제', 900000, '20191211')
INTO payment
values(478, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20191211')
INTO payment
values(479, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20191211')
INTO payment
values(480, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20191211')
SELECT * FROM dual;

INSERT ALL
INTO payment
values(1, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180111')
INTO payment
values(2, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180111')
INTO payment
values(3, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180111')
INTO payment
values(4, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180111')
INTO payment
values(5, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180111')
INTO payment
values(6, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180111')
INTO payment
values(7, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180111')
INTO payment
values(8, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180111')
INTO payment
values(9, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180111')
INTO payment
values(10, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20180111')
INTO payment
values(11, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180111')
INTO payment
values(12, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180111')
INTO payment
values(13, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180111')
INTO payment
values(14, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180111')
INTO payment
values(15, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20180111')
INTO payment
values(16, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180111')
INTO payment
values(17, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180111')
INTO payment
values(18, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180111')
INTO payment
values(19, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180111')
INTO payment
values(20, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180111')
INTO payment
values(21, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180211')
INTO payment
values(22, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180211')
INTO payment
values(23, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180211')
INTO payment
values(24, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180211')
INTO payment
values(25, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180211')
INTO payment
values(26, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180211')
INTO payment
values(27, 7, '1001', 'G1002', 0, 0, '간편결제', 900000, '20180211')
INTO payment
values(28, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180211')
INTO payment
values(29, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180211')
INTO payment
values(30, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20180211')
INTO payment
values(31, 1, '1002', 'G1001', 0, 0, '간편결제', 800000, '20180211')
INTO payment
values(32, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180211')
INTO payment
values(33, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180211')
INTO payment
values(34, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180211')
INTO payment
values(35, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20180211')
INTO payment
values(36, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180211')
INTO payment
values(37, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180211')
INTO payment
values(38, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180211')
INTO payment
VALUES(39, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180211')
INTO payment
values(40, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180211')
INTO payment
values(41, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180311')
INTO payment
values(42, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180311')
INTO payment
values(43, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180311')
INTO payment
values(44, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180311')
INTO payment
values(45, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180311')
INTO payment
values(46, 6, '1003', 'G1001', 0, 0, '간편결제', 800000, '20180311')
INTO payment
values(47, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180311')
INTO payment
values(48, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180311')
INTO payment
values(49, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180311')
INTO payment
values(50, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20180311')
INTO payment
values(51, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180311')
INTO payment
values(52, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180311')
INTO payment
values(53, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180311')
INTO payment
values(54, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180311')
INTO payment
values(55, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20180311')
INTO payment
values(56, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180311')
INTO payment
values(57, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180311')
INTO payment
values(58, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180311')
INTO payment
values(59, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180311')
INTO payment
values(60, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180311')
INTO payment
values(61, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180411')
INTO payment
values(62, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180411')
INTO payment
values(63, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180411')
INTO payment
values(64, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180411')
INTO payment
values(65, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180411')
INTO payment
values(66, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180411')
INTO payment
values(67, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180411')
INTO payment
values(68, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180411')
INTO payment
values(69, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180411')
INTO payment
values(70, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20180411')
INTO payment
values(71, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180411')
INTO payment
values(72, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180411')
INTO payment
values(73, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180411')
INTO payment
values(74, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180411')
INTO payment
values(75, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20180411')
INTO payment
values(76, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180411')
INTO payment
values(77, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180411')
INTO payment
values(78, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180411')
INTO payment
values(79, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180411')
INTO payment
values(80, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180411')
INTO payment
values(81, 1, '1001', 'G1001', 0, 0, '간편결제', 800000, '20180511')
INTO payment
values(82, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180511')
INTO payment
values(83, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180511')
INTO payment
values(84, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180511')
INTO payment
values(85, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180511')
INTO payment
values(86, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180511')
INTO payment
values(87, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180511')
INTO payment
values(88, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180511')
INTO payment
values(89, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180511')
INTO payment
values(90, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20180511')
INTO payment
values(91, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180511')
INTO payment
values(92, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180511')
INTO payment
values(93, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180511')
INTO payment
values(94, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180511')
INTO payment
values(95, 5, '1003', 'G1005', 500000, 0, '간편결제', 45000, '20180511')
INTO payment
values(96, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180511')
INTO payment
values(97, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180511')
INTO payment
values(98, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180511')
INTO payment
values(99, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180511')
INTO payment
values(100, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20180511')
INTO payment
values(101, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180611')
INTO payment
values(102, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180611')
INTO payment
values(103, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180611')
INTO payment
values(104, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180611')
INTO payment
values(105, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180611')
INTO payment
values(106, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180611')
INTO payment
values(107, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180611')
INTO payment
values(108, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180611')
INTO payment
values(109, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180611')
INTO payment
values(110, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20180611')
INTO payment
values(111, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180611')
INTO payment
values(112, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180611')
INTO payment
values(113, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180611')
INTO payment
values(114, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180611')
INTO payment
values(115, 5, '1003', 'G1005', 500000, 0, '간편결제', 45000, '20180611')
INTO payment
values(116, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180611')
INTO payment
values(117, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180611')
INTO payment
values(118, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180611')
INTO payment
values(119, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180611')
INTO payment
values(120, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180611')
INTO payment
values(121, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180711')
INTO payment
values(122, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180711')
INTO payment
values(123, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180711')
INTO payment
values(124, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180711')
INTO payment
values(125, 5, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20180711')
INTO payment
values(126, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180711')
INTO payment
values(127, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180711')
INTO payment
values(128, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180711')
INTO payment
values(129, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180711')
INTO payment
values(130, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20180711')
INTO payment
values(131, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180711')
INTO payment
values(132, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180711')
INTO payment
values(133, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180711')
INTO payment
values(134, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180711')
INTO payment
values(135, 5, '1003', 'G1005', 500000, 0, '간편결제', 45000, '20180711')
INTO payment
values(136, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180711')
INTO payment
values(137, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180711')
INTO payment
values(138, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180711')
INTO payment
values(139, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180711')
INTO payment
values(140, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180811')
INTO payment
values(141, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180811')
INTO payment
values(142, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180811')
INTO payment
values(143, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180811')
INTO payment
values(144, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180811')
INTO payment
values(145, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180811')
INTO payment
values(146, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180811')
INTO payment
values(147, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180811')
INTO payment
values(148, 8, '1002', 'G1003', 0, 0, '간편결제', 1500000, '20180811')
INTO payment
values(149, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180811')
INTO payment
values(150, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20180811')
INTO payment
values(151, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180811')
INTO payment
values(152, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180811')
INTO payment
values(153, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180811')
INTO payment
values(154, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180811')
INTO payment
values(155, 5, '1003', 'G1005', 500000, 0, '간편결제', 45000, '20180811')
INTO payment
values(156, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180811')
INTO payment
values(157, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180811')
INTO payment
values(158, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180811')
INTO payment
values(159, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180811')
INTO payment
values(160, 10, '1002', 'G1005', 0, 0, '간편결제', 545000, '20180911')
INTO payment
values(161, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180911')
INTO payment
values(162, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180911')
INTO payment
values(163, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180911')
INTO payment
values(164, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180911')
INTO payment
values(165, 5, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20180911')
INTO payment
values(166, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20180911')
INTO payment
values(167, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20180911')
INTO payment
values(168, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20180911')
INTO payment
values(169, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20180911')
INTO payment
values(170, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20180911')
INTO payment
values(171, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20180911')
INTO payment
values(172, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20180911')
INTO payment
values(173, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20180911')
INTO payment
values(174, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20180911')
INTO payment
values(175, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20180911')
INTO payment
values(176, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20180911')
INTO payment
values(177, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20180911')
INTO payment
values(178, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20180911')
INTO payment
values(179, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20180911')
INTO payment
values(180, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20180911')
INTO payment
values(181, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20181002')
INTO payment
values(182, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20181003')
INTO payment
values(183, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20181004')
INTO payment
values(184, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20181005')
INTO payment
values(185, 5, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20181006')
INTO payment
values(186, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20181007')
INTO payment
values(187, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20181008')
INTO payment
values(188, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20181009')
INTO payment
values(189, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20181010')
INTO payment
values(190, 10, '1001', 'G1005', 500000, 0, '간편결제', 45000, '20181011')
INTO payment
values(191, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20181012')
INTO payment
values(192, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20181013')
INTO payment
values(193, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20181014')
INTO payment
values(194, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20181015')
INTO payment
values(195, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20181016')
INTO payment
values(196, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20181017')
INTO payment
values(197, 7, '1002', 'G1002', 0, 0, '간편결제', 90000, '20181018')
INTO payment
values(198, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20181019')
INTO payment
values(199, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20181020')
INTO payment
values(200, 10, '1002', 'G1005', 500000, 0, '간편결제', 45000, '20181021')
INTO payment
values(201, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20181111')
INTO payment
values(202, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20181121')
INTO payment
values(203, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20181122')
INTO payment
values(204, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20181123')
INTO payment
values(205, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20181124')
INTO payment
values(206, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20181125')
INTO payment
values(207, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20181126')
INTO payment
values(208, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20181127')
INTO payment
values(209, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20181130')
INTO payment
values(210, 1, '1001', 'G1001', 0, 0, '간편결제', 80000, '20181201')
INTO payment
values(211, 2, '1002', 'G1002', 0, 0, '간편결제', 90000, '20181203')
INTO payment
values(212, 3, '1003', 'G1003', 0, 0, '간편결제', 150000, '20181205')
INTO payment
values(213, 4, '1001', 'G1004', 0, 0, '간편결제', 240000, '20181206')
INTO payment
values(214, 5, '1002', 'G1005', 0, 0, '간편결제', 545000, '20181207')
INTO payment
values(215, 6, '1003', 'G1001', 0, 0, '간편결제', 80000, '20181208')
INTO payment
values(216, 7, '1001', 'G1002', 0, 0, '간편결제', 90000, '20181209')
INTO payment
values(217, 8, '1002', 'G1003', 0, 0, '간편결제', 150000, '20181210')
INTO payment
values(218, 9, '1003', 'G1004', 0, 0, '간편결제', 240000, '20181220')
INTO payment
values(219, 10, '1001', 'G1005', 0, 0, '간편결제', 545000, '20181221')
INTO payment
values(220, 1, '1002', 'G1001', 0, 0, '간편결제', 80000, '20181222')
INTO payment
values(221, 2, '1003', 'G1002', 0, 0, '간편결제', 90000, '20181223')
INTO payment
values(222, 3, '1001', 'G1003', 0, 0, '간편결제', 150000, '20181224')
INTO payment
values(223, 4, '1002', 'G1004', 0, 0, '간편결제', 240000, '20181225')
INTO payment
values(224, 5, '1003', 'G1005', 0, 0, '간편결제', 545000, '20181226')
INTO payment
values(225, 6, '1001', 'G1001', 0, 0, '간편결제', 80000, '20181227')
INTO payment
values(226, 7, '1002', 'G1002', 10000, 0, '간편결제', 80000, '20181228')
INTO payment
values(227, 8, '1003', 'G1003', 0, 0, '간편결제', 150000, '20181229')
INTO payment
values(228, 9, '1001', 'G1004', 0, 0, '간편결제', 240000, '20181230')
INTO payment
values(229, 10, '1002', 'G1005', 10000, 5000, '간편결제', 530000, '20181231')
SELECT * FROM dual;


DROP TABLE event;

CREATE TABLE event(
event_cnt NUMBER DEFAULT 0 PRIMARY key,
event_NO varchar2(20),
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
INTO event(EVENT_cnt, event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3,e_price,discount) 
values(1, 'd1','오픈이벤트 20% 할인', 'fit01.jpg','20/12/31','fit02.jpg','fit03.jpg','fit04.jpg',150000,30000)
INTO event(EVENT_cnt, event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3,e_price,discount) 
values(2, 'd2','다 함께 힘내요 코로나시대 2만원 할인', 'fit05.jpg','20/12/31','fit06.jpg','fit07.jpg','fit08.jpg',150000,20000)
INTO event(EVENT_cnt,event_no, title, main_img, d_day, detail_img1, detail_img2, detail_img3,e_price,discount) 
values(3, 'd3','크리스마스 당일 5만원 할인', 'fit09.jpg','20/12/25','fit10.jpg','fit11.jpg','fit12.jpg',150000,50000)
SELECT * FROM dual;

UPDATE event SET MAIN_IMG ='event01.jpg'
, DETAIL_IMG1 ='event02.jpg'
, DETAIL_IMG2 = 'event03.jpg'
,DETAIL_IMG3 ='event04.jpg'
WHERE EVENT_NO = 'd1';

UPDATE event SET MAIN_IMG ='event05.jpg'
, DETAIL_IMG1 ='event06.jpg'
, DETAIL_IMG2 = 'event07.jpg'
,DETAIL_IMG3 ='event08.jpg'
WHERE EVENT_NO = 'd2';

UPDATE event SET TITLE ='굿바이 2020 5만원 할인', MAIN_IMG ='event09.jpg'
, DETAIL_IMG1 ='event10.jpg'
, DETAIL_IMG2 = 'event11.jpg'
,DETAIL_IMG3 ='fit12.jpg'
WHERE EVENT_NO = 'd3';

INSERT INTO event values(4, 'd4', '종료된 이벤트', 'fit01.jpg',sysdate,
'fit02.jpg','fit03.jpg','fit04.jpg',150000,0);

SELECT * FROM event order by event_no DESC;

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

INSERT INTO PAYMENT_LIST 
VALUES ('1', 1, '1001', '1234', '10000', '1000', 1, 10, '간편결제', '201220', 0);

CREATE TABLE uploadmainimg (
image varchar2 (999),
imgNo NUMBER,
content_1 varchar2 (999),
content_2 varchar2 (999)
);

INSERT INTO uploadmainimg (IMGNO, image, content_1, content_2)
VALUES (1, 'intro01.jpg',
'He who has health hope; and he who has hope has everything', 
'건강을 가진 자는 희망이 있는 자요, 희망이 있는 자는 모든것을 가진 자다.');
INSERT INTO uploadmainimg (IMGNO, image, content_1, content_2)
VALUES (2, 'intro02.jpg',
'Take care of your body. It''s the only place you have to live.', 
'너의 몸을 건강하게 잘 돌보라, 그것은 당신이 살아갈 수 있는 유일한 장소이다.');
INSERT INTO uploadmainimg (IMGNO, image, content_1, content_2)
VALUES (3, 'intro03.jpg',
'Winning and losing isn''t everything. Sometimes, the journey is just as important as the outcome.', 
'이기고 지는 것이 전부가 아니다. 때때로 그 여정은 결과만큼 중요하다.');

CREATE TABLE MainText (
mainNo NUMBER,
TITLE varchar2(999),
content varchar2(999)
);

insert into MAINTEXT (MAINNO, TITLE, CONTENT)
      values ('1','시설 방역','일 3회 내부시설 전체 방역 및 소독을 철저하게 진행하고 있습니다.');
insert into MAINTEXT (MAINNO, TITLE, CONTENT)
      values ('2','전면 예약제','안전하고 쾌적하게 이용하실 수 있도록 시간별 시설 이용인원 제한 및 전면 예약제를 실시하고 있습니다.');
insert into MAINTEXT (MAINNO, TITLE, CONTENT)
      values ('3','합리적인 비용','멤버쉽 가입시 Fitness Club 전 지점에서 이용 가능하며 <br>합리적인 균일가로 이용하실 수 있습니다.');
insert into MAINTEXT (MAINNO, TITLE, CONTENT)
      values ('4','방역지침 준수','감염병 예방을 위해 시설 출입시 체온 측정 및 출입명부 작성, 거리두기 유지로 방역 수칙을 철저하게 관리하고 있습니다.');
insert into MAINTEXT (MAINNO, TITLE, CONTENT)
      values ('5','전문적인 PT','국제 트레이너 자격증(FISAF)을 취득한 전문 트레이너로 구성되어 체계적인 맞춤 PT를 제공해드립니다.');
insert into MAINTEXT (MAINNO, TITLE, CONTENT)
      values ('6','최신 시설','최신식 운동 기구들을 다량 보유하고 있으며 샤워장과 사우나가 구비되어 있습니다.');
      
DROP TABLE TRAINER;

CREATE TABLE TRAINER (
	tr_no number PRIMARY KEY,
	lo_no varchar2(30),
	tr_name varchar2(20),
	ismanage NUMBER,
	content varchar2(900),
	star NUMBER,
	tr_pic varchar2(60),
	regdate timestamp
);

INSERT ALL
INTO TRAINER
VALUES (1, '1001', '김진욱', 1, 
'-머슬마니아 스포츠 급1위
-머슬마니아 스포츠모델1위
-어슬래틱피지크 180이상 1위
-니카코리아 180이상 1위', 0, 'gang_1.png', '201213')
INTO TRAINER
VALUES (2, '1001', '박혜지', 0, 
'- 생활스포츠지도사 2급
- 화성시 뷰티바디 챔피언쉽 1위
-화성시 뷰티바디 단체부문 1위​
-2016 파주시 보디빌딩 대회'
, 0, 'gang_2.png', '201211')
INTO TRAINER
VALUES (3, '1001', '한효주', 0, 
'-유니버셜바벨, SGT, 리버트, 
X-gun, 폼롤러, 스포츠마사지, 
스포츠테이핑, TABATA,
 짐볼 등 다수 자격증 보유', 0, 'gang_24.png','201211')
INTO TRAINER
VALUES (4, '1001', '소지섭', 0,
'-생활스포츠지도사 2급(보디빌딩)
-대한운동지도자 협회 수료
-메디컬트레이너 협회 수료
-RTS PRE LEVEL1 수료
', 0, 'gang_6.png','201213')
INTO TRAINER
VALUES (5, '1001', '권용석', 0, 
'-생활스포츠지도사 2급
세미나 이수 및 자격취득
-대한적십자협회(CPR) 교육이수
', 0, 'gang_7.png','201213')
INTO TRAINER
VALUES (6, '1001', '이현희', 0, 
'-인천 그린스포 월드 
-인천 스카이72 골프트레이닝
-바디트레인 P trainer
', 0, 'gang_3.png','201213')
INTO TRAINER
VALUES (7, '1001', '박민주', 0,
'-의정부시협회장배 모델 출전
-WBC 피트니스대회 모델 출전
-Wbff 스포츠모델 출전
', 0, 'gang_4.png','201213')
INTO TRAINER
VALUES (8, '1001', '길성민', 0,
'2005 미스터인천 헤비급 1위
2005 미스터유니버시티 1위
2008 미스터인천 헤비급 1위
', 0, 'gang_5.png','201213')
INTO TRAINER
VALUES (9, '1002', '이주호', 1,
'2004 춘계대학대회 2위
2011 머슬마니아헤비급 2위
2005 YMCA 헤비급 3위
2004 춘계보디빌딩대회 3위

', 0, 'gang_9.png','201213')
INTO TRAINER
VALUES (10, '1002', '김현미', 0,
'18년 피트니스스타 안산2위
17년 MR.강서협회장배3위
17년 한미피트니스클래식 3위
17년 전국생활체육대축전대표

', 0, 'gang_11.png','201213')
INTO TRAINER
VALUES (11, '1002', '구자혁', 0,
'한국체육대학교 대학원
스포츠지도사2급
MPS근막통증및교정
국제 해부학 수료
', 0, 'gang_8.png','201213')
INTO TRAINER
VALUES (12, '1002', '고은비', 0, 
'삼육대학교 체육학과
스포츠지도사2급
미국체력관리학회
Freetennis 3급
', 0, 'gang_10.png','201213')
INTO TRAINER
VALUES (13, '1002', '김현지', 0,
'·합기도 대회 최우수상
·태권도 태권체조 금상
·전국무예 대회 은메달
·군포시장기 단체전 1위
', 0, 'gang_12.png','201213')
INTO TRAINER
VALUES (14, '1002', '김나린', 0, 
'생활체육지도자자격증2급
베이스텀 수료
윤영도 근육학 연구소수료
EFR(응급처치)수료
', 0, 'gang_13.png','201213')
INTO TRAINER
VALUES (15, '1002', '김예지', 0, 
'- 스포 퍼스널트레이너이수
- STA COACH 교육수료
- 재활운동 교육수료
- 스포애니 서비스교육 이수
', 0, 'gang_14.png','201213')
INTO TRAINER
VALUES (16, '1002', '강혜진', 0,
'- 프로복싱4승 랭킹 1위
- 이아스피스 역삼 트레이너
- 분당 패밀리 스포츠센터 PT팀장
- 엠 에슬레틱스퀘어 필라테스

', 0, 'gang_15.png','201213')
INTO TRAINER
VALUES (17, '1003', '서진', 1,
'- 생활체육지도자 2급 
- sta coach 교육수료
- FISAF힙합펑크댄스지도자3급
- 대한민국무용경연대회
', 0, 'gang_16.png','201213')
INTO TRAINER
VALUES (18, '1003', '박슬기', 0, 
'- Personal TRainer(국내)
- Trigger point 교육과정 수료
- 스포츠마사지 교육과정 수료
- 체형관리사 자격증', 0, 'gang_17.png','201213')
INTO TRAINER
VALUES (19, '1003', '임보라', 0, 
'-BODY CEO 교육 수료
-스포츠 마사지 교육 수료
-생활체육 복싱 코치
- 스포츠마사지 교육과정 수료
', 0, 'gang_18.png','201213')
INTO TRAINER
VALUES (20, '1003', '강하늘', 0,
'- ACSM CPT 교육 수료
(미국 스포츠의학회 공인)
- 생활스포츠지도사 2급(보디빌딩)
- 운동처방사1급
', 0, 'gang_19.png','201213')
INTO TRAINER
VALUES (21, '1003', '신소은', 0,
'- 생활스포츠지도사 2급
- 체형관리사
- 대한다이어트협회 자격증
- 국제 퍼스널트레이너 1급
', 0, 'gang_20.png','201213')
INTO TRAINER
VALUES (22, '1003', '남궁수진', 0,
'스포츠지도사2급
미국체력관리학회
서울시장배 보디 1위
M.R강남 -80kg 보디1위
', 0, 'gang_21.png','201213')
INTO TRAINER
VALUES (23, '1003', '박시연', 0, 
'- 목동요가원 요가 수료
-미국 체력관리 학회
-서울시장배 보디 2위
- 아헹가요가지도자 수료', 0, 'gang_22.png','201213')
INTO TRAINER
VALUES (24, '1003', '권수지', 0, 
'- Zumba Instructor
- Zumba Gold instructor
-서울시장배 보디 2위
- Salsation Instructor', 0, 'gang_23.png','201213')
SELECT * FROM dual;

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1213,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'05','minjoo','박민주','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6543,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3213,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'05','hyeji','박혜지','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1234,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'05','yongseok','권용석','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5523,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'05','seongmin','길성민','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6623,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3214,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'05','jooho','이주호','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22145,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'05','kkachi','박민경','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22359,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'05','lion','박대출','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22312,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'05','silverstar','고은별','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (213521,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'05','silverrain','고은비','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (231321,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'05','baechu','배시현','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12358,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55643,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'05','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77667,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'05','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3424,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5131,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'07','minjoo','박민주','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1237,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21385,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','yongseok','권용석','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2316,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'07','seongmin','길성민','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (243745,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'07','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (123784,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'07','jooho','이주호','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (213,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'07','kkachi','박민경','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6245,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'07','goose','박치국','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2146,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'07','lion','박대출','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54540,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'07','silverstar','고은별','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2355,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','silverrain','고은비','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (678,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'07','litghting','고은별','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5743,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3554,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'07','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (14213,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12359,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'07','silverrain','조미영','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (32163,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','silverstar','이주연','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12443,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','kkachi','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (68565,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','배시현','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (221321,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','고은비','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21323,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'07','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22138,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'09','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'09','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8897,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'09','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (125765,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'09','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (987,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'09','yongseok','권용석','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (74,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'09','hyeji','박혜지','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554784,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'09','minjoo','박민주','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6576,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (664343,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (25213,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22355,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'09','baechu','배시현','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77454,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'09','silverrain','고은비','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3267,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'09','silverstar','고은별','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55654,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'09','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (14321,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22542,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43436,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43987,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'09','tamja','성탐자','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9765,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'09','silverrain','조미영','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6677,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'09','silverstar','이주연','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66767,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'11','kkachi','김경해','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88643,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','배시현','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (897653,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'11','juyeondal','고은비','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1143745,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'11','litghting','고은별','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (221367,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'11','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21467,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'11','silverstar','고은별','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2138,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'11','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21358,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'11','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21365,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'11','kkachi','박민경','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (231555,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'11','jooho','이주호','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1247,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'11','hyeonhee','이현희','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3247,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'11','seongmin','길성민','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (45213,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'11','yongseok','권용석','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (65231,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'11','hyeji','박혜지','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (446213,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67431,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'11','minjoo','박민주','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (897,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'11','tamja','성탐자','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (547887,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88762,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (99654,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'15','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (775314,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8896432,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43287,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (63243,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (42378,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'15','yongseok','권용석','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7754,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'15','hyeji','박혜지','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (74342,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'15','minjoo','박민주','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (435324,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22213,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67234,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (63543,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'15','baechu','배시현','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54218,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'15','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (523213,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'15','silverstar','고은별','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43631,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'15','kkachi','박민경','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (524213,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54219,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54217,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4653213,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','tamja','성탐자','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (32456,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','silverrain','조미영','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8974,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','silverstar','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (657,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','kkachi','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (675658,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','배시현','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (665765,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','고은비','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (665454,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'17','litghting','고은별','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7687,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'17','silverrain','고은비','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87769,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'17','silverstar','고은별','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9969,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'17','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87986,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'17','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88778,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'17','kkachi','박민경','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88779,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'17','jooho','이주호','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7771,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'17','hyeonhee','이현희','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (675347,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'17','seongmin','길성민','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8754534,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'17','yongseok','권용석','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (755454,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'17','hyeji','박혜지','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (668754,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','김경해','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8797432,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'17','minjoo','박민주','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6426243,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'17','tamja','성탐자','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5534254,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'17','hyeonhee','이현희','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (24366,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2264,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'19','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2246387,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'19','lion','박대출','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (664865,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'19','jooho','이주호','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (75454,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'19','hyeonhee','이현희','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3375,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'19','seongmin','길성민','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22564,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'19','yongseok','권용석','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7734554,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'19','hyeji','박혜지','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2254678,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'19','minjoo','박민주','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7734,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'19','litghting','조미영','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4457,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'19','juyeondal','이주연','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (656547,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54743524,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'19','baechu','배시현','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43635,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'19','silverrain','고은비','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (34175,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'19','silverstar','고은별','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (445745,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'19','kkachi','박민경','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (24375,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (123123,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'19','juyeondal','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11111,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'19','litghting','조미영','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22222,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'21','tamja','성탐자','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33333,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'21','silverrain','조미영','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (141414,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'21','silverstar','이주연','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1141414,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'21','kkachi','김경해','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22131221,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'21','haeppiness','배시현','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11123,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'21','juyeondal','고은비','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12545,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'21','litghting','고은별','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'21','silverrain','고은비','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43554,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'21','silverstar','고은별','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21346,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'21','lion','박대출','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554213,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'21','goose','박치국','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (990,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'21','kkachi','박민경','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9996,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'21','jooho','이주호','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5566666,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'21','hyeonhee','이현희','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6866,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'21','seongmin','길성민','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66577,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'21','yongseok','권용석','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77576,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'21','hyeji','박혜지','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (65567,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'21','haeppiness','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5345,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'21','minjoo','박민주','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3345,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'21','tamja','성탐자','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (76435,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (236547,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7445,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'05','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6452,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'05','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3646,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'05','jooho','이주호','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (334654,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66445,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'05','seongmin','길성민','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55347,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'05','yongseok','권용석','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44623,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'05','hyeji','박혜지','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (223246,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'05','minjoo','박민주','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3346,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'05','litghting','조미영','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7345,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'05','juyeondal','이주연','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33752,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6624324,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'05','baechu','배시현','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (879,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'05','silverrain','고은비','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (665564,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','silverstar','고은별','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7564,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','kkachi','박민경','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (745,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (665,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','이주연','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5454643,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'07','litghting','조미영','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55475,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (62454254,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'07','silverrain','조미영','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (75475,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'07','silverstar','이주연','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (664463,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'07','kkachi','김경해','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (643643,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','배시현','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (436345,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','고은비','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55354,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'07','litghting','고은별','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22535,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'07','silverrain','고은비','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4454355,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'07','silverstar','고은별','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54549,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44236,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'07','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (664357,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77999,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (886,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (645665,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (98989,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'07','yongseok','권용석','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9873,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'07','hyeji','박혜지','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6767,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7777,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'07','minjoo','박민주','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8888,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9999,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'09','hyeonhee','이현희','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6464,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11235,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'09','goose','박치국','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33215,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'09','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (321213,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'09','jooho','이주호','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1132,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'09','hyeonhee','이현희','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33123,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'09','seongmin','길성민','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11235,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'09','yongseok','권용석','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44365,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'09','hyeji','박혜지','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554643,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'09','minjoo','박민주','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (664364,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (663462,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1163,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (123112,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'09','baechu','배시현','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (52353,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'09','silverrain','고은비','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (443643,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'09','silverstar','고은별','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (547560,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'09','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (675451,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (45876,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (234,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2134,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'09','tamja','성탐자','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7465,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'11','silverrain','조미영','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (74584,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'11','silverstar','이주연','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8865,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'11','kkachi','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (123,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','배시현','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5155,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'11','juyeondal','고은비','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2213,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'11','litghting','고은별','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3129,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'11','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5199,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'11','silverstar','고은별','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (65759,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'11','lion','박대출','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12156,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'11','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12315,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'11','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3353,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'11','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66431,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'11','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (553,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'11','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554714,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'11','yongseok','권용석','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (23434,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'11','hyeji','박혜지','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (42343,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','김경해','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33434,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','minjoo','박민주','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (23123,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','tamja','성탐자','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33213,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3264,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54547,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'15','goose','박치국','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5478,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'15','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9987,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'15','jooho','이주호','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (75865,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6856,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','seongmin','길성민','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21515,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'15','yongseok','권용석','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (124843,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'15','hyeji','박혜지','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (24120,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'15','minjoo','박민주','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (14141,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12357,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7545,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (654,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'15','baechu','배시현','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (434357,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','silverrain','고은비','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (655334,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','silverstar','고은별','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (213213,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','kkachi','박민경','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2253,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21325,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (21436,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554324,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','tamja','성탐자','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (253634,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'15','silverrain','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54214,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'15','silverstar','이주연','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6358,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'15','kkachi','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7765,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','배시현','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67656,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'17','juyeondal','고은비','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55443,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'17','litghting','고은별','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7565324,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'17','silverrain','고은비','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5243,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'17','silverstar','고은별','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5425,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'17','lion','박대출','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (423,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'17','goose','박치국','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4657,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'17','kkachi','박민경','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (575,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'17','jooho','이주호','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67543,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'17','hyeonhee','이현희','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (557254,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'17','seongmin','길성민','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5443,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'17','yongseok','권용석','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4636,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','김경해','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6643,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'17','minjoo','박민주','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87987,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'17','tamja','성탐자','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6865,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'19','hyeonhee','이현희','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (78876,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88757,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'19','goose','박치국','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (768,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'19','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7768,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'19','jooho','이주호','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (667845,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'19','hyeonhee','이현희','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (445,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'19','seongmin','길성민','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (89669,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'19','yongseok','권용석','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (775,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'19','hyeji','박혜지','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (967,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'19','litghting','조미영','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1818,'1003','강서점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'19','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (118181,'1003','강서점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1117,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'19','baechu','배시현','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1818176,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'19','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1177,'1003','강서점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'19','silverstar','고은별','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7774,'1003','강서점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'19','kkachi','박민경','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8876,'1003','강서점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88563,'1003','강서점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'21','juyeondal','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11444,'1003','강서점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'21','litghting','조미영','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (61616,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'21','tamja','성탐자','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6612,'1003','강서점','PT','서진',to_date('20/12/25','RR/MM/DD'),'21','silverrain','조미영','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (645,'1003','강서점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'21','kkachi','김경해','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (756555,'1003','강서점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'21','haeppiness','배시현','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (75470,'1003','강서점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'21','juyeondal','고은비','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77575,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'21','litghting','고은별','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7547,'1003','강서점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'21','silverrain','고은비','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8870643,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'05','yongseok','권용석','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67865,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'05','seongmin','길성민','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554324,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7423,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'05','jooho','이주호','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (765454,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'05','kkachi','박민경','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3386,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'05','lion','박대출','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66385,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'05','silverstar','고은별','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77547754,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54656,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'15','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54354,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'15','yongseok','권용석','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4436432,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','hyeji','박혜지','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (224234,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','minjoo','박민주','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5544355,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55143,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (123151,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'15','baechu','배시현','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1112315,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'15','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (86533,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'05','baechu','배시현','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8638653,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88636865,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'05','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (37575,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (775282828,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7256,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'05','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43537,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'05','jooho','이주호','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6541123,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (97662,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'05','seongmin','길성민','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9973454,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'05','yongseok','권용석','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (545498,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'05','hyeji','박혜지','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (23,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'05','minjoo','박민주','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (447565,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'05','litghting','조미영','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5454,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (675487,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'05','silverrain','고은비','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7799,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'05','minjoo','박민주','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6979,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'05','hyeji','박혜지','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22135,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5536324,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6354,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (34126,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'07','hyeji','박혜지','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43246,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'07','yongseok','권용석','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44543,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'07','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44356,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'07','jooho','이주호','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (89799,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'07','kkachi','박민경','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8981,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'07','goose','박치국','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (1236,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','lion','박대출','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43643,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'07','silverstar','고은별','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (755,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','silverrain','고은비','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (667704,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','litghting','고은별','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (18182,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11165,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554643,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (113514,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'07','silverrain','조미영','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (235231,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'07','silverstar','이주연','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2315,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'07','kkachi','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66565,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','배시현','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5565,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','고은비','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (564745,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'07','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (545213,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'07','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (123463,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'07','yongseok','권용석','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (36543,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'07','hyeji','박혜지','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (365643,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (412433,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'07','minjoo','박민주','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11144,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12412,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','silverstar','고은별','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (664354,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','kkachi','박민경','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66575,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (65341,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','이주연','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (89789,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'07','litghting','조미영','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (877,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'07','tamja','성탐자','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (90922,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'07','silverrain','조미영','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (970,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'07','silverstar','이주연','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7700,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'07','kkachi','김경해','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (606,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','배시현','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3466385,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'07','juyeondal','고은비','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (774876,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'07','litghting','고은별','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8746432,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'07','silverrain','고은비','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87989,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'07','silverstar','고은별','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (708897,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'07','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (987897,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'07','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8787,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'07','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (667657,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87546,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'07','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7757,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'07','minjoo','박민주','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'09','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (780,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'09','tamja','성탐자','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8708,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'09','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87055,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'09','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7868078,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'09','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66989,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'09','yongseok','권용석','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (78098,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'09','hyeji','박혜지','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9845,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'09','minjoo','박민주','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (663543,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67987,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (70889,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87870,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'09','baechu','배시현','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87803,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'09','silverrain','고은비','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88701,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'09','silverstar','고은별','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (707,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'09','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (70,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (111,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7008,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'09','tamja','성탐자','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (808990,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'09','silverrain','조미영','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (908,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'09','silverstar','이주연','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8050,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'09','hyeonhee','이현희','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (132512,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (12311,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'09','goose','박치국','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55324,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'09','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4572,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'09','jooho','이주호','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4378,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'09','hyeonhee','이현희','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66589,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'09','seongmin','길성민','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (96997,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'09','yongseok','권용석','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9445,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'09','hyeji','박혜지','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (56856,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'09','minjoo','박민주','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (68574,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8864,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66754,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55685,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'09','baechu','배시현','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77547,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'09','silverrain','고은비','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (43324,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'09','silverstar','고은별','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (436,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'09','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5544422,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'09','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7347,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'09','juyeondal','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (745457,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'09','litghting','조미영','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5545775,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'09','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44547,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'11','silverrain','조미영','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (223568,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'11','silverstar','이주연','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (114214,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'11','kkachi','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (441153,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','배시현','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (465744,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'11','juyeondal','고은비','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (58676,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'11','litghting','고은별','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55757,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'11','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (557865,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'11','silverstar','고은별','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (64335586,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'11','lion','박대출','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (264324235,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'11','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (685,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'11','kkachi','박민경','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (886587,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'11','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8747,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'11','hyeonhee','이현희','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7786,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'11','seongmin','길성민','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (658685,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'11','yongseok','권용석','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (86546,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'11','hyeji','박혜지','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (115335,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','김경해','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3315264,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'11','litghting','고은별','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4436436,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'11','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (46364,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'11','silverstar','고은별','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7768678,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'11','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (996,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'11','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (798800,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'11','kkachi','박민경','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (997,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'11','jooho','이주호','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (808,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'11','hyeonhee','이현희','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (800,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'11','seongmin','길성민','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (78074,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'11','yongseok','권용석','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5050,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'11','hyeji','박혜지','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4040,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (40967,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'11','minjoo','박민주','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7845,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'11','tamja','성탐자','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (547,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'11','kkachi','김경해','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4412634,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'11','haeppiness','배시현','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (546523,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'11','juyeondal','고은비','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5445845,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (48468,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (773578,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'15','goose','박치국','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77682,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'15','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (457,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'15','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (887812,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'15','silverstar','고은별','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (808780,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'15','kkachi','박민경','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87807,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (665865,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87870087,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (60860,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'15','tamja','성탐자','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6780,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'15','silverrain','조미영','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8685,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'15','silverstar','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (780087,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'15','kkachi','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (796,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','배시현','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (90897,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','고은비','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88767,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (708870,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (780807,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','tamja','성탐자','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (708708,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'15','silverrain','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (787,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'15','silverstar','이주연','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87087,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'15','kkachi','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (78780,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'15','minjoo','박민주','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7780,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'15','tamja','성탐자','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (78078,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (668068,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8890,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'15','goose','박치국','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8906,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'15','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9980089,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'15','jooho','이주호','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6998,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'15','hyeonhee','이현희','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8890890,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'15','seongmin','길성민','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (98089,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'15','yongseok','권용석','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (99806,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'15','hyeji','박혜지','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (889096,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'15','minjoo','박민주','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (998890,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'15','litghting','조미영','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (98098,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (9900,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (90805,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'15','baechu','배시현','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (909,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'15','silverrain','고은비','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (870555008,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'15','silverstar','고은별','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (806888,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'15','kkachi','박민경','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8070555,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'15','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (80708750,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'17','litghting','고은별','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (87007805,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'17','tamja','성탐자','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8060,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'17','silverstar','고은별','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (608067,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'17','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (680,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'17','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8706,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'17','kkachi','박민경','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (600078,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'17','jooho','이주호','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5004006,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'17','hyeonhee','이현희','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6600065,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'17','seongmin','길성민','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66006,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'17','yongseok','권용석','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6060060,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'17','hyeji','박혜지','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77806797,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','김경해','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (89068,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'17','minjoo','박민주','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (889098,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'17','tamja','성탐자','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66586,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'17','hyeonhee','이현희','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8654,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (876965,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','배시현','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (768768,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'17','juyeondal','고은비','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (677,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'17','litghting','고은별','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6657965,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'17','silverrain','고은비','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (56657,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'17','silverstar','고은별','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554436,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'17','lion','박대출','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3467345,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'17','goose','박치국','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5443587,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'17','kkachi','박민경','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (7457457,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'17','jooho','이주호','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54432,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'17','hyeonhee','이현희','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4236,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'17','seongmin','길성민','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (223446,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'17','yongseok','권용석','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (276700,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'17','hyeji','박혜지','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'17','haeppiness','김경해','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (444,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'17','minjoo','박민주','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (73573,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'17','silverrain','고은비','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (54357,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'19','silverrain','고은비','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (45747,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'19','silverstar','고은별','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (77527,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'19','kkachi','박민경','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (27245,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (236743,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'19','juyeondal','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (34645,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'19','litghting','조미영','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (443254,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'19','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55247,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'19','lion','박대출','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2236,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'19','jooho','이주호','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6586545,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'19','hyeonhee','이현희','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4648,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'19','seongmin','길성민','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4436585,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'19','yongseok','권용석','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (438,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'19','hyeji','박혜지','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5368,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'19','minjoo','박민주','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (65658,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'19','hyeonhee','이현희','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5566585,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6579536,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'19','goose','박치국','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (55486556,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'19','lion','박대출','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (67635,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'19','jooho','이주호','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (56234,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'19','hyeonhee','이현희','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (543865,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'19','seongmin','길성민','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (554874509,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'19','yongseok','권용석','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (253945,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'19','hyeji','박혜지','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (549234,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'19','minjoo','박민주','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88764,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'19','litghting','조미영','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (457658,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'19','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88865,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (675432,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'19','baechu','배시현','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5496342,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'19','silverrain','고은비','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (44385,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'19','silverstar','고은별','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5543758,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'19','kkachi','박민경','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (34864,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2259745,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'19','litghting','조미영','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (325547,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'19','juyeondal','이주연','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3515686,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'19','haeppiness','김경해','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (33145456,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'19','baechu','배시현','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (57664,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'21','juyeondal','이주연','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4276824,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'21','tamja','성탐자','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2458345,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'21','tamja','성탐자','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (84828536,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'21','silverrain','조미영','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8854645,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'21','silverstar','이주연','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (234432,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'21','kkachi','김경해','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4584845,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'21','haeppiness','배시현','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (45848,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'21','juyeondal','고은비','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (84584,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'21','litghting','고은별','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (224785,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'21','silverrain','고은비','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (568,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'21','tamja','성탐자','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4357,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'21','silverrain','조미영','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5475,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'21','silverstar','이주연','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8665,'1001','강남점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'21','kkachi','김경해','1111','01028571088','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (141517,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'21','haeppiness','배시현','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (356643,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'21','juyeondal','고은비','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (76576,'1001','강남점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'21','litghting','고은별','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8568,'1001','강남점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'21','silverrain','고은비','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (556353,'1001','강남점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'21','silverstar','고은별','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (86567,'1001','강남점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'21','lion','박대출','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6546,'1001','강남점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'21','goose','박치국','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (884,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'21','kkachi','박민경','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (848456,'1001','강남점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'21','jooho','이주호','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (234237,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'21','hyeonhee','이현희','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6734,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'21','seongmin','길성민','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (743,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'21','yongseok','권용석','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6765,'1001','강남점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'21','hyeji','박혜지','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (4756,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'21','haeppiness','김경해','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (884546,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'21','minjoo','박민주','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8656,'1001','강남점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'21','litghting','조미영','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11124523,'1002','강동점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'05','yongseok','권용석','1111','01098991936','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (556,'1002','강동점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'05','seongmin','길성민','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (85,'1002','강동점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (668,'1002','강동점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'05','jooho','이주호','1111','01047996112','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8,'1002','강동점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'05','kkachi','박민경','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (887,'1002','강동점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'05','goose','박치국','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (776,'1002','강동점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'05','lion','박대출','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (66777,'1002','강동점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'05','silverstar','고은별','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (75,'1002','강동점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'05','silverrain','고은비','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (765,'1002','강동점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'05','baechu','배시현','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (973,'1002','강동점','PT','서진',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6385,'1002','강동점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'05','juyeondal','이주연','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (11465,'1002','강동점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'05','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (32547243,'1002','강동점','PT','강하늘',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (553243,'1002','강동점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01093894144','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5465,'1002','강동점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'05','goose','박치국','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (22435,'1002','강동점','PT','박시연',to_date('20/12/25','RR/MM/DD'),'05','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (563443,'1002','강동점','PT','권수지',to_date('20/12/25','RR/MM/DD'),'05','jooho','이주호','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6774,'1002','강동점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'05','hyeonhee','이현희','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (3485675,'1002','강동점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'05','seongmin','길성민','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8846645,'1002','강동점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'05','yongseok','권용석','1111','01051597799','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88767,'1002','강동점','PT','김현미',to_date('20/12/25','RR/MM/DD'),'05','hyeji','박혜지','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8597,'1002','강동점','PT','김현지',to_date('20/12/25','RR/MM/DD'),'05','minjoo','박민주','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (75597,'1002','강동점','PT','구자혁',to_date('20/12/25','RR/MM/DD'),'05','litghting','조미영','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (965,'1002','강동점','PT','김나린',to_date('20/12/25','RR/MM/DD'),'05','juyeondal','이주연','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (667547,'1002','강동점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'05','haeppiness','김경해','1111','01073968929','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6584,'1002','강동점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'05','baechu','배시현','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8653,'1001','강남점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'05','silverrain','고은비','1111','01077995159','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (653278,'1001','강남점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'05','lion','박대출','1111','01090499342','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (214,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'05','baechu','배시현','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5546,'1003','강서점','PT','한효주',to_date('20/12/25','RR/MM/DD'),'17','hyeji','박혜지','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (758,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'19','minjoo','박민주','1111','01027249951','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (623,'1003','강서점','PT','박슬기',to_date('20/12/25','RR/MM/DD'),'21','silverstar','이주연','1111','01026783599','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2131,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'05','goose','박치국','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (86565,'1003','강서점','PT','강혜진',to_date('20/12/25','RR/MM/DD'),'07','hyeji','박혜지','1111','01029463686','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (8965,'1003','강서점','PT','소지섭',to_date('20/12/25','RR/MM/DD'),'07','haeppiness','김경해','1111','01099890979','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (2235,'1003','강서점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'09','jooho','이주호','1111','01097792996','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (675475,'1001','강남점','PT','김예지',to_date('20/12/25','RR/MM/DD'),'05','goose','박치국','1111','01064489956','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (88636385,'1001','강남점','PT','남궁수진',to_date('20/12/25','RR/MM/DD'),'05','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (5675,'1001','강남점','PT','서진',to_date('20/12/25','RR/MM/DD'),'05','juyeondal','이주연','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (221532,'1001','강남점','PT','김진욱',to_date('20/12/25','RR/MM/DD'),'07','seongmin','길성민','1111','01069175991','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (6565,'1001','강남점','PT','임보라',to_date('20/12/25','RR/MM/DD'),'07','litghting','조미영','1111','01024592399','아무말 입력해주세요');

Insert into  RESERVATION (RE_NO,LO_NO,LO_NAME,TYPE,TR_NAME,RESDATE,RESTIME,USER_ID,USER_NAME,USER_PW,USER_TEL,CONTENT) values (199214,'1001','강남점','PT','신소은',to_date('20/12/25','RR/MM/DD'),'15','juyeondal','이주연','1111','01093894144','아무말 입력해주세요');

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