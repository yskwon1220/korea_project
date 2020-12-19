<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- container fluid 아래부터  -->
                        <h1 class="mt-4">회원 관리</h1>
                        <ol>
						</ol>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">회원 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <table class="table table-bordered" width="0%" cellspacing="0">
                                                <tbody>
                                                <tr>
                                                    <td class="align-middle">회원 번호</td>
                                                    <td  class="align-middle">${data.user_no}</td>
                                                </tr>
                                                    <tr>
                                                        <td class="align-middle">이름</td>
                                                        <td  class="align-middle">${data.user_name}</td>
                                                    </tr>
                                                <tr>
                                                    <td class="align-middle">아이디</td>
                                                    <td  class="align-middle">${data.user_id}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">생년월일</td>
                                                    <td  class="align-middle">${data.user_birth}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">가입 일자</td>
                                                    <td  class="align-middle">${data.regDate}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">이메일</td>
                                                    <td  class="align-middle">${data.user_email}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">전화번호</td>
                                                    <td  class="align-middle">${data.user_tel}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">회원상태</td>
                                                    <td  class="align-middle">${data.admin}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">성별</td>
                                                    <td  class="align-middle">${data.gender}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ol>
                                    </ol>
                                    <div class="col-sm-3" style="float: none; margin: 0 auto;">
                                            <a href="javascript:deleteChk('/admin_page_/member/deleteReg?user_no=${data.user_no}')" class="btn btn-info btn-danger btn-sm">삭제</a>
                                    <c:choose>
				                    	<c:when test="${data.admin eq 'admin' }">
											<a href="/admin_page_/member/modifyUser?user_no=${data.user_no}" class="btn btn-info btn-primary btn-sm">관리자등급 뺏기</a>
				                    	</c:when>
				                    	<c:otherwise>
											<a href="/admin_page_/member/modifyAdmin?user_no=${data.user_no}" class="btn btn-info btn-primary btn-sm">관리자등급 주기</a>
				                    	</c:otherwise>
									</c:choose>        
                                            <a href="/admin_page_/member/info" class="btn btn-info btn-info btn-sm">목록으로</a>
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
