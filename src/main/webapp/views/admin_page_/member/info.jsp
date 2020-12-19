<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h1 class="mt-4">사용자 관리</h1>
<ol>
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
						<input type="submit" class="form-control  btn btn-info btn-sm"
							id="submit1" value="검색">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-users"></i> <a href="">회원 목록</a>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>회원번호</th>
						<th>회원 아이디</th>
						<!--  <th>회원 닉네임</th> -->
						<th>회원 이름</th>
						<th>가입일</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data.userSet }" var="data">
						<tr>
							<td class="align-middle"><a
								href="/admin_page_/member/detail?user_no=${data.user_no}">${data.user_no}</a></td>
							<td class="align-middle"><a
								href="/admin_page_/member/detail?user_no=${data.user_no}">${data.user_id}</a></td>
							<td class="align-middle"><a
								href="/admin_page_/member/detail?user_no=${data.user_no}">${data.user_name }</a></td>
							<td class="align-middle">${data.regDate }</td>
							<td class="align-middle">${data.admin }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="row">
	<!-- pagination{s} -->
	<div id="paginationBox" class="col-md-6" style="float: right">
		<ul class="pagination">
			<c:if test="${data.prev}">
				<li class="page-item"><a class="page-link" href="#"
					onClick="fn_prev('${data.page}', '${data.range}', '${data.rangeSize}')">Previous</a></li>
			</c:if>
			<c:forEach begin="${data.startPage}" end="${data.endPage}" var="idx">
				<li
					class="page-item <c:out value="${data.page == idx ? 'active' : ''}"/> "><a
					class="page-link" href="#"
					onClick="fn_pagination('${idx}', '${data.range}', '${data.rangeSize}')">
						${idx} </a></li>
			</c:forEach>
			<c:if test="${data.next}">
				<li class="page-item"><a class="page-link" href="#"
					onClick="fn_next('${data.range}', '${data.range}', '${data.rangeSize}')">Next</a></li>
			</c:if>
		</ul>
	</div>
	<!-- pagination{e} -->
</div>

<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-user-check"></i> <a href="">회원 상세</a>
	</div>
	<!--회원 상세-->
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
				<input type="submit" class="form-control  btn btn-info btn-sm"
					id="submit1" value="검색">
			</div>
		</form>
	</div>
</div>

<script>
	//이전 버튼 이벤트
	function fn_prev(page, range, rangeSize) {

		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;

		var url = "info";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;

	}

	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {

		var url = "info";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;

	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;

		var url = "info";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;
	}
</script>