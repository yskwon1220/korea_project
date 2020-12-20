<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="path" value="${pageContext.request.contextPath}" />
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
	
	 
	var price1 = opener.$("#use_price").text();
	  $("input[name=origin_price]").val(price1);
	  var price2 = opener.$("#use_discount").text();
	  $("input[name=basic_discount]").val(price2);
	  var price3 = opener.$("#use_coupon").text();
	  $("input[name=coupon_price]").val(price3);
	  var price4 = opener.$("#use_point").text();
	  $("input[name=point_price]").val(price4);
	  var price5 = opener.$("#use_price2").text();
	  $("input[name=tot_price]").val(price5);
	  var price6 = opener.$("#cardsel option:selected").text();
	  $("input[name=card_select]").val(price6);
	  var tic = opener.$("input[name=ticket]").val();
	  $("input[name=ticket]").val(tic);
	  var tit = opener.$("input[name=title]").val();
	  $("input[name=title]").val(tit);
	  
	  
	  var coupon = opener.$("input[name=radi]:checked").attr("id");
	  var cou_la = opener.$("#li_"+coupon).attr("value");
	  $("input[name=coupon_no]").val(cou_la);

	  
	  var today = opener.$("#payment_date").val();
	  $("input[name=payment_date]").val(today);
	  
	  var sv = opener.$("#get_point").attr("value");
	  $("input[name=save_point]").val(parseInt(sv));
	  
	  var tot = opener.$("#use_price2").attr("value");
	  var dis = opener.$("#use_price").attr("value");
	  $("input[name=discount_price]").val(parseInt(dis)-parseInt(tot));

	  
	var price = opener.$("#use_price2").text();
  $("#price_see").text(price);


  
	$("#next").on('click',function(){
		
		var validity =  $('input[name=validity]').val();
		
		var card_pass = $('input[name=card_pass]').val();

		if(validity==${data.get(0).validity}){
		  if(card_pass==${data.get(0).card_pass}){ 
			  
		  opener.name = "parentPage"; // 부모창의 이름 설정
	    document.myForm.target = "parentPage"; // 타켓을 부모창으로 설정
	    document.myForm.action = "successpay";
	    document.myForm.submit();
	  window.open('','_self').close();
	  
	  }else
			  alter("비밀번호 오류");  
		}else
			alter("유효기간 오류");


		});
	
	$("#cancle").on('click',function(){
		  window.open('','_self').close();
	});
  
});
  
</script>


</head>
<body>
<form method="post" name="myForm">

<input type="hidden" name="coupon_no" value="0">
<input type="hidden" name="origin_price" value="0">
<input type="hidden" name="tot_price" value="0">
<input type="hidden" name="card_select" value="0">
<input type="hidden" name="coupon_price" value="0">
<input type="hidden" name="basic_discount" value="0">
<input type="hidden" name="point_price" value="0">
<input type="hidden" name="payment_date" value="0">
<input type="hidden" name="pay_way" value="카드결제">
<input type="hidden" name="discount_price" value="0">
<input type="hidden" name="save_point" value="0">
<input type="hidden" name="ticket" value="">
<input type="hidden" name="title" value="">
<input type="hidden" name ="card_main_num1" value="${vo.card_num1 }">
<input type="hidden" name ="card_main_num2" value="${vo.card_num2 }">
<input type="hidden" name ="card_main_num3" value="${vo.card_num3 }">
<input type="hidden" name ="card_main_num4" value="${vo.card_num4 }">
<input type="hidden" name ="cvc" value="${vo.cvc }">
<input type="hidden" name ="regdate" value="${vo.regdate }">


<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="#">원클릭 간편결제</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">앱카드</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">일반결제</a>
  </li>
</ul>
<table class="table">

  <tbody>
    <tr>
      <td>카드번호</td>
      <td>${vo.card_num1 }-****-****-${vo.card_num4 }</td>
    </tr>
    <tr>
      <td>주민등록번호(법인,사업자번호)</td>
      <td><input type="number" maxlength="7" name="regi_num" oninput="maxLengthCheck(this)"/>(7자리)</td>
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
      <td>휴대폰번호</td>
      <td>
      <select>
      <option value='SKT'>SKT</option>
      <option value='KT'>KT</option>
      <option value='LG'>LG</option>
	  <option value='SKT 알뜰폰'>SKT 알뜰폰</option>
      <option value='KT 알뜰폰'>KT 알뜰폰</option>
      <option value='LG 알뜰폰'>LG 알뜰폰</option>
      </select>
      <input type="text" />-<input type="text"/>-<input type="text"/></td>
    </tr>
        <tr>
      <td>인증번호</td>
      <td><input type="text" /><input type="button" value="sms 인증번호 받기"/></td>
    </tr>
  </tbody>
</table>
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">이용약관 동의</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">개인정보 수집 및 이용동의</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">고유식별정보 처리 동의</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">ㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹ </div><input type="checkbox" name="xxx" value="yyy" />
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">ddsafdsahfkjddsafdsahfkj</div><input type="checkbox" name="xxx" value="yyy" />
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">ㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹ</div><input type="checkbox" name="xxx" value="yyy" />
</div>
 <button type="button" class="btn btn-outline-danger" id="cancle">취소</button>
      <button type="button" class="btn btn-outline-success" id="next">확인</button>
</form>
</body>
</html>