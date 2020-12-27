<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h1 class="mt-4">1대1 문의</h1>
<div style="height: 100px;"></div>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-bullhorn"></i> 1대1 문의사항

	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>글 번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
						<th>처리상태</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data.voArr }" var="sm">
						<tr>
							<th>${sm.board_no }</th>
							<td><a href="detail?board_no=${sm.board_no }">${sm.title }</a></td>
							<td>${sm.ymd }</td>
							<td>${sm.user_id }</td>
							<td>${sm.rep }</td>
							<td><a href="delete?board_no=${sm.board_no }"
								class="btn btn-info btn-danger btn-sm">삭제</a> <a
								href="reply?board_no=${sm.board_no }"
								class="btn btn-info btn-primary btn-sm">답변</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pag" align="center" style="font-size: 30px">
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
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- <div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-table mr-1"></i> <a href="">공지사항 상세</a>
	</div>
	공지사항 상세
	<div class="card-body">
		<form action="회원정보수정모듈.html">
			<div class="form-group col-xl-4" style="display: inline-block">
				<label for="search">검색 기준</label> <select class="form-control"
					id="search">
					<option>이름</option>
					<option>아이디</option>
					<option>닉네임</option>
				</select>
			</div>
			<div class="form-group col-xl-4" style="display: inline-block">
				<label for="txt1">검색 명</label> <input type="text"
					class="form-control" id="txt1">
			</div>
			<div class="form-group col-l-2" style="display: inline-block">
				<input type="submit" class="form-control" id="submit1" value="검색">
			</div>
		</form>
	</div>
</div> -->

