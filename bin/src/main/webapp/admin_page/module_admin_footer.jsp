<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<link rel="stylesheet" href="<c:url value="/assets/css/ad_index_styles.css"/>" />
	<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
<style>
	body {
		font-family: "Helvetica Nene", Helvetica, Arial, 맑은 고딕;
		,"
		malgun
		gothic",
		sans-serif;
	}
</style>
</head>
<body>
	<footer class="py-4 bg-light mt-auto">
		<div class="container-fluid">
			<div class="d-flex align-items-center justify-content-between small">
				<div class="text-muted">Copyright &copy; 홈페이지 명</div>
				<div>
					<!-- 홈 화면 정해지면 넣기 -->
					<a href="#">홈페이지 명</a> &middot; <a
						href="<c:url value="/admin_page/admin_index.jsp"/>">관리자 페이지</a>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>