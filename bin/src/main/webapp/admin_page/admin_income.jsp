<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 페이지</title>

<link rel="stylesheet"
	href="<c:url value="/assets/css/ad_index_styles.css"/>" />

<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="/admin_page/module_admin_top.jsp" />
	<!--메인 컨텐츠 wrapper-->
	<div id="layoutSidenav">
		<!--좌측 네비게이션 세팅-->
		<jsp:include page="/admin_page/module_admin_sideNav.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h2 class="mt-4">수입</h2>
					<a href="">TOTAL </a> | <a href="">강남점 </a> | <a href="">강북점 </a> |
					<a href="">강서점 </a>
					<ol>
					</ol>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i> 수입현황
								</div>
								<div class="card-body">
									<canvas id="myAreaChart" width="100%" height="40"></canvas>
								</div>
								<div class="card-body">
									<table class="table" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th>구분</th>
												<th>내용</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>금일 총 수입현황</td>
												<td>1,234,567</td>
											</tr>
											<tr>
												<td>PT</td>
												<td>1,234</td>
											</tr>
											<tr>
												<td>전일 방문자</td>
												<td>234</td>
											</tr>
											<tr>
												<td>새 예약</td>
												<td>234</td>
											</tr>
											<tr>
												<td>신규회원</td>
												<td>234</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i> 수입금액 및 수입전환 현황 그래프
								</div>
								<div class="card-body">
									<canvas id="myBarChart" width="100%" height="40"></canvas>
								</div>
								<div class="card-body">
									<table class="table" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th>현재 잔액</th>
												<th>최근 저금액</th>
												<th>전환 가능 금액</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2343990원</td>
												<td>334243원</td>
												<td>3234339원</td>
											</tr>
											<tr>
												<td colspan="3" align="center"><input type="button"
													value="수입전환 진행" /></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i>일별 수입현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>일자</th>
											<th>시설 이용요금</th>
											<th>예약수입</th>
											<th>일반 PT</th>
											<th>기타수입</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>2020/11/25</td>
											<td>722340</td>
											<td>150093</td>
											<td>22237</td>
											<td>44543</td>
										</tr>
										<tr>
											<td>2020/11/24</td>
											<td>708852</td>
											<td>15334</td>
											<td>22227</td>
											<td></td>
										</tr>
										<tr>
											<td>2020/11/23</td>
											<td>704423</td>
											<td>223125</td>
											<td>23427</td>
											<td>2223</td>
										</tr>
										<tr>
											<td>2020/11/22</td>
											<td>4324530</td>
											<td>99003</td>
											<td>3244423</td>
											<td>2333424</td>
										</tr>
										<tr>
											<td>2020/11/21</td>
											<td>3466786</td>
											<td>3242344</td>
											<td>34234433</td>
											<td>2333442</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
			<!--Footer 푸터 삽입 영역-->
			<jsp:include page="/admin_page/module_admin_footer.jsp" />
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>

	<script src="<c:url value="/assets/demo/chart-bar-demo.js"/>"></script>
	<script src="<c:url value="/assets/demo/chart-area-demo.js"/>"></script>
	<script src="<c:url value="/js/scripts.js"/>"></script>
	<script src="<c:url value="/assets/demo/datatables-demo.js"/>"></script>
</body>
</html>