<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      
<!DOCTYPE html>

<html>
   <head>
      <title>회원권</title>
      <meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 
<link rel="shortcut icon" href="favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" /> 
	<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

      
   </head>
   <body>
<jsp:include page="../inc/headerV3.jsp" />
      <div id="page-wrapper">

   
    <h3 class="msg_p3">회원권 신청</h3>
    <p class="msg_p3">언제 어디서 누구나 편리하고 부담없이 피트니스! 피트니스 회원권은 동일한 브랜드내에서 전 지점 이용이 가능합니다.</p>
   
    <div class=" msg_p3">이벤트 상품구매는 안내데스크에 문의하세요.</div>
    <table class="table_03">
        <tr>
            <th class="vip">회원권 선택</th>
            <td>
                    <div class="prdo_sel_box">
                  <span>[피트니스]*1개월 <br>( 1 Month )</span>
                  <strong>80,000</strong>
                  <span>&nbsp;</span>
               </div>
                                                                                             <div class="prdo_sel_box" onclick="select_no('tes0004')">
                  <span>[피트니스]*3개월 <br>( 3 Month )</span>
                  <strong>90,000</strong>
                  <span>&nbsp;</span>
               </div>
                                                                                             <div class="prdo_sel_box" onclick="select_no('test0006')">
                  <span>[피트니스]*6개월 <br>( 6 Month )</span>
                  <strong>150,000</strong>
                  <span>&nbsp;</span>
               </div>
                                                                                             <div class="prdo_sel_box" onclick="select_no('test00008')">
                  <span>[피트니스]*1년 <br>( 12 Month )</span>
                  <strong>240,000</strong>
                  <span>&nbsp;</span>
               </div>
                                                                                             <div class="prdo_sel_box" onclick="go_order('tttereffd')">
                  <span>[피트니스] 프레스티지 <br>( 20 Month )</span>
                  <strong>545,500</strong>
                  <span>(운동복,라커,1일2회입장 포함)</span>
               </div>
                                               
             
            </td>
        </tr>
    </table>
    

   
    
   
   <div>
        <table class="table_03">
            <tr>
                <th class= "vip">운동복 선택</th>
                <td>

                    <div class="prdo_sel_box2"> &nbsp; 운동복 사용</div>
                    <div class="prdo_sel_box2"> &nbsp; 미사용</div>
                    
                    <div> *  운동복사용료 =  월 10,000원 x 사용개월수 (부가세별도)</div>
                    
                </td>
            </tr>
        </table>
    </div>
   
    <div>
        <table class="table_03">
            <tr>
                <th class="vip">락커 예약 </th>
                <td>

                    <div class="prdo_sel_box3"> &nbsp; 락커 예약</div>
                    <div class="prdo_sel_box3"> &nbsp; 예약 안함</div>

                    
                    <div>
                        * 락커 결제는 안내데스크에서 진행됩니다.<br>
                        *  라커이용료 =  월 10,000원 x 사용개월수 (부가세별도)
                    </div>
                </td>
            </tr>
            
        </table>
        </div>
      <input type="submit" value="구매하기" class="btn_buy">
      
     </div>


<jsp:include page="../inc/footerV3.jsp" />
	

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>

   </body>
</html>