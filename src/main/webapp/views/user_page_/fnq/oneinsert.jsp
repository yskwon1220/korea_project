<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<head>
<title>1대1 문의</title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<div id="main-wrapper">
	<div class="container">
		<div id="content">
			<% 
			session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			%>

			<!-- Content -->
			<article>
				<h2>1대1 문의</h2>

				<form action="oneinsertReg" method="post"
					enctype="multipart/form-data">

					<input type="hidden" name="user_id"
						value="<%=session.getAttribute("user_id")%>">
					<div class="mb-3">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="title" id="title"
							placeholder="제목을 입력해 주세요">

					</div>
					<div class="mb-3">
						<label for="content">내용</label>

						<textarea class="form-control" rows="5" name="content"
							id="content" placeholder="내용을 입력해 주세요"></textarea>
					</div>
					<div>
						<hr>
					</div>
					<div>
						<input type="submit" value="글쓰기" /> |  <a href="onelist">목록으로</a>
					</div>
				</form>
			</article>
		</div>
	</div>

</div>

</body>
</html>