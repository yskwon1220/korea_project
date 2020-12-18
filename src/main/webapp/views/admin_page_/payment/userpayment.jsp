<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">정산</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-coins"></i>
                                <a href=""><strong>${data.resultSet.get(0).user_name}님</strong>의 전체 구매 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th class="align-middle">번호</th>
                                                <th class="align-middle">결제 코드</th>
                                                <th class="align-middle">결제자 성함 / 회원 번호</th>
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
                                                <td class="align-middle">${data.user_name} / ${data.user_no}</td>
                                                <td class="align-middle">${data.lo_name}</td>
                                                <td class="align-middle">${data.goods_no}</td>
                                                <td class="align-middle">${data.showPayment}</td>
                                                <td class="align-middle">${data.welcomeDate}</td>
                                                <td class="align-middle">
                                                    <a href="/admin_page_/result/paymentdetail?payment_no=${data.payment_no}" class="btn btn-info btn-primary btn-sm">정보</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                               	<div class="row" style="margin-top: 30px">
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
									<div class="col-md-6" >
                                            <a style="float: right;" href="/admin_page_/result/total" class="btn btn-info btn-primary btn-sm">전체 목록</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                      	<script>
								//이전 버튼 이벤트
								function fn_prev(page, range, rangeSize) {
										
										var page = ((range - 2) * rangeSize) + 1;
										var range = range - 1;
										var temp = ${data.resultSet.get(0).user_no};
										
										var url = "userpayment?user_no=" + temp;
										url = url + "&page=" + page;
										url = url + "&range=" + range;

										location.href = url;
										
									}
								
								  //페이지 번호 클릭
									function fn_pagination(page, range, rangeSize, searchType, keyword) {
										var temp = ${data.resultSet.get(0).user_no};
										
										var url = "userpayment?user_no=" + temp;
										url = url + "&page=" + page;
										url = url + "&range=" + range;
									
										location.href = url;	
								
									}
								
									//다음 버튼 이벤트
									function fn_next(page, range, rangeSize) {
										var page = parseInt((range * rangeSize)) + 1;
										var range = parseInt(range) + 1;
										var temp = ${data.resultSet.get(0).user_no};
										
										var url = "userpayment?user_no=" + temp;
										url = url + "&page=" + page;
										url = url + "&range=" + range;
								
										location.href = url;
									}
                        </script>