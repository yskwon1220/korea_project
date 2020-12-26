<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="mt-4">지점 관리</h1>
<ol>
</ol>
<div class="card mb-4">
	<div class="card-header">
		<i class="far fa-address-card"></i> <a href="">지점 상세</a>
	</div>
	<!--직원 가입 폼 확인 후 수정-->
	<div class="card-body">
		<div class="table-responsive">
			<div class="col-sm-6" style="float: none; margin: 0 auto;">
				<table class="table table-bordered" width="0%" cellspacing="0">
					<tbody>
						<c:set var="rvo" value="${data}" />
						
						<tr>
							<td class="align-middle">${rvo.re_no}</td>
							<td class="align-middle">${rvo.lo_no}</td>
						</tr>
						<tr>
							<td class="align-middle">지점 이름</td>
							<td class="align-middle">${rvo.lo_name}</td>
						</tr>
						<tr>
							<td class="align-middle">타입</td>
							<td class="align-middle">${rvo.type}</td>
						</tr>
						<tr>
							<td class="align-middle">예약 날짜</td>
							<td class="align-middle">${rvo.welcomeDate}</td> 												
						</tr>
						<tr>
							<td class="align-middle">예약 시간</td>
							<td class="align-middle">${rvo.restime}</td>
						</tr>
						<tr>
							<td class="align-middle">예약자 이름</td>
							<td class="align-middle">${rvo.user_name}</td>
						</tr>
						<tr>
							<td class="align-middle">예약 비밀번호</td>
							<td class="align-middle">${rvo.user_pw}</td>
						</tr>
						<tr>
							<td class="align-middle">예약자 연락처</td>
							<td class="align-middle">${rvo.user_tel}</td>
						</tr>
						<tr>
							<td class="align-middle">예약 내용</td>
							<td class="align-middle">${rvo.content}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<ol>
			</ol>
			<div class="col-md-2" style="float: none; margin: 0 auto;">
				<a href="/admin_page_/reservation/modifyForm?re_no=${rvo.re_no}" class="btn btn-info btn-primary btn-sm">수정</a> 
				<a href="javascript:deleteChk('/admin_page_/reservation/delete?re_no=${rvo.re_no}')" class="btn btn-info btn-danger btn-sm">삭제</a> 
				
				<a href="javascript:history.back()" class="btn btn-info btn-info btn-sm">뒤로</a> 

			</div>
		</div>
	</div>
</div>
<script>
	function deleteChk(url) {
		if (confirm("정보를 삭제 하시겠습니까?")) {
			location = url;
		}
	}
</script>
