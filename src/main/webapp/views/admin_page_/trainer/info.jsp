<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- container fluid 아래부터  -->
                        <h1 class="mt-4">트레이너 관리</h1>
                        <div class="row">
	                        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	                                <div class="input-group" style="margin: 10px;">
	                                    <input class="form-control" type="text" placeholder="강사명을 입력해주세요" onkeyup="searchFunction();" id="tr_name" />
	                                    <div class="input-group-append">
	                                        <button class="btn btn-info" onclick = "searchFunction();" type="button"><i class="fas fa-search"></i></button>
	                                    </div>
	                                </div>
	                         </form>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-id-badge"></i>
                                <a href="">직원 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center"  width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>직원 번호</th>
                                                <th>지점 번호</th>
                                                <th>사진</th>
                                                <th>직원 이름</th>
                                                <th>직원 경력</th>
                                                <th>회원 평가 점수</th>
                                            </tr>
                                        </thead>
                                        <tbody id="showTable">
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td class="align-middle"><a href="/admin_page_/trainer/detail?tr_no=${data.tr_no}"> ${data.tr_no}</a></td>
                                                <td class="align-middle">${data.lo_name}</td>
                                                <td class="align-middle"><a href="/admin_page_/trainer/detail?tr_no=${data.tr_no}"> <img class="img-responsive" alt="" src="/resource/images/${data.tr_pic}"></a></td>
                                                <td class="align-middle"><a href="/admin_page_/trainer/detail?tr_no=${data.tr_no}">${data.tr_name}</a></td>
                                                <td class="align-middle">${data.tr_infoTrans}</td>
                                                <td class="align-middle">${data.stars}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <ol>
                                </ol>
                             		<div class="col-sm-1" style="float: right;">
                                            <a href="/admin_page_/trainer/insertForm" class="btn btn-info btn-primary btn-sm">신규 등록</a>
                                    </div>
                            </div>
                        </div>