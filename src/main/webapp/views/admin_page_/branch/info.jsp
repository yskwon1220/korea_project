<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">지점 관리</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-building"></i>
                                <a href="">지점 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th class="align-middle">지점 ID</th>
                                                <th class="align-middle">지점명</th>
                                                <th>지점 주소</th>
                                                <th>지점 등록일</th>
                                                <th class="align-middle">비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td class="align-middle"><a href="/admin_page_/branch/detail?lo_cnt=${data.lo_cnt}">${data.lo_no}</a></td>
                                                <td class="align-middle"><a href="/admin_page_/branch/detail?lo_cnt=${data.lo_cnt}">${data.lo_name}</a></td>
                                                <td>${data.lo_addr}</td>
                                                <td>${data.welcomeDate}</td>
                                                <td class="align-middle">
                                                    <a href="/admin_page_/branch/modifyForm?lo_cnt=${data.lo_cnt}" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="javascript:deleteChk('/admin_page_/branch/delete?lo_cnt=${data.lo_cnt}')" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-xl-12" style="text-align: center;">
                                        <a href="/admin_page_/branch/insertForm" class="btn btn-info btn-primary btn-sm">지점 등록</a>
                                </div>
                        </div>
                      	<script>
					         function deleteChk(url){
					            	if (confirm("지점을 삭제 하시겠습니까?")){
					            		location = url;
					            	}
					      	}
                        </script>