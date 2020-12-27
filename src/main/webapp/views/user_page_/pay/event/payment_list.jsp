<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>

<head>


<title>FitNess Club</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- <link rel="shortcut icon" href="favicon.ico"> -->
<c:set var="path" value="${pageContext.request.contextPath}"/>


<link
   href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
   rel="stylesheet">

<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" />

<link rel="stylesheet" href="<c:url value="${path}/resource/css/notice.css"/>" />


<script type="text/javascript">
$(document).ready(function() {
	
$('input[name=refund]').on('click',function(){
    var id_check = $(this).attr("id");
    $('input[name=sel_no]').val(id_check);
    console.log(id_check);
    $("#frm").submit();
});

});
</script>


</head>
<body>

	<form action="payment_list" method="post" id="frm">
		<input type="hidden" name = "sel_no" value="">
		<div class="container">
			<div id="content">

				<!-- Content -->
				<article>
					<div class="header01">
					
					</div>
					<h2>결제내역</h2>
					<hr>

					<div class="table-responsive animate-box" style="margin-bottom: 200px;">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>순서</th>
									<th>상품 코드</th>
									<th>상품 이름</th>
									<th>금액</th>
									<th>할인액</th>
									<th>사용 포인트</th>
									<th>결제 방법</th>
									<!--  <th>환불선택</th>-->
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${data != null}">
										<c:forEach items="${data}" var="pl"  varStatus="no">
											<tr>
												<th>${no.index+1}</th>
												<td>${pl.p_no }</td>
												<td>${pl.p_title }</td>
												<td>${pl.origin_price }</td>
												<td>${pl.discount_price }원</td>
												<td>${pl.point_price }</td>
												<td>${pl.pay_way }</td>
											<!--	<td><input type="button" name="refund" id="${pl.payment_no }" value="환불" ></td>-->
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr class = "text-lg-center">
											<th colspan="8">결제 내역이 없습니다.</th>
										</tr>
									</c:otherwise>
								</c:choose>	
							</tbody>
						</table>
					</div>
				</article>
			</div>
		</div>
</form>
</body>
</html>