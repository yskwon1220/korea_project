<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<title>회원권</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3style.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/main.css"/>" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script
	src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>


</head>
<style>
.prdo_sel_box.clicked {
	border: 1px solid #bb2205;
	background: #ec524b;
	color: #fff;
}
</style>
<body>

	<div id="page-wrapper">
		<c:choose>
                     <c:when test="${not empty sessionScope.user_id }">
                     
                        <h2 class="msg_p2">회원권 신청</h2>
                  
                     
                     </c:when>
                     
                     <c:otherwise>

                        <h2 class="msg_p2">회원권 안내</h2>
                 
                     </c:otherwise>
                     
           </c:choose>

		
    	<p class="msg_p3">스페셜 피트니스 회원권은 동일한 브랜드내에서 전 지점 이용이 가능합니다.</p>
   
    	<div class=" msg_p3">회원권 선택</div>
    <table class="table_03">
			<tr>
				<td>
					<c:forEach items="${data }" var="vo" varStatus="no"> 
						<div class="prdo_sel_box">
								<span> ${vo.goods_name } <br></span>
								</span> <strong> ${vo.goods_price }</strong> <span>&nbsp;</span>
						</div>
				 	</c:forEach>
				</td>

			</tr>
		</table>
		<c:if test="${sessionScope.user_id != null}"> 
			<input type="submit" value="구매하기" class="btn_buy" id="payBtn">
			<a href="<c:url value="user_page_/pay/payment/payment"/>"></a>
		</c:if>
		

	</div>

	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>
	<script>
		// 회원권
		__ticketNO = 0;

		// 가격
		__price = 0;

		$(document).ready(function() {

		});

		// 회원권 클릭 시
		$('.prdo_sel_box').on('click', function() {
			$('.prdo_sel_box').removeClass('clicked');
			$(this).addClass('clicked');
			
			__ticketNO = 'G100' + ($('.prdo_sel_box').index(this) + 1);
			
			if (__ticketNO == '${data[0].goods_no}') {
				__price = ${data[0].goods_price};
			}
			if (__ticketNO == '${data[1].goods_no}') {
				__price = ${data[1].goods_price};
			}
			if (__ticketNO == '${data[2].goods_no}') {
			__price = ${data[2].goods_price};
			}
			if (__ticketNO == '${data[3].goods_no}') {
				__price = ${data[3].goods_price};
			}
			if (__ticketNO == '${data[4].goods_no}') {
				__price = ${data[4].goods_price};
			}

		});

		// 구매하기 클릭 시
		$('#payBtn').on('click', function() {
			if (__ticketNO == 0) {
				alert("회원권을 선택해주세요!!!");
				return;
			}

			var newForm = $('<form></form>');
			newForm.attr("name", "newForm");
			newForm.attr("method", "get");
			newForm.attr("action", "/user_page_/pay/payment/payment");
			newForm.attr("target", "_blank"); // _self

			newForm.append($('<input/>', {
				type : 'hidden',
				name : 'ticket',
				value : __ticketNO
			}));
			newForm.append($('<input/>', {
				type : 'hidden',
				name : 'price',
				value : __price
			}));

			newForm.appendTo('body');

			newForm.submit();

		});
	</script>


</body>
</html>