<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <h1 class="mt-4">사용자 관리</h1>
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
                                                <input type="submit" class="form-control  btn btn-info btn-sm" id="submit1" value="검색">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-users"></i>
                                <a href="">회원 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>회원번호</th>
                                                <th>회원 아이디</th>
                                                <th>회원 닉네임</th>
                                                <th>회원 이름</th>
                                                <th>가입일</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>6,321</td>
                                                <td>asdasd123</td>
                                                <td>김봄</td>
                                                <td>김이름</td>
                                                <td>2020/11/25</td>
                                                <td>일반</td>
                                            </tr>
                                            <tr>
                                                <td>6,320</td>
                                                <td>qwer1</td>
                                                <td>강여름</td>
                                                <td>산이름</td>
                                                <td>2020/10/25</td>
                                                <td>일반</td>
                                            </tr>
                                            <tr>
                                                <td>6,319</td>
                                                <td>vcx2</td>
                                                <td>송가을</td>
                                                <td>동물이름</td>
                                                <td>2020/09/12</td>
                                                <td>일반</td>
                                            </tr>
                                            <tr>
                                                <td>6,318</td>
                                                <td>retesdfsdg2</td>
                                                <td>구겨울</td>
                                                <td>날씨이름</td>
                                                <td>2020/06/29</td>
                                                <td>휴면</td>
                                            </tr>
                                            <tr>
                                                <td>6,317</td>
                                                <td>afdsgvcxv2</td>
                                                <td>임계절</td>
                                                <td>구름이름</td>
                                                <td>2020/02/29</td>
                                                <td>일반</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-user-check"></i>
                                <a href="">회원 상세</a>
                            </div>
                            <!--회원 상세-->
                            <div class="card-body">
                                <form action="회원정보수정모듈.html" >
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
                                        <input type="submit" class="form-control  btn btn-info btn-sm" id="submit1" value="검색">
                                    </div>
                                </form>
                        </div>