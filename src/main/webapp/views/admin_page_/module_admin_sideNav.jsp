<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

			<!--좌측 네비게이션 세팅-->
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading"></div>
					<a class="nav-link"
						href="/admin_page_/home/dashboard">
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
								href="/admin_page_/member/info">회원정보</a>
							<a class="nav-link"
								href="/admin_page_/trainer/info">트레이너 정보</a>
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
                        <a class="nav-link" href="/admin_page_/reservation/info">예약 정보</a>
                     </nav>
                  </div>
					<!--  -->
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapseTemps" aria-expanded="false"
						aria-controls="collapseTemps">
						<div class="sb-nav-link-icon">
							 <i class="fas fa-copy"></i>
						</div> 컨텐츠 관리
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseTemps"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion"
							id="sidenavAccordionPages">
							<a class="nav-link" href="/admin_page_/branch/info">지점 관리</a>
							<a class="nav-link" href="/admin_page_/goods/info">상품 관리</a>
							
							<a class="nav-link collapsed" href="#" data-toggle="collapse" 
							data-target="#pagesCollapseCus" aria-expanded="false" 
							aria-controls="pagesCollapseCus">
                                        고객문의 관리
                            <div class="sb-sidenav-collapse-arrow">
                            	<i class="fas fa-angle-down"></i>
                            </div>
                            </a>
                             <div class="collapse" id="pagesCollapseCus" 
                             aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/admin_page_/faq/info">FAQ 관리</a>
                                            <a class="nav-link" href="/admin_page_/one/info">1:1 문의 관리</a>
                                        </nav>
                                    </div>
                                    
							<a class="nav-link"
								href="/admin_page_/event/info">이벤트 관리</a>
						</nav>
					</div>
					<div class="sb-sidenav-menu-heading">Accounting</div>
					</a> <a class="nav-link"
						href="<c:url value="/admin_page_/result/total"/>">
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
