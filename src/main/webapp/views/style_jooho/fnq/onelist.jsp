<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>

<head>
<title>1대1 문의</title>
</head>
<link rel="stylesheet" href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>

		<div class="container">
			<div id="content">

				<!-- Content -->
				<article>
					<div class="header01">
					
					</div>
					<h2>1대1 문의</h2>
					<hr>

					<div class="table-responsive animate-box">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>글번호</th>
									<th>글제목</th>
									<th>작성일</th>
									<th>작성자</th>
									<th>처리상태</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${data }" var="sm">
							<tr>
								<th>${sm.one_no }</th>
								<td><a href="onedetail?board_no=${sm.board_no }">${sm.title }</a></td>
								<td><fmt:formatDate value="${sm.regdate }" pattern="yy-MM-dd HH:mm"/></td>
								<td>${vo.no }</td>
								<td>${vo.rep }</td>
							</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>




					<div class="pag">
						<ul class="pagination pagination-sm">
							<li class="disabled"><a href="#"> <span>«</span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"> <span>»</span>
							</a></li>
						</ul>
					</div>

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
				</article>

			</div>
		</div>

</body>
</html>