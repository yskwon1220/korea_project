<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- container fluid 아래부터  -->
                        <h1 class="mt-4">트레이너 관리</h1>
                        <ol>
						</ol>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">직원 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <table class="table table-bordered" width="0%" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                        <td  class="align-middle" rowspan="7">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/gangsa/${data.tr_pic}"/>
                                                        </td>
                                                        <td class="align-middle text-lg-center">이름</td>
                                                        <td  class="align-middle ">${data.tr_name}</td>
                                                    </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">입사 일자</td>
                                                    <td  class="align-middle">${data.welcomeDate}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">직책</td>
                                                    <td  class="align-middle">${data.manager}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">직원 번호</td>
                                                    <td  class="align-middle">${data.tr_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">직원 경력</td>
                                                    <td  class="align-middle">${data.contentTrans}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center">소속 지점</td>
                                                    <td  class="align-middle">${data.lo_name}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ol>
                                    </ol>
                                    <div class="col-sm-2" style="float: none; margin: 0 auto;">
                                            <a href="/admin_page_/trainer/modifyForm?tr_no=${data.tr_no}" class="btn btn-info btn-primary btn-sm">수정</a>
                                            <a href="javascript:deleteChk('/admin_page_/trainer/delete?tr_no=${data.tr_no}')" class="btn btn-info btn-danger btn-sm">삭제</a>
                                            <a href="/admin_page_/trainer/info" class="btn btn-info btn-info btn-sm">목록으로</a>
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
