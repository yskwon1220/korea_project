<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h1 class="mt-4">공지사항 관리</h1>
<!-- <ol>
</ol>
<div class="row">
	<div class="col-xl-12">
		<div class="card mb-4">
			<div class="card-body">
				<form action="회원검색모듈.html">
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
		</div>
	</div>
</div> -->

<div style="height: 100px;"></div>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-bullhorn"></i> <a href="insert">등록 공지사항</a>

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
						<th>조회수</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data.voArr }" var="sm">
						<tr>
							<th>${sm.notice_no }</th>
							<td><a href="detail?notice_no=${sm.notice_no }">${sm.title }</a></td>
							<td>${sm.ymd }</td>
							<td>관리자</td>
							<td>${sm.cnt }</td>
							<td><a href="modify?notice_no=${sm.notice_no }"
								class="btn btn-info btn-primary btn-sm">수정</a> <a
								href="delete?notice_no=${sm.notice_no }"
								class="btn btn-info btn-danger btn-sm">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pag" align="center">
				<ul class="pagination" style="font-size: 30px">
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

