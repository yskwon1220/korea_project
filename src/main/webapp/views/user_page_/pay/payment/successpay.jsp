<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value="${path }/resource/css/payment2.css"/>" />
<script src="${path }/resource/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<c:url value="${path }/resource/js/jquery-3.5.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="${path }/resource/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript">
$("#payment_check").on('click',function(){
	location.href("../../../user_page_/style_minjoo/myPage");
	});

$("#use_booking").on('click',function(){
	location.href("../../location/locationlist");
	});
$(document).ready(function() {

	
	
});


 </script>
</head>
<body>
<c:forEach items="${data }" var="mem" begin="0" end="0">
<h1>주문완료 </h1> 
<hr/>
<div class="top_div">
<h3>주문이 완료되었습니다.</h3>
<div class="info">

<div id ="info_get"><h4>구매 정보</h4>
<div class="getpep"><div>사용자</div> <div>${mem.user_name } / 0${mem.user_tel }</div></div>

<div class="getpep"><div>구매 내용</div> <div>${vo2.title}</div></div>
</div>
<div id = "info_pay"><h4>결제 정보</h4>
<div class="getpep"><div>주문금액</div> <div>${vo2.origin_price }</div></div>
<div class="getpep"><div>기본할인금액</div> <div>- ${vo2.basic_discount }</div></div>
<div class="getpep"><div>쿠폰할인금액</div> <div>- ${vo2.coupon_price }</div></div>
<div class="getpep"><div>포인트할인금액</div> <div>- ${vo2.point_price }</div></div>


<hr/>
<div class="getpep"><div>총 결제금액</div><div>${vo2.pay_way } (${vo2.card_select })</div> <div>${vo2.tot_price }</div></div>
<div class="getpep"><div>카드번호</div><div>${vo2.card_main_num1 }-****-****-${vo2.card_main_num4 }</div>
</div>
</div>
</div>
<div class="btn">
<input type="button" value="내역 확인하기" id="payment_check" onClick="javascript:location.href='../../usermember/myPage'"/>
<input type="button" value="이용 예약하기" id="use_booking" onClick="javascript:location.href='../../location/locationlist'"/>
</div>
</c:forEach>
</body>
</html>