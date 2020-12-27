<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<title>위치소개</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />

<link
   href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
   rel="stylesheet">

<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/V3icomoon.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3style.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/main.css"/>" />
<script
   src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>

</head>
<body>
   
   <div id="page-wrapper">


      <!-- Main -->
      <div id="main-wrapper">
         <div class="container">
            <div id="content">
            
            
            
             <p class="loca">스페셜피트니스 위치</p>
            
               <table>
                  
                  
                  <c:forEach items="${data }" var="vo" varStatus="no">
                  <tr>
                     <td>스페셜 피트니스</td>
                     <td>${vo.lo_tel }</td>
                     <td>
                        ${vo.lo_addr }
                     </td>
                     
                     <td> <a href="<c:url value="${vo.content }"/>"class="_3Ru_R btn btn-primary" role="button"> 상세보기</a></td>
                     <td>
                          <c:choose>
                                 <c:when test="${not empty sessionScope.user_id }">
                     
                                    <a href="<c:url value="locationlist"/>"class="_3Ru_R btn btn-primary " role="button"> 예약</a>
                  
                     
                     </c:when>
                     
                     <c:otherwise>
                  
                        <a href="<c:url value="findReg"/>"class="_3Ru_R btn btn-primary" role="button"> 예약</a>
                    </td>
                     </c:otherwise>
                     
                     </c:choose>
                        
                  
                     
                  </tr>
               </c:forEach>

                  
               </table>
         <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
</div>
</div>
</div>

   <script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/V3jquery.easing.1.3.js"/>"></script>
   <script src="<c:url value="${path }/resource/V3bootstrap.min.js"/>"></script>
   <script
      src="<c:url value="${path }/resource/V3jquery.waypoints.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/V3owl.carousel.min.js"/>"></script>
   <script
      src="<c:url value="${path }/resource/V3jquery.flexslider-min.js"/>"></script>
   <script src="<c:url value="${path }/resource/V3main.js"/>"></script>

</body>
</html>