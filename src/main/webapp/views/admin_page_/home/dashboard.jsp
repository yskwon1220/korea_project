<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                      <h1 class="mt-4">${user_name} 관리자님, 환영합니다! :)</h1>
                      <lo></lo>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                         <a href="/admin_page_/result/total">연도 매출</a>
                                    </div>
                                    <div class="card-body"><canvas id="myChart" width="850" height="400"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-pen-square"></i>
                                        <a href="/admin_page_/payment/info">최근 결제 내역</a>
                                    </div>
                                    <div class="card-body">
                                        <table class="table" width="100%" cellspacing="0" style="margin-top: 60px; margin-bottom: 60px;">
                                        <thead>
                                            <tr>
                                                <th>결제 코드</th>
                                                <th>결제자 성함</th>
                                                <th>지점</th>
                                                <th>결제 가격</th>
                                                <th>결제 일자</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data['paymentList']}" var="data">
                                            <tr>
                                                <td>${data.payment_no}</td>
                                                <td>${data.user_name}</td>
                                                <td>${data.lo_name}</td>
                                                <td>${data.showPayment}</td>
                                                <td>${data.welcomeDate}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                      </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="/admin_page_/reservation/info">예약 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>예약 번호</th>
                                                <th>지점 이름</th>
                                                <th>타입</th>
                                                <th>예약자 성함</th>
                                                <th>예약자 연락처</th>
                                                <th>트레이너 이름</th>
                                                <th>요청사항</th>
                                                <th>예약 일자</th>
                                                <th>예약 시간</th>
                                            </tr>
                                        </thead>
	                                        <tbody>
                                       <c:forEach items="${data['reservList']}" var="data" varStatus="no">
	                                            <tr>
	                                                <td>${no.index + 1}</td>
	                                                <td>${data.re_no}</td>
	                                                <td>${data.lo_name}</td>
	                                                <td>${data.type}</td>
	                                                <td>${data.user_name}</td>
	                                                <td>${data.user_tel}</td>
	                                                <td>${data.tr_name}</td>
	                                                <td>${data.contentTrans}</td>
	                                                <td>${data.welcomeDate}</td>
	                                                <td>${data.restime}</td>
	                                            </tr>
                                       </c:forEach>
	                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="/admin_page_/fnq/info">고객문의 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>글 번호</th>
                                                <th>카테고리</th>
                                                <th>제목</th>
                                                <th>작성 시간</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data['faqList']}" var="data" varStatus="no">
                                            <tr>
                                                <td>${no.index + 1}</td>
                                                <td>${data.board_no}</td>
                                                <td>${data.rep}</td>
                                                <td>${data.title}</td>
                                                <td>${data.ymd}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <script>
						var list = ${data['chartList']};
                    	var ctx = document.getElementById('myChart');

                    	var myChart = new Chart(ctx, {
                    		type: 'bar',
                    		data: {
                    			labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    			datasets: [{
                    				label: "2020년 월별 매출",
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
                        </script>