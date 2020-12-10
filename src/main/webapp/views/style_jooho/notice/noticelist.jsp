<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>

<title>공지사항</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">


function hidestatus(){

	$(document).ready(function() {
		// 새로고침 버튼
		$("#reloadBtn").click(function() {
			location.reload();
		});
		// 게시글에 대한 tr 이벤트 처리
		$(".data").click(function() {
			var no = $(this).find("td:first").text();
			location = "noticedetail?notice_no=" + no // 글번호를 전달한다.
					+ "&page=${cri.page}" // 페이지 전달.
/* 					+ "&perPageNum=${cri.perPageNum}" // 한 페이지에 몇 개를 출력할지 결정.
					+ "&searchType=${cri.searchType}" // 서치 타입을 결정
					+ "&keyword=${cri.keyword}"; // 키워드 설정 */
		});
		// 표시하는 글 수를 바꾸면 이벤트 처리를 해서 다시 리스트를 불러온다.
		$("#perPageNum").change(function() {
			// 		alert("select change!");
			location = "noticelist?" + "page=1" // 페이지 전달한다.
/* 					+ "&perPageNum=" + $("#perPageNum").val() // 페이지 당 글수 전달
					+ "&searchType=${cri.searchType}" // 서치 타입을 결정
					+ "&keyword=${cri.keyword}"; // 키워드 설정	 */
		});
	});
</script>
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/notice.css"/>" />

<script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>


</head>
<body>
	<%-- 	<jsp:include page="../inc/headerV3.jsp" />
	<div id="main-wrapper"> --%>
	<div class="container">
		<div id="content">

			<!-- Content -->
			<article>

				<div class="header01">
					<select name="perPageNum" id="perPageNum">
						<option ${cri.perPageNum == 10?"selected='selected'":"" }>10</option>
					</select>
				</div>
				<h2>공지사항</h2>
				<hr>
				<%-- 						<div style="">
							<jsp:include page="../user_page/notice_list.jsp" />
						</div> --%>

				<div class="table-responsive animate-box">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>글번호</th>
								<th>글제목</th>
								<th>작성일</th>
								<th>작성자</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${data }" var="sm">
								<tr>
									<th>${sm.notice_no }</th>
									<td><a href="noticedetail?notice_no=${sm.notice_no }">${sm.title }</a></td>
									<td><fmt:formatDate value="${ary.regdate }"
											pattern="yy-MM-dd HH:mm" /></td>
									<td>${sm.no }</td>
									<td>${sm.cnt }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>



				<div class="pag">
					<ul class="pagination pagination-sm">
						<c:if test="${cri.prev }">
							<li><a
								href="noticelist?page=${cri.startPage-1 }&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}">
									<i class="glyphicon glyphicon-step-backward"></i>
							</a></li>
						</c:if>
						<c:forEach begin="${cri.startPage }" end="${cri.endPage }"
							var="idx">
							<li ${cri.page==idx?"class='active'":"" }><a
								href="noticelist?page=${idx }&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx }</a></li>
						</c:forEach>
						<c:if test="${cri.next }">
							<li><a
								href="noticelist?page=${cri.endPage+1 }&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}">
									<i class="glyphicon glyphicon-step-forward"></i>
							</a></li>
						</c:if>
					</ul>
				</div>

				<!-- 검색 폼 영역 -->
				<li id='liSearchOption'>
					<div>
						<select id='selSearchOption'>
							<option value="t"
								${cri.searchType == "t"?"selected='selected'":"" }>제목</option>

							<option value="c"
								${cri.searchType == "c"?"selected='selected'":"" }>내용</option>
							<option value="tc"
								${cri.searchType == "tc"?"selected='selected'":"" }>제목+내용</option>
						</select> <input id='txtKeyWord' placeholder="검색어를 입력하세요." name="keyword"
							value="${cri.keyword }" /> <button type="submit" class="btn btn-default">

				<i class="glyphicon glyphicon-search">검색</i>

			</button>
					</div>
				</li>
			</article>

		</div>
	</div>
	<%-- 	</div>


	<jsp:include page="../inc/footerV3.jsp" /> --%>

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>