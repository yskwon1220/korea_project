<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>      
<!DOCTYPE html>

<html>
   <head>
      <title>회원권</title>
      <meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 

	<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" /> 
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/main.css"/>" />
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
            <script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>

      
   </head>
   <style>
   		.prdo_sel_box.clicked {
   			border: 1px solid #bb2205;
    		background: #ec524b;
    		color: #fff;
   		}
   
   </style>
   <body>
<jsp:include page="../inc/headerV3.jsp" />
      <div id="page-wrapper">
    <h2 class="msg_p2">회원권 신청</h2>
    <p class="msg_p3">스페셜 피트니스 회원권은 동일한 브랜드내에서 전 지점 이용이 가능합니다.</p>
   
    <div class=" msg_p3">회원권 선택</div>
    <table class="table_03">
        <tr>
            <td>
               <div class="prdo_sel_box">
                  <span>[피트니스]*1개월 <br>( 1 Month )</span>
                  <strong>80,000</strong>
                  <span>&nbsp;</span>
               </div>
			   <div class="prdo_sel_box" >
                  <span>[피트니스]*3개월 <br>( 3 Month )</span>
                  <strong>90,000</strong>
                  <span>&nbsp;</span>
               </div>
               <div class="prdo_sel_box" >
                  <span>[피트니스]*6개월 <br>( 6 Month )</span>
                  <strong>150,000</strong>
                  <span>&nbsp;</span>
               </div>
			   <div class="prdo_sel_box" >
                  <span>[피트니스]*1년 <br>( 12 Month )</span>
                  <strong>240,000</strong>
                  <span>&nbsp;</span>
               </div>
			   <div class="prdo_sel_box" >
                  <span>[피트니스] 프레스티지 <br>( 20 Month )</span>
                  <strong>545,500</strong>
                  <span>&nbsp;</span>
               </div>
            </td>
        </tr>
    </table>
    
      <input type="submit" value="구매하기" class="btn_buy" id="payBtn">
      		<a href="<c:url value="user_page_/pay/payment/payment"/>"></a>
      
     </div>

<jsp:include page="../inc/footerV3.jsp" />

	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>
	<script>
		// 회원권
		__ticketNO = 0;
		
		// 가격
		__price = 0;
		
		$(document).ready(function(){
			
		});
		
		
		// 회원권 클릭 시
		$('.prdo_sel_box').on('click',function() {
			$('.prdo_sel_box').removeClass('clicked');
			$(this).addClass('clicked');
			
			__ticketNO = $('.prdo_sel_box').index(this) + 1;
			if( __ticketNO == 1 ){
				__price = 80000; 
			}
			if( __ticketNO == 2 ){
				__price = 90000; 
			}
			if( __ticketNO == 3 ){
				__price = 150000; 
			}
			if( __ticketNO == 4 ){
				__price = 240000; 
			}
			if( __ticketNO == 5 ){
				__price = 545500; 
			}
			
		});
		
		// 구매하기 클릭 시
		$('#payBtn').on('click',function() {
			if( __ticketNO == 0 ){
				alert("회원권을 선택해주세요!!!");
				return ;
			}
			
			var newForm = $('<form></form>');
			newForm.attr("name","newForm"); 
			newForm.attr("method","get"); 
			newForm.attr("action","/user_page_/pay/payment/payment"); 
			newForm.attr("target","_blank");		// _self
			
			newForm.append($('<input/>', {type: 'hidden', name: 'ticket', value: __ticketNO }));
			newForm.append($('<input/>', {type: 'hidden', name: 'price', value: __price }));

			newForm.appendTo('body');
			
			newForm.submit();
			
			
		});
		
	</script>
	

   </body>
</html>