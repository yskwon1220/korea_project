<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>      
<!DOCTYPE html>

<html>
   <head>
      <title>강동소개</title>
     <meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" /> 
<link rel="shortcut icon" href="favicon.ico">
   <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" /> 
   <link rel="stylesheet" href="<c:url value="${path }/resource/css/main.css"/>" />
            <script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>

      
   </head>
   <body>
<%-- <jsp:include page="../../inc/headerV3.jsp" /> --%>
      <div id="page-wrapper">

         
         <!-- Main -->
            <div id="main-wrapper">
               <div class="container">
                  <div id="content">
                     
                     <!-- Content -->
                        
                           
                           <section id="banner">
            <div class="slideList">
                <div class="slideImg">
                    
                    <img src="http://www.fitness-fm.com/img/s4.jpg" style="width: 100%; height: 500px; display: inline-block;">
                </div>
                <div class="slideImg">
                    
                     <img src="http://www.fitness-fm.com/img/s3.jpg"  style="width: 100%; height: 500px; display: inline-block;">
                </div>
                <div class="slideImg">
                    
                     <img src="http://www.fitness-fm.com/img/s2.jpg"  style="width: 100%; height: 500px; display: inline-block;">
                </div>
            </div>
        </section>
     
        
    <div style="height: 300px"></div>

                  </div>
                  

                  
                  
               </div>
            </div>
     </div>
   

<%-- <jsp:include page="../../inc/footerV3.jsp" /> --%>
   

   <script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
   <script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>
   
   <script src="<c:url value="${path }/resource/js/slide.js"/>"></script>
   
   
   


   </body>
</html>