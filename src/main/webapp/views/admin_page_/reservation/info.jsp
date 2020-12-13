<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                         <h1 class="mt-4">예약 정보</h1>
                        <ol>
                        </ol>
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-body">
                                        <form action="회원검색모듈.html" >
                                            <div class="form-group col-xl-4" style="display: inline-block">
                                                <label for="search">검색 기준</label>
                                                <select class="form-control" id="search">
                                                    <option>이름</option>
                                                    <option>아이디</option>
                                                    <option>닉네임</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-xl-4" style="display: inline-block">
                                                <label for="txt1">검색 명</label>
                                                <input type="text" class="form-control" id="txt1">
                                            </div>
                                            <div class="form-group col-l-2" style="display: inline-block">
                                                <input type="submit" class="form-control  btn btn-info" id="submit1" value="검색">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-clock"></i>
                                <a href="">예약 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>지점이름</th>
                                                <th>타입</th>
                                                <th>트레이너 이름</th>
                                                <th>예약 날짜</th>
                                                <th>예약 시간</th>
                                                <th>예약자 이름</th>
                                                <th>예약 비밀번호</th>
                                                <th>예약자 연락처</th>
                                                <th>예약 내용</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td>${data.no}</td>
                                                <td>${data.lo_name}</td>
                                                <td>${data.type}</td>
                                                <td>${data.tr_name}</td>
                                                <td>${data.resdate}</td>
                                                <td>${data.restime}</td>
                                                <td>${data.user_name}</td>
                                                <td>${data.user_pw}</td>
                                                <td>${data.user_tel}</td>
                                                <td>${data.content}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-calendar-alt"></i>
                                <a href="">예약 상세</a>
                            </div>
                            <!--예약 상세-->
                            <div class="card-body">
                                <form action="회원정보수정모듈.html" >
                                    <!-- 예약 상세 내역 폼 맞춰 넣기-->
                                    <div class="form-group col-xl-4" style="display: inline-block">
                                        <label for="search">검색 기준</label>
                                        <select class="form-control" id="search">
                                            <option>이름</option>
                                            <option>아이디</option>
                                            <option>닉네임</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-xl-4" style="display: inline-block">
                                        <label for="txt1">검색 명</label>
                                        <input type="text" class="form-control" id="txt1">
                                    </div>
                                    <div class="form-group col-l-2" style="display: inline-block">
                                        <input type="submit" class="form-control  btn btn-info" id="submit1" value="검색">
                                    </div>
                                </form>
                        </div>