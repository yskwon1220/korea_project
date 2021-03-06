<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                      <h1 class="mt-4">김관리 관리자님, 환영합니다! :)</h1>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                            Page View
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-pen-square"></i>
                                            Page Description
                                    </div>
                                    <div class="card-body">
                                        <table class="table" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>구분</th>
                                                <th>내용</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Total Visitor</td>
                                                <td>1,234,567</td>
                                            </tr>
                                            <tr>
                                                <td>Today Visitor</td>
                                                <td>1,234</td>
                                            </tr>
                                            <tr>
                                                <td>Yesterday Visitor</td>
                                                <td>234</td>
                                            </tr>
                                            <tr>
                                                <td>New Reservation</td>
                                                <td>234</td>
                                            </tr>
                                            <tr>
                                                <td>New Customer Inqury</td>
                                                <td>234</td>
                                            </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="">예약 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>트레이너 명</th>
                                                <th>예약자 명</th>
                                                <th>예약 시간</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>234</td>
                                                <td>이두근과 함께하는 이두박살 PT</td>
                                                <td>이두근</td>
                                                <td>김삼두</td>
                                                <td>2020/04/25</td>
                                                <td>예약 진행중</td>
                                            </tr>
                                            <tr>
                                                <td>233</td>
                                                <td>삼두근과 함께하는 삼두박살 PT</td>
                                                <td>삼두근</td>
                                                <td>강이두</td>
                                                <td>2020/07/25</td>
                                                <td>예약 완료</td>
                                            </tr>
                                            <tr>
                                                <td>232</td>
                                                <td>소돼지와 달려봐요</td>
                                                <td>소돼지</td>
                                                <td>강한말</td>
                                                <td>2020/01/12</td>
                                                <td>예약 취소</td>
                                            </tr>
                                            <tr>
                                                <td>231</td>
                                                <td>김자전거와 함께하는 자전자전 스피닝</td>
                                                <td>김자전거</td>
                                                <td>김오토바이</td>
                                                <td>2020/03/29</td>
                                                <td>예약 완료</td>
                                            </tr>
                                            <tr>
                                                <td>230</td>
                                                <td>김자전거와 함께하는 자전자전 스피닝</td>
                                                <td>김자전거</td>
                                                <td>김신발</td>
                                                <td>2020/03/29</td>
                                                <td>예약 완료</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="">고객문의 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>작성자 명</th>
                                                <th>작성 시간</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>6,321</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>답변 완료</td>
                                            </tr>
                                            <tr>
                                                <td>6,320</td>
                                                <td>살이 찔까요?</td>
                                                <td>강여름</td>
                                                <td>2020/10/25</td>
                                                <td>답변 완료</td>
                                            </tr>
                                            <tr>
                                                <td>6,319</td>
                                                <td>오늘 햄버거 가능?</td>
                                                <td>송가을</td>
                                                <td>2020/09/12</td>
                                                <td>미 답변</td>
                                            </tr>
                                            <tr>
                                                <td>6,318</td>
                                                <td>소주는 살 안찌죠?</td>
                                                <td>구겨울</td>
                                                <td>2020/06/29</td>
                                                <td>답변 완료</td>
                                            </tr>
                                            <tr>
                                                <td>6,317</td>
                                                <td>질문답변 질문답변 질문답변 질문답변 질문답변 질문답변</td>
                                                <td>임계절</td>
                                                <td>2020/02/29</td>
                                                <td>답변 완료</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>