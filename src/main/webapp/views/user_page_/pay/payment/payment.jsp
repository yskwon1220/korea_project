<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript"></script>
<script type="text/javascript" src="<c:url value="${path }/resource/js/jquery-3.5.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="${path }/resource/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript">

var array = ['#use_price','#use_price2','#use_discount',
	'#use_coupon','#use_point','#get_point'];
	
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }

 function openWin(){

	 var price1 = $("#use_price").text();
	  $("input[name=origin_price]").val(price1);
	  var price2 = $("#use_discount").text();
	  $("input[name=basic_discount]").val(price2);
	  var price3 = $("#use_coupon").text();
	  $("input[name=coupon_price]").val(price3);
	  var price4 = $("#use_point").text();
	  $("input[name=point_price]").val(price4);
	  var price5 = $("#use_price2").text();
	  $("input[name=tot_price]").val(price5);
	  var coupon = $("input[name=radi]:checked").attr("id");
	  var cou_la = $("#li_"+coupon).attr("value");
	  $("input[name=coupon_no]").val(cou_la);
	  var tot = $("#use_price2").attr("value");
	  var dis = $("#use_price").attr("value");
	  $("input[name=discount_price]").val(parseInt(dis)-parseInt(tot));
	  var sv = $("#get_point").attr("value");
	  var my_point = $('#my_point').text();
		my_point= my_point.split("P");
	  var t_sa = parseInt(sv)+parseInt(my_point[0]);
	  $("input[name=save_point]").val(parseInt(t_sa));
	
	var payment_cate =$('#cate_btn').is(':checked');
	var payment_cate2 =$('#cate_btn2').is(':checked');
	var payment_cate3 =$('#cate_btn3').is(':checked');
	
	if(payment_cate){

		var card = $("input[name=card_main_num1]").val();
		$("input[name=card_main_num1]").val(card.substring(0,4));
		$("input[name=card_main_num4]").val(card.substring(12,16));
		
		var one_pay = $('input[name=one_pay_item]').is(':checked');
		if(one_pay){
			$('#one_pass').val('');
			$('.one_pay_popup').show();
			$('.dim').show();
		}
	/* 	else{
			window.open("http://localhost:81/user_page_/pay/payment/one_join","카드결제","width=800, height=700, location=no, toolbar=no,scrollbars=no, menubar=no, resizable=no")
			} */
	}
	if(payment_cate2){
		window.name="parentForm";
		win = window.open("http://localhost:81/user_page_/pay/payment/cardpay","카드결제","width=800, height=700, location=no, toolbar=no,scrollbars=no, menubar=no, resizable=no");
	
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
		}

 	if(payment_cate3){
 		 $("input[name=pay_way]").val("가상계좌");
 	 	
		BootPay.request({
		price: $(array[1]).attr("value"), 
		application_id: "5fd515762fa5c2002f03846b",
		name: '이용권 구매', 
		pg: 'easypay',
		method: 'vbank',
		show_agree_window: 0,
		items: [
			{
				item_name: goods,
				qty: 1,
				unique: '123',
				price: 1000,
				cat1: '30pass',
				cat2: '',
				cat3: '',
			}
		],
		user_info: {
			username:'이주호',
			email: 'tjrwn1003@gmail.com',
			addr: '',
			phone: '${data.get(0).user_tel}'
		},
		order_id: '고유order_id_1234', 
		params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
		
		account_expire_at: parseInt($('#today').val())+5 , 
		extra: {
			
		    start_at: $('#today').val(), 
			end_at: '2022-05-10', 
	        vbank_result: 1, 
	        quota: '0,2,3',
			theme: 'purple', 
			custom_background: '#00a086', 
			custom_font_color: '#ffffff'
		}
	}).error(function (data) {

		console.log(data);
	}).cancel(function (data) {

		console.log(data);
	}).ready(function (data) {
	
		console.log(data);
	}).confirm(function (data) {

		console.log(data);
		var enable = true; 
		if (enable) {
			BootPay.transactionConfirm(data);
			$("#frm").submit();
		} else {
			BootPay.removePaymentWindow(); 
		}
	}).close(function (data) {
		$("#frm").submit();
	    console.log(data);
	}).done(function (data) {
		$("#frm").submit();
		console.log(data);
	});

		}
	
	/* 	 if (typeof (popup) == 'undefined' || popup.closed) {
				alert('결제창이 종료되었습니다.');
				
			} else {
				setTimeout("chk_popup();", 1000);
			}  */
	} 

	function key(data){
		console.log(data);
		var intext = $("#one_pass").val();
		$("#one_pass").val(intext+data);
		}
	
	function keypad_all_del(){
		var intext = $("#one_pass").val('');
		}
	function keypad_del(){
		var intt = $("#one_pass").val();
		intt = intt.substr(0,intt-1);
		$("#one_pass").val(intt);
		}
		
		
