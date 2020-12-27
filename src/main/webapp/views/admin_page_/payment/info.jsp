<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">정산</h1>
                        <ol>
                        </ol>
                     <div class="col-sm-6">
					   <a href="/admin_page_/payment/info" class="btn btn-info btn-primary btn-m">2020년</a>
					   <a href="/admin_page_/payment/info?year=2019" class="btn btn-info btn-primary btn-m">2019년</a>
					   <a href="/admin_page_/payment/info?year=2018" class="btn btn-info btn-primary btn-m">2018년</a>
					    <ol>
                        </ol>
					</div>
                        <div class="row" style="margin-bottom: 20px">
						  <div class="col-sm-6">
						    <div class="card">
						    	<h6 class="card-header">
						    	<i class="fas fa-chart-bar mr-1"></i>월별 매출</h6>
							      <div class="card-body">
						    		<canvas id="myChart" width="870" height="560"></canvas>
							      </div>
						    </div>
						  </div>
						  <div class="col-sm-6">
						    <div class="card">
						    	<h6 class="card-header">
						    	<i class="fas fa-coins"></i>월별 매출 소계</h6>
							      <div class="card-body">
							     	  <div class="table-responsive">
                                    	<table class="table table-bordered" width="100%"  cellspacing="0" >
                                                <tbody>
                                                <c:forEach items="${data['monthPay']}" var="data" varStatus="no">
                                                <tr>
                                                    <td class="align-middle"><strong>${no.index+1}월</strong></td>
                                                    <td  class="align-middle">${data}</td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                    	</table>
							      </div>
						    </div>
						  </div>
						</div>
						</div>
						<div class="row">
							 <div class="col-sm-12">
	                        <div class="card mb-4">
	                            <div class="card-header">
	                            	<div class="align-middle"  style="display: inline-block;">
		                                <i class="fas fa-coins"></i>
		                                <a href="">전체 판매 목록</a>
	                            	</div>
	                                <div class="dropdown" style="display: inline-block; float: right;">
									  <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									   	월별 결제내역
									  </button>
									  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									  	<c:forEach begin="1" end="12" step="1" var="no">
									    <a class="dropdown-item" href="/admin_page_/payment/info?year=${data['pageCtl'].year}&month=${no}">${no}월</a>
									  	</c:forEach>
