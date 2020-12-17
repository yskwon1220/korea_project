<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- container fluid 아래부터  -->
                   <h2 class="mt-4">통계</h2>
               <a href="">TOTAL </a> | 
               <a href="">강남점 </a> | 
               <a href="">강북점 </a> |
               <a href="">강서점 </a>
               <ol>
               </ol>
               <div class="row">
                  <div class="col-xl-6">
                     <div class="card mb-4">
                        <div class="card-header">
                           <i class="fas fa-chart-area mr-1"></i> 통계현황1
                        </div>
                        <div class="card-body">
                           <canvas id="myAreaChart" width="100%" height="40"></canvas>
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
                                    <td>총 방문자</td>
                                    <td>1,234,567</td>
                                 </tr>
                                 <tr>
                                    <td>금일 방문자</td>
                                    <td>1,234</td>
                                 </tr>
                                 <tr>
                                    <td>전일 방문자</td>
                                    <td>234</td>
                                 </tr>
                                 <tr>
                                    <td>새 예약</td>
                                    <td>234</td>
                                 </tr>
                                 <tr>
                                    <td>신규회원</td>
                                    <td>234</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-6">
                     <div class="card mb-4">
                        <div class="card-header">
                           <i class="fas fa-chart-area mr-1"></i> 통계현황2
                        </div>
                        <div class="card-body">
                           <canvas id="myBarChart" width="100%" height="40"></canvas>
                        </div>
                        <div class="card-body">
                           <table class="table" width="100%" cellspacing="0">
                              <thead>
                                 <tr>
                                    <th>구분</th>
                                    <th>내용</th>
                                    <th>내용2</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>총 방문자</td>
                                    <td>1,234,567</td>
                                    <td>1,234,567</td>
                                 </tr>
                                 <tr>
                                    <td>금일 방문자</td>
                                    <td>1,234</td>
                                    <td>1,234</td>
                                 </tr>
                                 <tr>
                                    <td>전일 방문자</td>
                                    <td>234</td>
                                    <td>234</td>
                                 </tr>
                                 <tr>
                                    <td>새 예약</td>
                                    <td>234</td>
                                    <td>234</td>
                                 </tr>
                                 <tr>
                                    <td>신규회원</td>
                                    <td>234</td>
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
                     <i class="fas fa-table mr-1"></i>일별 총 방문자 현황
                  </div>
                  <div class="card-body">
                     <div class="table-responsive">
                        <table class="table table-bordered" width="100%" cellspacing="0">
                           <thead>
                              <tr>
                                 <th>일자</th>
                                 <th>시설 이용자</th>
                                 <th>예약횟 수</th>
                                 <th>PT수강자</th>
                                 <th>비고</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>2020/11/25</td>
                                 <td>70</td>
                                 <td>15</td>
                                 <td>27</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/24</td>
                                 <td>70</td>
                                 <td>15</td>
                                 <td>27</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/23</td>
                                 <td>70</td>
                                 <td>15</td>
                                 <td>27</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/22</td>
                                 <td>70</td>
                                 <td>15</td>
                                 <td>27</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/21</td>
                                 <td>70</td>
                                 <td>15</td>
                                 <td>27</td>
                                 <td></td>
                              </tr>

                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>