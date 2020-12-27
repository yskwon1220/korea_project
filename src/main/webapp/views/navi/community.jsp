<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FitNess Club</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="shortcut icon" href="favicon.ico">
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

<script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
</head>
<body>
   <jsp:include page="../inc/headerV3.jsp" /> 
   <div id="page-wrapper">


      <!-- Main -->

      <div id="fh5co-blog-section" class="fh5co-light-grey-section">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
               <h2>Community</h2>
               <p>원하는 항목을 클릭하세요 </p>
            </div>
         </div>
         <div class="row">
            <div class="col-md-3 col-sm-3 animate-box">
               <a href="<c:url value="/user_page_/review/reviewlist"/>" class="item-grid">
                  <div class="v-align">
                     <div class="testimony-slide active text-center">
                        <h3 class="title">이용후기</h3>
                        
                        <p>FitNess Club 회원님들의 실제 이용후기입니다.</p>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-md-3 col-sm-3 animate-box">
               <a href="/user_page_/notice/noticelist" class="item-grid">
                  <div class="v-align">
                     <div class="testimony-slide active text-center">
                        <h3 class="title">공지사항</h3>
                        
                        <p>FitNess Club 새로운 소식을 받아보실 수 있습니다.</p>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-md-3 col-sm-3 animate-box">
               <a href="/user_page_/qna/qnalist" class="item-grid">
                  <div class="v-align">
                     <div class="testimony-slide active text-center">
                        <h3 class="title">자주 묻는질문</h3>
                        
                        <p>이용 중 궁금한 점이 있으면 이곳을 확인하세요!</p>
                     </div>
                  </div>
               </a>
            </div>
            
              <c:choose>
                     <c:when test="${not empty sessionScope.user_id }">
                 
                  
            <div class="col-md-3 col-sm-3 animate-box">

               <a href="/user_page_/fnq/onelist" class="item-grid">
                  <div class="v-align">
                     <div class="testimony-slide active text-center">
                     
                        <h3 class="title">1대1 문의</h3>
                     
                        <p>해결되지 않는 문의사항은 이곳을 이용하세요!</p>
                     </div>
                  </div>
                     
                     </c:when>
                     
                     <c:otherwise>

                  
            <div class="col-md-3 col-sm-3 animate-box">

               <a href="/user_page_/fnq/onelistReg" class="item-grid">
                  <div class="v-align">
                     <div class="testimony-slide active text-center">
                     
                        <h3 class="title">1대1 문의</h3>
                     
                        <p>해결되지 않는 문의사항은 이곳을 이용하세요!</p>
                     </div>
                  </div>
                 
                     </c:otherwise>
                     
                     </c:choose>
               </a>
            </div>
            </div>
            </div>
            </div>
            </div>
    <jsp:include page="../inc/footerV3.jsp" /> 


   <script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

</body>
</html>