<!-- 									    <a class="dropdown-item" href="/admin_page_/payment/info?month=2">2월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=3">3월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=4">4월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=5">5월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=6">6월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=7">7월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=8">8월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=9">9월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=10">10월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=11">11월</a>
									    <a class="dropdown-item" href="/admin_page_/payment/info?month=12">12월</a> -->
									  </div>
									</div>
	                            </div>
	                            <div class="card-body">
	                                <div class="table-responsive">
	                                    <table class="table table-bordered" width="100%" cellspacing="0">
	                                        <thead>
	                                            <tr>
	                                                <th class="align-middle">번호</th>
	                                                <th class="align-middle">결제 코드</th>
	                                                <th class="align-middle">결제자 성함</th>
	                                                <th class="align-middle">지점</th>
	                                                <th class="align-middle">결제 상품 코드</th>
	                                                <th class="align-middle">결제 가격</th>
	                                                <th class="align-middle">결제 일자</th>
	                                                <th class="align-middle">비고</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                     	<c:forEach items="${data['pageCtl'].resultSet}" var="data" varStatus="no">
	                                            <tr>
	                                                <td class="align-middle">${startList + no.index + 1}</td>
	                                                <td class="align-middle"><a href="/admin_page_/result/paymentdetail?payment_no=${data.payment_no}">${data.payment_no}</a></td>
	                                                <td class="align-middle"><a href="/admin_page_/result/userpayment?user_no=${data.user_no}">${data.user_name}</a></td>	<!-- 회원누르면 해당 회원 결제내역 보이게 -->
	                                                <td class="align-middle">${data.lo_name}</td>
	                                                <td class="align-middle">${data.goods_no}</td>
	                                                <td class="align-middle">${data.showPayment}</td>
	                                                <td class="align-middle">${data.welcomeDate}</td>
	                                                <td class="align-middle">
	                                                    <a href="/admin_page_/result/detail?paymentdetail_no=${data.payment_no}" class="btn btn-info btn-primary btn-sm">정보</a>
	                                                </td>
	                                            </tr>
	                                        </c:forEach>
	                                        </tbody>
	                                    </table>
	                                </div>
								</div>
                        <div class="row" style="margin: 10px 15px 10px 15px">
                        <!-- pagination{s} -->
                        <div id="paginationBox" class="col" style="display: inline-block;">
                            <ul class="pagination">
                                <c:if test="${data['pageCtl'].prev}">
                                    <li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${data['pageCtl'].page}', '${data['pageCtl'].range}', '${data['pageCtl'].rangeSize}')">Previous</a></li>
                                </c:if>
                                <c:forEach begin="${data['pageCtl'].startPage}" end="${data['pageCtl'].endPage}" var="idx">
                                    <li class="page-item <c:out value="${data['pageCtl'].page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${data['pageCtl'].range}', '${data['pageCtl'].rangeSize}')"> ${idx} </a></li>
                                </c:forEach>
                                <c:if test="${data['pageCtl'].next}">
                                    <li class="page-item"><a class="page-link" href="#" onClick="fn_next('${data['pageCtl'].range}', '${data['pageCtl'].range}', '${data['pageCtl'].rangeSize}')" >Next</a></li>
                                </c:if>
                            </ul>
                        </div>
                        <!-- pagination{e} -->
                        </div>
                            </div>
                            </div>
                        </div>
                      	<script>
                      	var list = ${data['chartList']};
                      	var temp = ${data['pageCtl'].year};
                      	
                    	var ctx = document.getElementById('myChart');
                    	var myChart = new Chart(ctx, {
                    		type: 'bar',
                    		data: {
                    			labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    			datasets: [{
                    				label: temp + "년 월별 매출",
                    				data: list,
                    				backgroundColor: [
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)',
                    					'rgba(75, 192, 192, 0.3)'
                    				],
                    				borderColor: [
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)'
                    				],
                    				hoverBackgroundColor: [
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(75, 192, 192, 1)'
                    				],
                    				borderWidth:1
                    			}]
                    		},
                    		options: {
                    			legend:false,
                    			responsive: false,
                    			scales: {
                    				yAxes: [{
                    					ticks: {
                    						beginAtZero: true
                    					}
                    				}]
                    			},
                    		}
                    	});
								//이전 버튼 이벤트
								function fn_prev(page, range, rangeSize) {
										
										var page = ((range - 2) * rangeSize) + 1;
										var range = range - 1;
										var month = ${data['pageCtl'].month};
										var year = ${data['pageCtl'].year};
								
										var url = "info?year=" + year + "&month="+month;
										url = url + "&page=" + page;
										url = url + "&range=" + range;

										location.href = url;
										
									}
								
								  //페이지 번호 클릭
									function fn_pagination(page, range, rangeSize, searchType, keyword) {
										var month = ${data['pageCtl'].month};
										var year = ${data['pageCtl'].year};
								
										var url = "info?year=" + year + "&month="+month;
										url = url + "&page=" + page;
										url = url + "&range=" + range;
									
										location.href = url;	
								
									}
								
									//다음 버튼 이벤트
									function fn_next(page, range, rangeSize) {
										var page = parseInt((range * rangeSize)) + 1;
										var month = ${data['pageCtl'].month};
										var year = ${data['pageCtl'].year};
								
										var url = "info?year=" + year + "&month="+month;
										url = url + "&page=" + page;
										url = url + "&range=" + range;
								
										location.href = url;
									}
                        </script>