<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                            <h1 class="mt-4">예약 관리</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-building"></i>
                                <a href="">예약 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th class="align-middle">지점 ID</th>
                                                <th class="align-middle">지점명</th>
                                                <th class="align-middle">수용인원</th>
                                                <th class="align-middle">비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td class="align-middle"><a href="/admin_page_/reservation/list?lo_no=${data.lo_no}">${data.lo_no}</a></td>
                                                <td class="align-middle"><a href="/admin_page_/reservation/list?lo_no=${data.lo_no}">${data.lo_name}</a></td>
                                                <td class="align-middle">${data.maximum}</td>
                                                <td class="align-middle">
                                                    <a href="/admin_page_/reservation/list?lo_no=${data.lo_no}" class="btn btn-info btn-primary btn-sm">예약 정보</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>