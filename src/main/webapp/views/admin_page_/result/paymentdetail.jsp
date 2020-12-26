<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <h1 class="mt-4">지점 관리</h1>
                        <ol>
						</ol>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">정산 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <table class="table table-bordered" width="0%" cellspacing="0">
                                                <tbody>
                                                <tr>
                                                    <td class="align-middle"><strong>결제 코드</strong></td>
                                                    <td  class="align-middle">${data.payment_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>결제자 성함 / 회원 번호</strong></td>
                                                    <td  class="align-middle">${data.user_name} / ${data.user_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>결제 지점코드 / 지점명</strong></td>
                                                    <td  class="align-middle">${data.lo_no} / ${data.lo_name}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>상품 가격</strong></td>
                                                    <td  class="align-middle">${data.showPrice}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>할인 가격</strong></td>
                                                    <td  class="align-middle">${data.showDiscount}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>사용 포인트</strong></td>
                                                    <td  class="align-middle">${data.use_point}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>결제 방법</strong></td>
                                                    <td  class="align-middle">${data.payment_method}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>최종 결제 금액</strong></td>
                                                    <td  class="align-middle">${data.showPayment}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle"><strong>결제 일자</strong></td>
                                                    <td  class="align-middle">${data.welcomeDate}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ol>
                                    </ol>
                                    <div class="col-md-1" style="float: none; margin: 0 auto;">
                                            <a href="javascript:deleteChk('/admin_page_/result/delete?payment_no=${data.payment_no}')" class="btn btn-info btn-danger btn-sm">삭제</a>
                                            <a href="/admin_page_/result/total" class="btn btn-info btn-info btn-sm">목록으로</a>
                                    </div>
                            </div>
                            </div>
                        </div>
                     	<script>
					         function deleteChk(url){
					            	if (confirm("정보를 삭제 하시겠습니까?")){
					            		location = url;
					            	}
					      	}
                        </script>
                        