$(document).ready(function() {
	  $("#sp").hide();

			$(".one_pay_popup .close2").on('click',function(){
				$(this).parent().hide();
				$(".dim").hide();
			});
		
		var first_tot = Number(${price})-Number(${discount});
		$(array[1]).text(currencyFormatter(first_tot)+"원");
		$(array[1]).attr("value",first_tot);
		
		//금액 3자리마다 , 표시
		for(var i =0;i<array.length;i++){
			var price = $(array[i]).text();
			price = currencyFormatter(price);
			$(array[i]).text(price);
			}
		//이메일@로 나눠 각각 입력
		var email1 = $("input[name=email1]").val();
		var email_array = email1.split("@");
		$("input[name=email1]").val(email_array[0]);
		$("input[name=email2]").val(email_array[1]);

		//쿠폰클릭시 
		$("input[name=bcop_in]").on('click',function(){
			$('.popup').show();
			$('.dim').show();
		});
		//쿠폰팝업 닫기
		$(".popup .close").on('click',function(){
			$(this).parent().hide();
			$(".dim").hide();
		});
		//쿠폰 적용버튼 클릭시
		$(".btn_type1").on('click',function(){
			
			var re_coupon = $(array[3]).attr("value");
			if(parseInt(re_coupon)>0){
	
				$(array[3]).attr("value",0);
				$(array[3]).text(0+"원");
				
				}
			var coupon = $('input[name="radi"]:checked').val();
			var price = $(array[1]).attr("value");
			var total = Number(price)-(Number(price)*(parseFloat(coupon)*0.01));
			var coupon_value=Number(price)*(parseFloat(coupon)*0.01);

			$(array[1]).attr("value",total);
			$(array[3]).attr("value",coupon_value);
			
			tot_result = currencyFormatter(total)+'원';
/* 			$(array[0]).text(tot_result); */
			$(array[1]).text(tot_result);
			$(array[3]).text(currencyFormatter(coupon_value)+'원');
			//적립 예정 변경
			reset_get_point();
			//적용한 쿠폰 정보 나타내기
			var id ="#li_"+$('input[name="radi"]:checked').attr("id");
			var content=$(id).text();
			$('input[name=scop_in]').val(content);
			
			$('.popup').hide();
			$(".dim").hide();

		
		});
		//포인트 사용 버튼 클릭시
		$("#point_btn").on('click',function(){
			var my_point = $('#my_point').text();
			my_point= my_point.split("P");
			var point = $('input[name=point]').val();
			
			if(Number(my_point[0])<Number(point)){
				alert("포인트가 부족합니다.");
			}
			else{
						
					var hold_point=(parseInt(my_point[0])-parseInt(point));
					var price= $(array[1]).attr("value");
					var tot_price=parseInt(price)-parseInt(point);
					$(array[1]).attr("value",tot_price);

					tot_price = currencyFormatter(tot_price)+'원';
					/* $(array[0]).text(tot_price); */
					$(array[1]).text(tot_price);
					$(array[4]).text(currencyFormatter(point)+'원');
					$('#my_point').text(hold_point+'P');
					
				}
			reset_get_point();
			
			});


		$(".one_pay_modal_btn").on('click',function(){
			var intext = $("#one_pass").val();
			if(intext==${data.get(0).payment_pass}){
				$("form").submit();
			}
		else{
			alert("비밀번호가 다릅니다.");
			}
			
			});

		

		reset_get_point();
		
	});
	
	function reset_get_point(){
		var pp = $(array[1]).attr("value")
		var get_point =  parseInt(parseInt(pp)*0.002);
		$(array[5]).text(get_point+'P');
		$(array[5]).attr("value",get_point);
		}
	
	 function currencyFormatter(amount){
	        return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	    };
	
		</script>
<meta charset="UTF-8">
<title>결제페이지</title>

<link rel="stylesheet" type="text/css" href="<c:url value="${path }/resource/css/payment.css"/>" />
<script src="<c:url value="${path }/resource/js/payment.js"/>"></script>
</head>
<body>

<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" /></c:set> 
<input type="hidden" id="payment_date" value="${today }"/>
<c:forEach var="mem" items="${data }" begin="0" end="0">

