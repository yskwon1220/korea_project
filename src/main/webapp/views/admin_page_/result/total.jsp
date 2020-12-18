<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">정산</h1>
                    <div class="col-sm-6">
					   <a href="/admin_page_/result/total" class="btn btn-info btn-primary btn-m">전체</a>
					   <a href="/admin_page_/result/branch?lo_no=1001" class="btn btn-info btn-primary btn-m">강남점</a>
					   <a href="/admin_page_/result/branch?lo_no=1002" class="btn btn-info btn-primary btn-m">강북점</a>
					   <a href="/admin_page_/result/branch?lo_no=1003" class="btn btn-info btn-primary btn-m">강서점</a>
					</div>
                        <ol>
                        </ol>
                        <!-- 시작 -->
                         <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar mr-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body">
                                    	<canvas id="myChart" width="100%" height="50"></canvas>
                                    </div>
                        </div>
                        <!-- 끝 -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-coins"></i>
                                <a href="">전체 판매 목록</a>
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
                                     	<c:forEach items="${data.resultSet}" var="data" varStatus="no">
                                            <tr>
                                                <td class="align-middle">${startList + no.index + 1}</td>
                                                <td class="align-middle"><a href="/admin_page_/result/paymentdetail?payment_no=${data.payment_no}">${data.payment_no}</a></td>
                                                <td class="align-middle"><a href="/admin_page_/result/userpayment?user_no=${data.user_no}">${data.user_name}</a></td>	<!-- 회원누르면 해당 회원 결제내역 보이게 -->
                                                <td class="align-middle">${data.lo_name}</td>
                                                <td class="align-middle">${data.goods_no}</td>
                                                <td class="align-middle">${data.showPayment}</td>
                                                <td class="align-middle">${data.welcomeDate}</td>
                                                <td class="align-middle">
                                                    <a href="/admin_page_/result/detail?payment_no=${data.payment_no}" class="btn btn-info btn-primary btn-sm">정보</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <ol>
                                </ol>
                               	<div class="row">
                                <!-- pagination{s} -->
								<div id="paginationBox" class="col-md-6" style="float: right">
									<ul class="pagination">
										<c:if test="${data.prev}">
											<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${data.page}', '${data.range}', '${data.rangeSize}')">Previous</a></li>
										</c:if>
										<c:forEach begin="${data.startPage}" end="${data.endPage}" var="idx">
											<li class="page-item <c:out value="${data.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${data.range}', '${data.rangeSize}')"> ${idx} </a></li>
										</c:forEach>
										<c:if test="${data.next}">
											<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${data.range}', '${data.range}', '${data.rangeSize}')" >Next</a></li>
										</c:if>
									</ul>
								</div>
								<!-- pagination{e} -->
								<div class="col-md-6">
									<table class="table table-bordered" width="100%" cellspacing="0">
										<tr>
											<th>전체 누적 결제 금액</th>
											<th><a href="">${data.showPayment}</a></th>
										</tr>
									</table>
								</div>
                                </div>
                            </div>
                        </div>
                      	<script>
                      	
                    	var ctx = document.getElementById('myChart');
                    	var myChart = new Chart(ctx, {
                    		type: 'bar',
                    		data: {
                    			labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                    			datasets: [{
                    				label: '# of Votes',
                    				data: [12, 19, 3, 5, 2, 3],
                    				backgroundColor: [
                    					'rgba(255, 99, 132, 0.2)',
                    					'rgba(54, 162, 235, 0.2)',
                    					'rgba(255, 206, 86, 0.2)',
                    					'rgba(75, 192, 192, 0.2)',
                    					'rgba(153, 102, 255, 0.2)',
                    					'rgba(255, 159, 64, 0.2)'
                    				],
                    				borderColor: [
                    					'rgba(255, 99, 132, 1)',
                    					'rgba(54, 162, 235, 1)',
                    					'rgba(255, 206, 86, 1)',
                    					'rgba(75, 192, 192, 1)',
                    					'rgba(153, 102, 255, 1)',
                    					'rgba(255, 159, 64, 1)'
                    				],
                    				borderWidth: 1
                    			}]
                    		},
                    		options: {
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
                      	
                      	
					         function deleteChk(url){
					            	if (confirm("내역을 삭제 하시겠습니까?")){
					            		location = url;
					            	}
					      	}
								//이전 버튼 이벤트
								function fn_prev(page, range, rangeSize) {
										
										var page = ((range - 2) * rangeSize) + 1;
										var range = range - 1;
								
										var url = "total";
										url = url + "?page=" + page;
										url = url + "&range=" + range;

										location.href = url;
										
									}
								
								  //페이지 번호 클릭
									function fn_pagination(page, range, rangeSize, searchType, keyword) {
										
										var url = "total";
										url = url + "?page=" + page;
										url = url + "&range=" + range;
									
										location.href = url;	
								
									}
								
									//다음 버튼 이벤트
									function fn_next(page, range, rangeSize) {
										var page = parseInt((range * rangeSize)) + 1;
										var range = parseInt(range) + 1;
										
										var url = "total";
										url = url + "?page=" + page;
										url = url + "&range=" + range;
								
										location.href = url;
									}
                        </script>