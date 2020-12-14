<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" type="text/css" href="${path }/resource/css/payment2.css"/>
 
</head>
<body>
<c:forEach items="${data }" var="mem" begin="0" end="0">
<h1>주문완료 </h1> 
<hr/>
<div class="top_div">
<h3>주문이 완료되었습니다.${pr.card_select }</h3>
<div class="info">

<div id ="info_get"><h4>구매 정보</h4>
<div class="getpep"><div>사용자</div> <div>${mem.name } / ${mem.tel }</div></div>
<!-- <div class="getpep"><div>받는주소</div> <div>05333/서울특별시 강동구 특별로 18길 10(천천천)아파트 302동 202호</div><a href="#">변경하기 ></a></div> -->
<div class="getpep"><div>구매 내용</div> <div>30 pass 이용권</div></div>
</div>
<div id = "info_pay"><h4>결제 정보</h4>
<div class="getpep"><div>주문금액</div> <div>${price }원</div></div>
<div class="getpep"><div>할인금액</div> <div>- ${discount }원</div></div>

<hr/>
<div class="getpep"><div>총 결제금액</div><div>농협은행(무통장입금)</div> <div>${price }원</div></div>
</div>
</div>
</div>
<div class="btn">
<input type="button" value="내역 확인하기" />
<input type="button" value="이용 예약하기" />
</div>
</c:forEach>
</body>
</html>