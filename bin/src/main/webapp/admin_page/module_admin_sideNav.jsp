<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<!--좌측 네비게이션 세팅-->
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading"></div>
					<a class="nav-link"
						href="<c:url value="/admin_page/admin_index.jsp"/>">
						<div class="sb-nav-link-icon">
							<i class="fas fa-house-user"></i>
						</div> 관리자 홈
					</a>
					<div class="sb-sidenav-menu-heading">menu</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapseUsers" aria-expanded="false"
						aria-controls="collapseUsers">
						<div class="sb-nav-link-icon">
							<i class="fas fa-address-card"></i>
						</div> 사용자 관리
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseUsers"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="<c:url value="/admin_page/admin_memberInfo.jsp"/>">회원정보</a>
							<a class="nav-link"
								href="<c:url value="/admin_page/admin_trainerInfo.jsp"/>">트레이너
								정보</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapseLayouts" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-history"></i>
						</div> 예약관리
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseLayouts"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="<c:url value="/admin_page/admin_reservInfo.jsp"/>">예약
								정보</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-copy"></i>
						</div> 컨텐츠 관리
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapsePages"
						aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion"
							id="sidenavAccordionPages">
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseGongji" aria-expanded="false"
								aria-controls="pagesCollapseGongji"> 공지사항 관리
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseGongji"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link"
										href="<c:url value="/admin_page/admin_notice.jsp"/>">공지사항
										목록</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseSales" aria-expanded="false"
								aria-controls="pagesCollapseSales"> 판매 관리
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseSales"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link"
										href="<c:url value="/admin_page/admin_sell.jsp"/>">판매 내역</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseBranch" aria-expanded="false"
								aria-controls="pagesCollapseBranch"> 지점 관리
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseBranch"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link"
										href="<c:url value="/admin_page/admin_branch.jsp"/>">지점 목록</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseCus" aria-expanded="false"
								aria-controls="pagesCollapseCus"> 고객문의 관리
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseCus"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link"
										href="<c:url value="/admin_page/admin_inqury.jsp"/>">고객문의
										목록</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseEvent" aria-expanded="false"
								aria-controls="pagesCollapseEvent"> 이벤트 관리
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseEvent"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link"
										href="<c:url value="/admin_page/admin_event.jsp"/>">이벤트 목록</a>
								</nav>
							</div>
						</nav>
					</div>
					<div class="sb-sidenav-menu-heading">Accounting</div>
					<a class="nav-link"
						href="<c:url value="/admin_page/admin_income.jsp"/>">
						<div class="sb-nav-link-icon">
							<i class="fas fa-coins"></i>
						</div> 수입
					</a> <a class="nav-link"
						href="<c:url value="/admin_page/admin_outcome.jsp"/>">
						<div class="sb-nav-link-icon">
							<i class="fas fa-coins"></i>
						</div> 지출
					</a> <a class="nav-link"
						href="<c:url value="/admin_page/admin_result.jsp"/>">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> 통계
					</a>
				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as:</div>
				사용자 로그인 정보
			</div>
		</nav>
	</div>
</body>
</html>