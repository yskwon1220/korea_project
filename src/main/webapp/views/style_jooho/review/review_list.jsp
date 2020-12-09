<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
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
	<link rel="stylesheet" href="<c:url value="/assets/css/as.css"/>" />
	
            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>"/>
<link rel="stylesheet" href="<c:url value="/assets/css/notice.css"/>"/>
<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/as.css"/>" />




</head>
<body>

<body class="is-preload homepage">
 <%-- <jsp:include page="inc/headerV3.jsp" /> --%>
   <div id="page-wrapper">
     
      <!-- Main -->
      <div id="main-wrapper">
         <div class="container">
            <div id="content">

               <!-- Content -->
               <article>

                  
                  <div style="">

         <ul>
            
            <h1 class="review">이용후기</h1>

            
            <div class="table-responsive">
               <table class="table table-condensed table-hover table-bordered table table-sm">
                  <thead>
                  <tr>
                     <th>글번호</th>
                     <th>작성자</th>
                     <th>내용</th>
                     <th>작성일</th>
                     <th>조회수</th>
                     <th>별점</th>
                  </tr>
                  </thead>
                  
                  <c:forEach items="${data }" var="vo" varStatus="no">
	<tr>
		<td>${start+no.index }</td>
		<td>${vo.id }</td>
		<td>
			
				
				<a href="Detail?no=${vo.no }">
				${vo.title }
				</a>
		</td>
		
		<td><fmt:formatDate value="${vo.regdate }" pattern="yy-MM-dd HH:mm"/></td>
		<td>${vo.cnt }</td>
		<td>${vo.rate }</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="6" align="center">
			<c:if test="${startPage>1 }">
				<a href="?nowPage=${startPage-1 }"> < </a>
			</c:if>
			<c:forEach begin="${startPage }" end="${endPage}" step="1" var="i">
				<c:choose>
					<c:when test="${nowPage==i }">[${i }]</c:when>
					<c:otherwise>
						<a href="?nowPage=${i }">${i }</a>
					</c:otherwise>
				</c:choose>		
			</c:forEach>
			<c:if test="${endPage<lastPage }">
				<a href="?nowPage=${endPage+1 }"> > </a>
			</c:if>
		</td>
	</tr>
	
                  
               </table>
            </div>
            <!-- 게시판 페이징 영역 -->

            <ul class="pagination">
               <!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
               <!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
               <li class="disabled"><a href="#"> <span>«</span>
               </a></li>
               <!-- li태그의 클래스에 active를 넣으면 색이 반전되고 클릭도 되지 않는다. -->
               <!-- active의 의미는 현재 페이지의 의미이다. -->
               
               <li class="active"><a href="#">1</a></li>
               
               <li><a href="#">2</a></li>
               <li><a href="#">3</a></li>
               <li><a href="#">4</a></li>
               <li><a href="#">5</a></li>
               <li><a href="#"> <span>»</span>
               </a></li>
            </ul>

            <!-- 검색 폼 영역 -->
            <li id='liSearchOption'>
               <div>
                  <select id='selSearchOption'>
                     <option value='A'>제목+내용</option>
                     <option value='T'>제목</option>
                     <option value='C'>내용</option>
                  </select> <input id='txtKeyWord' /> <a href="">검색</a>
                  <div class="btn-box">
	              		<div class="btn btn-submit2"><a href="<c:url value="/view/review_insert.jsp"/>">글쓰기</a></div>
	               </div >
               </div>
              
            </li>
			
         </ul>
      </div>
   </div>
      </div>
               </article>

            </div>
         </div>
      </div>
    </div>

 <%--  <jsp:include page="inc/footerV3.jsp" />
	 --%>

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>