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

					<div class="table-responsive animate-box">
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
									<th>환불선택</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${data}" var="pl"  varStatus="no">
							<tr>
								<th>${no.index+1}</th>
								<td>${pl.p_no }</td>
								<td>${pl.p_title }</td>
								<td>${pl.origin_price }</td>
								<td>${pl.discount_price }원</td>
								<td>${pl.point_price }</td>
								<td>${pl.pay_way }</td>
								
								<td><input type="button" name="refund" id="${pl.payment_no }" value="환불" ></td>
							</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>




				<%-- <div class="pag">
					<ul class="pagination">
						<c:if test="${data.startPage>1 }">
							<a href="?nowPage=${startPage-1 }"><span>«</span></a>
						</c:if>
						<c:forEach begin="${data.startPage }" end="${data.endPage }"
							step="1" var="i">
							<c:choose>
								<c:when test="${data.nowPage==i }">[${i }]</c:when>
								<c:otherwise>
									<a href="?nowPage=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data.endPage<data.lastPage }">
							<a href="?nowPage=${data.endPage+1 }"> <span>»</span>
							</a>
						</c:if>
					</ul>
				</div> --%>

					<!-- 검색 폼 영역 -->
<!-- 					<li id='liSearchOption'>
						<div>
							<select id='selSearchOption'>
								<option value='A'>제목+내용</option>
								<option value='T'>제목</option>
								<option value='C'>내용</option>
							</select> <input id='txtKeyWord' /> <a href="">검색</a>
						</div>
					</li> -->
				</article>

			</div>
		</div>
</form>
</body>
</html>