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

<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>"/>
<link rel="stylesheet" href="<c:url value="/assets/css/notice.css"/>"/>
<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/as.css"/>" />




</head>
<body>
</head>
<body class="is-preload homepage">
   <div id="page-wrapper">
      <%-- 
   <jsp:include page="view/inc/header2.jsp" /> --%>
      <div id="mainWrapper">

         <ul>
            
            <h1>이용후기</h1>

            
            <div class="table-responsive">
               <table class="table table-condensed table-hover table-bordered table table-sm">
                  <thead>
                  <tr>
                     <th>글번호</th>
                     <th>글제목</th>
                     <th>작성일</th>
                     <th>작성자</th>
                     <th>조회수</th>
                     <th>별점</th>
                  </tr>
                  </thead>
                  <tr>
                     <th>1</th>
                     <td><a href="review_detail.jsp">이용후기입니다</a></td>
                     <td>2020-06-11</td>
                     <td>이XX</td>
                     <td>3</td>
                     <td>
                        <p id="star_grade">
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">☆</a>
                            <a href="#">☆</a>
                        </p>
                     </td>
                  </tr>
                  <tr>
                     <th>2</th>
                     <td><a href="review_detail.jsp">이용후기입니다</a></td>
                     <td>2020-06-11</td>
                     <td>길XX</td>
                     <td>3</td>
                     <td>
                        <p id="star_grade">
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">☆</a>
                            <a href="#">☆</a>
                        </p>
                     
                     </td>
                  </tr>
                  <tr>
                     <th>3</th>
                     <td><a href="review_detail.jsp">이용후기입니다</a></td>
                     <td>2020-06-11</td>
                     <td>박XX</td>
                     <td>3</td>
                     <td>
                        <p id="star_grade">
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">☆</a>
                        </p>
                     
                     </td>
                  </tr>
                  <tr>
                     <th>4</th>
                     <td><a href="review_detail.jsp">이용후기입니다</a></td>
                     <td>2020-06-11</td>
                     <td>권XX</td>
                     <td>3</td>
                     <td>
                        <p id="star_grade">
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">★</a>
                            <a href="#">☆</a>
                            <a href="#">☆</a>
                        </p>
                     
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
               </div>
            </li>

         </ul>
      </div>
   </div>


   <%--    <jsp:include page="view/inc/footer.jsp" /> --%>

   <!-- Scripts -->
   <script src="<c:url value="view/assets/js/jquery.min.js"/>"></script>
   <script src="<c:url value="view/assets/js/jquery.dropotron.min.js"/>"></script>
   <script src="<c:url value="view/assets/js/browser.min.js"/>"></script>
   <script src="<c:url value="view/assets/js/breakpoints.min.js"/>"></script>
   <script src="<c:url value="view/assets/js/util.js"/>"></script>
   <script src="<c:url value="view/assets/js/main.js"/>"></script>
   <script src="<c:url value="view/assets/js/star.js"/>"></script>
</body>
</html>