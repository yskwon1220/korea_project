<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <h1 class="mt-4">지점 관리</h1>
                        <ol>
						</ol>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">지점 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <table class="table table-bordered" width="0%" cellspacing="0">
                                                <tbody>
                                                <tr>
                                                    <td class="align-middle">번호</td>
                                                    <td  class="align-middle">${data.lo_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">지점 이름</td>
                                                    <td  class="align-middle">${data.lo_name}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">타입</td>
                                                    <td  class="align-middle">${data.tel}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">예약 날짜</td>
                                                    <td  class="align-middle">${data.addr}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">예약 시간</td>
                                                    <td  class="align-middle">${data.contentTrans}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">예약자 이름</td>
                                                    <td  class="align-middle">${data.welcomeDate}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">예약 비밀번호</td>
                                                    <td  class="align-middle">${data.maximum}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">예약자 연락처</td>
                                                    <td  class="align-middle">${data.income}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">예약 내용</td>
                                                    <td  class="align-middle">${data.outcome}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ol>
                                    </ol>
                                    <div class="col-md-2" style="float: none; margin: 0 auto;">
                                            <a href="/admin_page_/branch/list?lo_no=${data.lo_no}" class="btn btn-info btn-primary btn-sm">소속 직원</a>
                                            <a href="/admin_page_/branch/modifyForm?lo_cnt=${data.lo_cnt}" class="btn btn-info btn-primary btn-sm">수정</a>
                                            <a href="javascript:deleteChk('/admin_page_/branch/delete?lo_cnt=${data.lo_cnt}')" class="btn btn-info btn-danger btn-sm">삭제</a>
                                            <a href="/admin_page_/branch/info" class="btn btn-info btn-info btn-sm">목록으로</a>
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
                        