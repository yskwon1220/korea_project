<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
<head>
<title>공지사항</title>

<link rel="stylesheet" href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>
<%-- 	<jsp:include page="../inc/headerV3.jsp" />
	<div id="main-wrapper "> --%>
		<div id="board">
			<div id="titleList">
				<div id="category">공지사항</div>
				<div id="titleName">
				<c:set var="sm" value="${data }"/>
					<svg width="1em" height="1em" viewBox="0 0 16 16"
						class="bi bi-chat-right-dots-fill" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd"
							d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
			</svg>
					${sm.title }
				</div>
				<div class="titleDetail">관리자</div>
				<div class="titleDetail"><fmt:formatDate value="${sm.regdate }"
											pattern="yy-MM-dd HH:mm" /></td></div>
				<hr>
				<div class="OutTextBox animate-box">
					<div>
						<div>${sm.contextBr}</div>
					</div>
				</div>
				<div class="bottomB">
					<a href="noticelist">목록으로</a>
				</div>
			</div>
		</div>
</body>
</html>