<%@page import="com.korea.health.user.model.payment.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="${path }/resource/css/cardpay.css"/>" />
<link rel="stylesheet"
	href="${path }/resource/bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script src="${path }/resource/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<c:url value="${path }/resource/js/jquery-3.5.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="${path }/resource/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript">
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      //object.maxLength : 매게변수 오브젝트의 maxlength 속성 값입니다.
      object.value = object.value.slice(0, object.maxLength);
    }    
  }
  
$(document).ready(function() {
 
	var price = opener.$("#use_price2").text();
  $("#price_see").text(price);


  
	$("#next").on('click',function(){
		var cardnum= $("input[name=card_num1]").val()+$("input[name=card_num2]").val()
		+$("input[name=card_num3]").val()+$("input[name=card_num4]").val()
		var cardcvc = $("input[name=cvc]").val()
		var cardsel = opener.$("#cardsel option:selected").text();
		//var datacom = ${data.get(0).card_company};
		//if(cardsel==${data.get(0).card_company}){
		if(cardnum == ${data.get(0).card_number}){
		if(cardcvc ==${data.get(0).cvc}){
			
			$("form").submit();
		}else
			alert("cvc 오류");
		}else
			alert("카드번호 오류");
	


		});
	
	$("#cancle").on('click',function(){
		  window.open('','_self').close();
	});
  
});
  
</script>

</head>
<body>

	<c:forEach begin="0" end="0" items="${data }" var="ci">
		<form action="cardpay2" method="post">
			<input type="hidden" name="ticket" value="${ticket }">
			<input type="hidden" name="title" value="${title }">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link" href="#">원클릭 간편결제</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">앱카드</a></li>
				<li class="nav-item"><a class="nav-link active" href="#">일반결제</a>
				</li>
			</ul>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">사용쇼핑몰</th>
						<th scope="col">(주)체력</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>금액</td>
						<td><div id="price_see" value=""></div></td>
					</tr>
					<tr>
						<td>날짜</td>
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<c:set var="today">
							<fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" />
						</c:set>
						<input type="hidden" name="regdate" value="${today }" />
						<td><c:out value="${today}" /></td>
					</tr>
					<tr>
						<td>카드번호</td>
						<td><input type="number" name="card_num1" maxlength="4"
							oninput="maxLengthCheck(this)" />- <input type="password"
							pattern="[0-9]*" inputmode="numeric" name="card_num2"
							maxlength="4" oninput="maxLengthCheck(this)" />- <input
							type="password" pattern="[0-9]*" inputmode="numeric"
							name="card_num3" maxlength="4" oninput="maxLengthCheck(this)" />-
							<input type="number" name="card_num4" maxlength="4"
							oninput="maxLengthCheck(this)" /></td>
					</tr>
					<tr>
						<td>CVC/4DBC</td>
						<td><input type="number" maxlength="3"
							oninput="maxLengthCheck(this)" name="cvc" /></td>
					</tr>
					<tr>
						<td>
							<button type="button" class="btn btn-outline-danger" id="cancle">취소</button>
							<button type="button" class="btn btn-outline-success" id="next">확인</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</c:forEach>
</body>
</html>