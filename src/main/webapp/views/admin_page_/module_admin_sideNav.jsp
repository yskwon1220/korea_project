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
                     <i class="fas fa-house-user"></i>
                  &nbsp;&nbsp;관리자 홈
               </a>
               <div class="sb-sidenav-menu-heading">menu</div>
               <a class="nav-link collapsed" href="#" data-toggle="collapse"
                  data-target="#collapseUsers" aria-expanded="false"
                  aria-controls="collapseUsers">
                     <i class="fas fa-address-card"></i>
                         &nbsp;&nbsp;사용자 관리
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
                     data-target="#collapseReservation" aria-expanded="false" 
                     aria-controls="collapseReservation">
                     <i class="fas fa-history"></i>
                                        &nbsp;&nbsp;예약관리
                            <div class="sb-sidenav-collapse-arrow">
                               <i class="fas fa-angle-down"></i>
                            </div>
                            </a>
                             <div class="collapse" id="collapseReservation" 
                             aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/admin_page_/reservation/resinfo">시간별 인원 현황</a>
                                            <a class="nav-link" href="/admin_page_/reservation/info">예약 정보</a>
                                        </nav>
                                    </div>
               <a class="nav-link collapsed" href="#" data-toggle="collapse"
                  data-target="#collapseTemps" aria-expanded="false"
                  aria-controls="collapseTemps">
                      <i class="fas fa-copy"></i>
                             &nbsp;&nbsp;컨텐츠 관리
                  <div class="sb-sidenav-collapse-arrow">
                     <i class="fas fa-angle-down"></i>
                  </div>
               </a>
               <div class="collapse" id="collapseTemps"
                  aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                  <nav class="sb-sidenav-menu-nested nav accordion"
                     id="sidenavAccordionPages">
                  <a class="nav-link collapsed" href="#" data-toggle="collapse" 
				      data-target="#pagesCollapseHome" aria-expanded="false" 
				      aria-controls="pagesCollapseHome">
                                        홈페이지 관리
                            <div class="sb-sidenav-collapse-arrow">
                               <i class="fas fa-angle-down"></i>
                            </div>
                            </a>
                             <div class="collapse" id="pagesCollapseHome" 
                             aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
							                <a class="nav-link" href="/admin_page_/mainSetting/info">메인배너 관리</a>
							               <a class="nav-link" href="/admin_page_/mainSetting/urInfo">메인소개 관리</a>
                                        </nav>
                                    </div>
                    <a class="nav-link" href="/admin_page_/branch/info">지점 관리</a>
                    <a class="nav-link" href="/admin_page_/goods/info">이용권 관리</a>
               <a class="nav-link" href="/admin_page_/review/info">이용후기 관리</a>
				      <a class="nav-link collapsed" href="#" data-toggle="collapse" 
				      data-target="#pagesCollapseCus" aria-expanded="false" 
				      aria-controls="pagesCollapseCus">
                                        게시물 관리
                            <div class="sb-sidenav-collapse-arrow">
                               <i class="fas fa-angle-down"></i>
                            </div>
                            </a>
                             <div class="collapse" id="pagesCollapseCus" 
                             aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/admin_page_/notice/info">공지사항</a>
                                            <a class="nav-link" href="/admin_page_/qna/info">자주묻는 질문</a>
                                            <a class="nav-link" href="/admin_page_/fnq/info">1:1 문의</a>
                                        </nav>
                                    </div>
                  <a class="nav-link"
                        href="/admin_page_/event/info">이벤트 관리</a>
                  </nav>
               </div>
               <div class="sb-sidenav-menu-heading">Accounting</div>
               <a class="nav-link collapsed" href="#" data-toggle="collapse"
                  data-target="#collapseResult" aria-expanded="false"
                  aria-controls="collapseResult">
                     <i class="fas fa-coins"></i>
                       &nbsp;&nbsp; 정산
                  <div class="sb-sidenav-collapse-arrow">
                     <i class="fas fa-angle-down"></i>
                  </div>
               </a>
               <div class="collapse" id="collapseResult"
                  aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                  <nav class="sb-sidenav-menu-nested nav">
                     <a class="nav-link"
                        href="/admin_page_/result/total">지점별 판매 내역</a>
                     <a class="nav-link"
                        href="/admin_page_/payment/info">기간별 판매 내역</a>
                  </nav>
               </div>
            </div>
         </div>
         <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
           	${user_id }
         </div>