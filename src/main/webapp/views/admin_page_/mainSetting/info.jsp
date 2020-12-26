<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h1 class="mt-4">이미지 업로드 관리</h1>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-bullhorn"></i> <a href="insert">이미지 등록</a>	
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>번호</th>
						<th>이미지</th>
						<th>문구1</th>
						<th>문구2</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data }" var="sm">
						<tr>
							<th>${sm.imgNo }</th>
							<td><a href="detail?imgNo=${sm.imgNo }">${sm.image }</a></td>
							<td>${sm.content_1 }</td>
							<td>${sm.content_2 }</td>
							<td><a href="modify?imgNo=${sm.imgNo }"
								class="btn btn-info btn-primary btn-sm">수정</a> <a
								href="delete?imgNo=${sm.imgNo }" 
								class="btn btn-info btn-danger btn-sm">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</div>

	