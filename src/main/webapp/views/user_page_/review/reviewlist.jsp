<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>

	<link rel="stylesheet" href="<c:url value="${path}/resource/css/notice.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/main.css"/>" />
</head>
<body>

<body class="is-preload homepage">
<%--  <jsp:include page="../../inc/headerV3.jsp" /> --%>
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
                     <th>제목</th>
                     <th>작성일</th>
                     <th>조회수</th>
                     <th>별점</th>
                  </tr>
                  </thead>
                  
                  <c:forEach items="${data.voArr }" var="vo" varStatus="no">
	<tr>
		<td>${vo.review_no}</td>
		<td>${vo.pid }</td>
		<td>
			
				
				<a href="review_detail?review_no=${vo.review_no }">
				${vo.title }
				</a>
		</td>
		
		<td><fmt:formatDate value="${vo.regdate }" pattern="yy-MM-dd HH:mm"/></td>
		<td>${vo.cnt }</td>
		<td>${vo.star }</td>
	</tr>
	</c:forEach>

                  
               </table>
            </div>
            <!-- 게시판 페이징 영역 -->

            <ul class="pagination">
               <c:if test="${data.startPage>1 }">
							<a href="?nowPage=${startPage-1 }"><span>«</span></a>
						</c:if>
						<c:forEach begin="${data.startPage }" end="${data.endPage }"
							step="1" var="i">
							<c:choose>
								<c:when test="${data.nowPage==i }">[${i }]</c:when>
								<c:otherwise>
									<a href="?nowPage=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data.endPage<data.lastPage }">
							<a href="?nowPage=${data.endPage+1 }"> <span>»</span>
							</a>
						</c:if>
               </a></li>
            </ul>

            <!-- 검색 폼 영역 -->
            <li id='liSearchOption'>
               <div>
                  <select id='selSearchOption'>
                     <!-- <option value='A'>제목+내용</option> -->
                     <option value='T'>제목</option>
                    <!--  <option value='C'>내용</option> -->
                  </select> <input id='txtKeyWord' /> <a href="review">검색</a>
                  <div class="btn-box">
	              		<div class="btn btn-submit2"><a href="reviewinsert"/>글쓰기</a></div>
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

 <%--  <jsp:include page="../../inc/footerV3.jsp" /> --%>
	

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>