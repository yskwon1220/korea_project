<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<c:url value="${path }/resource/css/cardpay.css"/>"/>
  <link rel="stylesheet" href="${path }/resource/bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script src="${path }/resource/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<c:url value="${path }/resource/js/jquery-3.5.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="${path }/resource/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript">
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      //object.maxLength : 매게변수 오브젝트의 maxlength 속성 값입니다.
      object.value = object.value.slice(0, object.maxLength);
    }    
  }
  
$(document).ready(function() {

	/*  var form= {
	price:$(array[1]).text(),
	card_select: $("#cardsel option:selected").text(),
	coupon_price: $(array[3]).text(),
	basic_price: $(array[2]).text(),
	point_price: $(array[4]).text(),
	origin_price:$(array[0]).text() 
	}

$.ajax({
url:"successpay",
type:"POST",
data:form,
success:function(){
	console.log("성공");
	},
error: function(){
alert("카드결제 데이터 전송 에러");
	}
}); */

$("#next").on('click',function(){
	
	opener.name = "parentPage"; // 부모창의 이름 설정
    document.myForm.target = "parentPage"; // 타켓을 부모창으로 설정
    document.myForm.action = "payment";
    document.myForm.submit();
 	window.open('','_self').close();


	});




	$("#cancle").on('click',function(){
		  window.open('','_self').close();
	});



	
});


</head>



<body>

<form  method="post" >
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="#">간편결제 등록</a>
  </li>
</ul>
<table class="table">
  <thead>
  </thead>
  <tbody>
    <tr>
      <td>카드번호</td>
      <td><input type="number" name="card_num1" maxlength="4" oninput="maxLengthCheck(this)"/>-
      <input type="password" pattern="[0-9]*" inputmode="numeric" name="card_num2" maxlength="4" oninput="maxLengthCheck(this)"/>-
      <input type="password" pattern="[0-9]*" inputmode="numeric" name="card_num3" maxlength="4" oninput="maxLengthCheck(this)"/>-
      <input type="number" name="card_num4" maxlength="4" oninput="maxLengthCheck(this)"/></td>
    </tr>
    <tr>
      <td>CVC/4DBC</td>
      <td><input type="number" maxlength="3" oninput="maxLengthCheck(this)" name="cvc"/></td>
    </tr>
    <tr>
      <td>유효기간</td>
      <td><input type="number" maxlength="4"  placeholder="MMYY" name="validity" oninput="maxLengthCheck(this)"/>월/원
    </tr>
    <tr>
      <td>CVC/4DBC</td>
      <td>***</td>
    </tr>
    <tr>
      <td>카드비밀번호(앞 2자리)</td>
      <td><input type="number" name="card_pass" maxlength="2" oninput="maxLengthCheck(this)"/>**</td>
    </tr>
    
    
    <tr>
      <td>
      <button type="button" class="btn btn-outline-danger" id = "cancle">취소</button>
      <button type="button" class="btn btn-outline-success" id="next">확인</button>
	</td>
    </tr>
  </tbody>
</table>
</form>

</body>
</html>