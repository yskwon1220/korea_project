<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<footer class="py-4 bg-light mt-auto">
		<div class="container-fluid">
			<div class="d-flex align-items-center justify-content-between small">
				<div class="text-muted">Copyright &copy; 홈페이지 명</div>
				<div>
					<!-- 홈 화면 정해지면 넣기 -->
					<a href="#">홈페이지 명</a> &middot;
					 <a href="<c:url value="/admin_page/admin_index"/>">관리자 페이지</a>
				</div>
			</div>
		</div>
	</footer>
