<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">이용권 관리</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-building"></i>
                                <a href="">이용권 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th class="align-middle">등록 번호</th>
                                                <th class="align-middle">상품 번호</th>
                                                <th class="align-middle">상품 명</th>
                                                <th class="align-middle">상품 가격</th>
                                                <th class="align-middle">상품 판매 개시일</th>
                                                <th class="align-middle">비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td class="align-middle">${data.goods_cnt}</td>
                                                <td class="align-middle">${data.goods_no}</td>
                                                <td class="align-middle">${data.goods_name}</td>
                                                <td class="align-middle">${data.showPrice}</td>
                                                <td class="align-middle">${data.welcomeDate}</td>
                                                <td class="align-middle">
                                                    <a href="/admin_page_/goods/modifyForm?goods_cnt=${data.goods_cnt}" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="javascript:deleteChk('/admin_page_/goods/delete?goods_cnt=${data.goods_cnt}')" class="btn btn-info btn-danger btn-sm">삭제</a>
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
                                        <a href="/admin_page_/goods/insertForm" class="btn btn-info btn-primary btn-sm">상품 등록</a>
                                </div>
                        </div>
                      	<script>
					         function deleteChk(url){
					            	if (confirm("상품을 삭제 하시겠습니까?")){
					            		location = url;
					            	}
					      	}
                        </script>