<form action="successpay" method="post" id="frm">
<input type="hidden" name="pay_way" value="간편결제">
<input type="hidden" name="origin_price" value="0">
<input type="hidden" name="tot_price" value="0">
<input type="hidden" name="coupon_price" value="0">
<input type="hidden" name="basic_discount" value="0">
<input type="hidden" name="point_price" value="0">
<input type="hidden" name="coupon_no" value="0">
<input type="hidden" name="discount_price" value="0">
<input type="number" id="sp" name="save_point" value=0>

	<div class="mainTitle" >이용권결제</div>

	<div class="right_box">
		<div class="mid_txt">최종 결제 금액</div>
		<hr class="hr2">
		<div class="t_price">
			이용권금액
			
		
			<div class="price" id="use_price" value="${price}">${price}원</div>
		</div>
		<div class="t_price">
			기본할인금액
			<div class="price" id="use_discount" value="${discount }" >${discount}원</div>
		</div>
		<div class="t_price">
			쿠폰할인금액
			<div class="price" id="use_coupon" value="0" >0원</div>
		</div>
		<div class="t_price">
			포인트 사용금액
			<div class="price"id="use_point" value="0">0원</div>
		</div>
		<hr class="hr2">
		<div class="t_price">
			결제 상품
			<input type="hidden" name="ticket" value="${ticket }">
			<input type="hidden" name="title" value="${title }">
			<div class="price" id="title" value="${title}">${title }</div>
		</div>
		<div class="t_price">
			총 결제 예정 금액
			<div class="price" id="use_price2" value="${price}">${price}원</div>
		</div>
		<div class="t_price">
			적립 예정 포인트
			<div class="price" id="get_point" value="0">0 P</div>
		</div>
	</div>
	<input type="button" value="결제하기" class="btn" onclick="openWin();" />

	<div class="secon_box">
		<div class="mid_txt">고객 정보</div>
		<hr />
		<div class="name_in">
			이름<input type="text" name="name" value="${mem.user_name }">
		</div>
		<div class="tel_in">
			연락처<input type="text" name="tel1" value="${fn:substring(mem.user_tel,0,3) }"> - <input type="text"
				name="tel2" value="${fn:substring(mem.user_tel,4,8) }"> - <input type="text" name="tel3"value="${fn:substring(mem.user_tel,9,13) }">
		</div>
		<div class="mail_in">
			이메일<input type="text" name="email1" value="${mem.user_email } ">@<input type="text"
				name="email2" value="${mem.user_email } ">
		</div>
	</div>

	<div class="secon_box">
		<div class="mid_txt">쿠폰할인</div>
		<hr id="hr" />
		<div class="bcop_in">
			쿠폰사용<input type="button" name="bcop_in" value="쿠폰적용">
		</div>
		<hr />
		<div class="scop_in">
			적용쿠폰<input type="text" name="scop_in" value="" readonly >
		
		</div>

	</div>


	<div class="secon_box">

		<div class="mid_txt">포인트</div>
		<hr />
		<div class="point_in">
			포인트<input type="button" value="포인트 사용" id="point_btn"><input type="text"
				name="point" value="0">
			<h4>보유포인트</h4> <h4 id="my_point">${mem.point }P</h4>
		</div>
	</div>




	<div class="secon_box">
		<div id="mid_txt2">결제방법선택</div>
		<hr />
		<div class="onecli_in">
		
		<div id="card_btn">
		<label id="tri">
		<input type="radio" checked="checked" onclick="javascript:doDisplay();" name="cp_item" id="cate_btn" value="신용카드결제">
		</label>
		</div>
		</div><p class="cate_text">간편한 원클릭 결제<p>

		<div id="onepay">
			<c:forEach items="${data }" var="card" varStatus="no">
			<c:set var="num" value="${no.index }"></c:set>
			<c:choose>
			<c:when test="${num!=0 && card.card_number == data.get(num-1).card_number}">
			</c:when>
			<c:otherwise>
			<div class="card">
			<input type="hidden" name ="card_main_num1" value="${card.card_number }">
			<input type="hidden" name ="card_main_num4" value="">
			<input type="hidden" name="card_select" value="${card.card_company }">
				<label class="box-radio-input">
				<input type="radio" name="one_pay_item" id="card_<c:out value="${no.index}" />"  value="카드1" checked="checked"/>
				<span>${card.card_company}</span>
				</label>
				<img id="card_img" src="${path }/resource/images/${card.card_company}.png"/>
				<p id="card_name">${card.user_name }</p>
			</div>
			</c:otherwise>
				</c:choose>
			</c:forEach>
				<div class="card">
				<label class="box-radio-input">
				<input type="radio" name="one_pay_item" id="card_add" value="카드2"/>
				<span>카드 추가</span>
				</label>
				</div>
		</div>

		<hr />
		<div class="onecli_in">
		
		<div id="card_btn2">
		<label id="tri2">
		<input type="radio" onclick="javascript:doDisplay2();" name="cp_item" id="cate_btn2" value="신용카드결제">
		</label>
		</div>
		</div>신용카드 결제

		<div id="basicpay">

			<div class="cardcheck">
				카드구분 <input type="radio" name="chk_info" value="개인카드"
					checked="checked">개인카드 <input type="radio" name="chk_info"
					value="법인카드">법인카드
			</div>

			<div class="cardcheck">
				카드선택 <select id="cardsel">
					<option value='선택'>선택해주세요</option>
					<option value='국민'>국민</option>
					<option value='비씨'>비씨</option>
					<option value='신한'>신한</option>
					<option value='현대'>현대</option>
					<option value='삼성'>삼성</option>
					<option value='롯데'>롯데</option>
					<option value='NH'>NH</option>
					<option value='하나'>하나</option>
					<option value='우리'>우리</option>
					<option value='수협'>수협</option>
					<option value='제주'>제주</option>
					<option value='카카오뱅크'>카카오뱅크</option>
				</select>
			</div>

			<div class="cardcheck">
				할부기간 <select id="cardsel2">
					<option value='일시불'>일시불</option>
					<option value='1개월'>1개월</option>
					<option value='2개월'>2개월</option>
					<option value='3개월'>3개월</option>
					<option value='4개월'>4개월</option>
					<option value='5개월'>5개월</option>
					<option value='6개월'>6개월</option>
					<option value='7개월'>7개월</option>
					<option value='8개월'>8개월</option>
					<option value='9개월'>9개월</option>
					<option value='10개월'>10개월</option>
					<option value='11개월'>11개월</option>
					<option value='12개월'>12개월</option>
				</select>
			</div>

		</div>

		<hr />

		<div class="onecli_in">
		
		<div id="card_btn3">
		<label id="tri3">
		<input type="radio" onclick="javascript:doDisplay3();" id="cate_btn3"  name="cp_item" value="신용카드결제">
		</label>
		</div>
		</div>가상계좌
		<div id="basicpay2">

			<div class="cardcheck">
			가상계좌를 통해 입금 가능합니다.
			</div>
			<div class="cardcheck">
				입금기한
				<div id="paydate">2020년 12월 31일 22시 44분까지</div>
			</div>

		</div>
	</div>

	</div>
	</form>
	</c:forEach>
	
	
	<div class="popup">
	<h2>쿠폰목록</h2>
	<table class= "type1">
	
			<tbody>
			<tr>
				<th>적용 가능한 쿠폰</th>
				<td>
					<ol>
					<c:forEach items="${data }" var="cc" varStatus="no">
					<li id="li_chk1_<c:out value="${no.index}"/>" value="${cc.coupon_no }"><input type="radio" name="radi" id="chk1_<c:out value="${no.index}" />" value="${cc.coupon_discount }"><label for="chk1_<c:out value="${no.index}"/>"  >${cc.coupon_no }</label>    ( ${cc.coupon_content } ) </li>
					</c:forEach>
					</ol>
				</td>
			</tr>
			</tbody>
	</table>
	<div class="txt_center">
			<a href="#a" class="btn_type1">쿠폰적용</a>
		</div>
	<a href="#a" class="close">닫기</a>
	</div>
	
	
	<!-- 원페이비번 모달 -->
	<div class="one_pay_popup">
	<h2>간편결제 비밀번호</h2>
	<table class= "type2" border="">
	
			<tbody>
			<tr>
				<td colspan="4">
				결제비밀번호 입력
				<input type="password" id="one_pass" pattern="[0-9]*" inputmode="numeric" maxlength="6" oninput="maxLengthCheck(this)">
				</td>
			</tr>
			<tr>
			<td><input type="button" name="keypad" value="5" onclick="key(5);"></td>
			<td><input type="button" name="keypad" value="9" onclick="key(9);"></td>
			<td><input type="button" name="keypad" value=""></td>
			<td><input type="button" name="keypad" value=""></td>
			</tr>
			<tr>
			<td><input type="button" name="keypad" value="3" onclick="key(3);"></td>
			<td><input type="button" name="keypad" value="1" onclick="key(1);"></td>
			<td><input type="button" name="keypad" value="6" onclick="key(6);"></td>
			<td><input type="button" name="keypad" value="2" onclick="key(2);"></td>
			</tr>
			<tr>
			<td><input type="button" name="keypad" value="8" onclick="key(8);"></td>
			<td><input type="button" name="keypad" value="7" onclick="key(7);"></td>
			<td><input type="button" name="keypad" value="4" onclick="key(4);"></td>
			<td><input type="button" name="keypad" value="0" onclick="key(0);"></td>
			</tr>
			<tr>
			<td colspan="2"><input type="button" name="keypad_all_del" value="전체 지우기" onclick="keypad_all_del();"></td>
			<td colspan="2"><input type="button" name="keypad_del" value="지우기" onclick="keypad_del();"></td>
			</tr>
			</tbody>
	</table>
	<div class="txt_center">
			<a href="#a" class="one_pay_modal_btn">확인</a>
		</div>
	<a href="#a" class="close2">닫기</a>
	</div>
	
	
	
	<div class="dim"></div>
	
	
</body>
</html>