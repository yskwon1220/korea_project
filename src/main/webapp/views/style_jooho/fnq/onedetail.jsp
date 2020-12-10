<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<body>
<%-- 	<jsp:include page="../inc/headerV3.jsp" />
	<div id="main-wrapper "> --%>
		<div id="board">
			<div id="titleList">
				<div id="category">자주묻는 질문</div>
				<div id="titleName">
					<svg width="1em" height="1em" viewBox="0 0 16 16"
						class="bi bi-chat-right-dots-fill" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd"
							d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
			</svg>
					크리스마스 관련 공지입니다
				</div>
				<div class="titleDetail">운영자</div>
				<div class="titleDetail">2020-11-21</div>
				<hr>
				<div class="OutTextBox animate-box">
					<div>
						<div></div>
					</div>
				</div>
				<div class="bottomB">
				<button type="button" class="btn btn-sm btn-primary" id="btnList"
				onclick="location.href='03.one_list.jsp'">목록</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList"
				onclick="location.href='03.one_modify.jsp'">수정</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">삭제</button>
					
				</div>
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