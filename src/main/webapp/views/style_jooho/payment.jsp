<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

	function doDisplay() {
		var con = document.getElementById("onepay");
		var con2 = document.getElementById("basicpay");
		var con3 = document.getElementById("basicpay2");
		var tri = document.getElementById("tri");
		var tri2 = document.getElementById("tri2");
		var tri3 = document.getElementById("tri3");
		var card_btn= document.getElementById("card_btn");
		var card_btn2= document.getElementById("card_btn2");
		var card_btn3= document.getElementById("card_btn3");
		
		if (con.style.display == 'none') {
			con.style.display = 'block';
			con2.style.display = 'none';
			con3.style.display = 'none';
			card_btn.style.background='#BC9C6A';
			tri.style.borderTop= '16px solid white'	
			card_btn2.style.background='#000000';
			tri2.style.borderTop= '16px solid gray'
				card_btn3.style.background='#000000';
			tri3.style.borderTop= '16px solid gray'
		

		} else {
			con.style.display = 'none';

		}
	}

	function doDisplay2() {
		var con = document.getElementById("onepay");
		var con2 = document.getElementById("basicpay");
		var con3 = document.getElementById("basicpay2");
		var tri = document.getElementById("tri");
		var tri2 = document.getElementById("tri2");
		var tri3 = document.getElementById("tri3");
		var card_btn= document.getElementById("card_btn");
		var card_btn2= document.getElementById("card_btn2");
		var card_btn3= document.getElementById("card_btn3");
		
		if (con2.style.display == 'none') {
			con.style.display = 'none';
			con2.style.display = 'block';
			con3.style.display = 'none';
			card_btn.style.background='#000000';
			tri.style.borderTop= '16px solid gray'	
			card_btn2.style.background='#BC9C6A';
			tri2.style.borderTop= '16px solid white'
				card_btn3.style.background='#000000';
			tri3.style.borderTop= '16px solid gray'

		} else {
			con2.style.display = 'none';

		}
	}
	function doDisplay3() {
		var con = document.getElementById("onepay");
		var con2 = document.getElementById("basicpay");
		var con3 = document.getElementById("basicpay2");
		var tri = document.getElementById("tri");
		var tri2 = document.getElementById("tri2");
		var tri3 = document.getElementById("tri3");
		var card_btn= document.getElementById("card_btn");
		var card_btn2= document.getElementById("card_btn2");
		var card_btn3= document.getElementById("card_btn3");
		
		if (con3.style.display == 'none') {
			con.style.display = 'none';
			con2.style.display = 'none'
			con3.style.display = 'block'
	
			card_btn.style.background='#000000';
			tri.style.borderTop= '16px solid gray'	
			card_btn2.style.background='#000000';
			tri2.style.borderTop= '16px solid gray'
				card_btn3.style.background='#BC9C6A';
			tri3.style.borderTop= '16px solid white'

		} else {
			con3.style.display = 'none';

		}

	}
	function openWin(){
		window.open("http://localhost:8088/team_proj/user_page/style_jooho/cardpay.jsp","카드결제","width=800, height=700, toolbar=no,scrollbars=no, menubar=no, resizable=yes")
	}
	
</script>

<meta charset="UTF-8">
<title>결제페이지</title>

<link rel="stylesheet" type="text/css" href="css\payment.css" />

</head>
<body>
<form action="PaymentReg">
	<div class="mainTitle">강의결제</div>

	<div class="right_box">
		<div class="mid_txt">최종 결제 금액</div>
		<hr class="hr2">
		<div class="t_price">
			강의금액
			<div class="price">0원</div>
		</div>
		<div class="t_price">
			기본할인금액
			<div class="price">0원</div>
		</div>
		<div class="t_price">
			쿠폰할인금액
			<div class="price">0원</div>
		</div>
		<div class="t_price">
			포인트 사용금액
			<div class="price">0원</div>
		</div>
		<hr class="hr2">
		<div class="t_price">
			총 결제 예정 금액
			<div class="price">0원</div>
		</div>
		<div class="t_price">
			적립 예정 포인트
			<div class="price">0 P</div>
		</div>
	</div>
	<input type="button" value="결제하기" class="btn" onclick="openWin();" />

	<div class="secon_box">
		<div class="mid_txt">고객 정보</div>
		<hr />
		<div class="name_in">
			이름<input type="text" name="name">
		</div>
		<div class="tel_in">
			연락처<input type="text" name="tel"> - <input type="text"
				name="tel2"> - <input type="text" name="tel3">
		</div>
		<div class="mail_in">
			이메일<input type="text" name="email">@<input type="text"
				name="email">
		</div>
	</div>

	<div class="secon_box">
		<div class="mid_txt">쿠폰할인</div>
		<hr id="hr" />
		<div class="bcop_in">
			일반쿠폰<input type="button" value="쿠폰적용">
		</div>
		<hr />
		<div class="scop_in">
			쿠폰할인<input type="button" value="쿠폰사용">
			<p>보유한 특별쿠폰으로 중복할인 할 수 있습니다.</p>
		</div>

	</div>


	<div class="secon_box">

		<div class="mid_txt">포인트</div>
		<hr />
		<div class="point_in">
			포인트<input type="button" value="모두사용"><input type="text"
				name="point" value="0">
			<p>보유포인트 0 p</p>
		</div>
	</div>




	<div class="secon_box">
		<div id="mid_txt2">결제방법선택</div>
		<hr />
		<div class="onecli_in">
			<input type="button" id="card_btn" />
			<div id="tri">
				<a href="javascript:doDisplay();">&nbsp</a>
			</div>
			간편한 원클릭 결제
		</div>

		<div id="onepay">
			<div class="card">
				<div>카드 추가</div>
			</div>
		</div>

		<hr />
		<div class="onecli_in">
			<input type="button" id="card_btn2" />
			<div id="tri2">
				<a href="javascript:doDisplay2();">&nbsp</a>
			</div>
			신용카드 결제
		</div>

		<div id="basicpay">

			<div class="cardcheck">
				카드구분 <input type="radio" name="chk_info" value="개인카드"
					checked="checked">개인카드 <input type="radio" name="chk_info"
					value="법인카드">법인카드
			</div>

			<div class="cardcheck">
				카드선택 <select name="cardsel">
					<option value=''>선택해주세요</option>
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
				할부기간 <select name="cardsel">
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
			<input type="button" id="card_btn3" />
			<div id="tri3">
				<a href="javascript:doDisplay3();">&nbsp</a>
			</div>
			무통장 입금
		</div>
		<div id="basicpay2">

			<div class="cardcheck">
				입금은행 <select name="cardsel">
					<option value=''>선택해주세요</option>
					<option value='국민'>국민은행</option>
					<option value='비씨'>농협은행</option>
					<option value='신한'>신한은행</option>
					<option value='기업'>기업은행</option>
					<option value='부산'>부산은행</option>
					<option value='씨티'>씨티은행</option>
					<option value='하나'>하나은행</option>
					<option value='우리'>우리은행</option>
					<option value='수협'>수협은행</option>
					<option value='제주'>제주은행</option>
					<option value='카카오뱅크'>카카오뱅크</option>
				</select>
			</div>
			<div class="cardcheck">
				입금기한
				<div id="paydate">2020년 12월 31일 22시 44분까지</div>
			</div>

		</div>
	</div>

	</div>
	</form>
</body>
</html>