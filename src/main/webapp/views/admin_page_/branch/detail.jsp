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
                                                        <td  class="align-middle" colspan="2">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/${data.lo_pic}"/>
                                                    </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 번호</td>
                                                    <td  class="align-middle ">${data.lo_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 명</td>
                                                    <td  class="align-middle">${data.lo_name}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 연락처</td>
                                                    <td  class="align-middle">${data.lo_tel}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 주소</td>
                                                    <td  class="align-middle">${data.lo_addr}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 소개</td>
                                                    <td  class="align-middle">${data.contentTrans}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 등록일</td>
                                                    <td  class="align-middle">${data.welcomeDate}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">수용인원</td>
                                                    <td  class="align-middle">${data.maximum}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 수입</td>
                                                    <td  class="align-middle">${data.income}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">지점 지출</td>
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
                        