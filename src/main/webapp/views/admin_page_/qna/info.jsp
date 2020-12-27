<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h1 class="mt-4">자주묻는 질문 관리</h1>


<div style="height: 100px;"></div>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-bullhorn"></i> <a href="insert">등록 자주묻는 질문</a>

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
							<th>${sm.qna_no }</th>
							<td><a href="detail?qna_no=${sm.qna_no }">${sm.title }</a></td>
							<td>${sm.ymd }</td>
							<td>관리자</td>
							<td>${sm.cnt }</td>
							<td><a href="modify?qna_no=${sm.qna_no }"
								class="btn btn-info btn-primary btn-sm">수정</a> <a
								href="delete?qna_no=${sm.qna_no }"
								class="btn btn-info btn-danger btn-sm">삭제</a></td>
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

