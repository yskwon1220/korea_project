<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">상품 관리</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-building"></i>
                                <a href="">이벤트 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th class="align-middle">등록 번호</th>
                                                <th class="align-middle">제목</th>
                                                <th class="align-middle">메인 이미지</th>
                                                <th class="align-middle">세부 이미지1</th>
                                                <th class="align-middle">세부 이미지2</th>
                                                <th class="align-middle">세부 이미지3</th>
                                                <th class="align-middle">원가</th>
                                                <th class="align-middle">할인액</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td class="align-middle">${data.event_no}</td>
                                                <td class="align-middle">${data.title}</td>
                                                <td class="align-middle">${data.main_img}</td>
                                                <td class="align-middle">${data.detail_img1}</td>
                                                <td class="align-middle">${data.detail_img2}</td>
                                                <td class="align-middle">${data.detail_img3}</td>
                                                <td class="align-middle">${data.e_price}</td>
                                                <td class="align-middle">${data.discount}</td>
                                                <td class="align-middle">
                                                    <a href="/admin_page_/event/modifyForm?event_no=${data.event_no}" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="javascript:deleteChk('/admin_page_/event/delete?event_no=${data.event_no}')" class="btn btn-info btn-danger btn-sm">삭제</a>
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
                                        <a href="/admin_page_/event/insertForm" class="btn btn-info btn-primary btn-sm">상품 등록</a>
                                </div>
                        </div>
                      	<script>
					         function deleteChk(url){
					            	if (confirm("상품을 삭제 하시겠습니까?")){
					            		location = url;
					            	}
					      	}
                        </script>