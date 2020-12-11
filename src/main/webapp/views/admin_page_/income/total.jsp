<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
               <h2 class="mt-4">지출</h2>
               <a href="">TOTAL </a> | <a href="">강남점 </a> | <a href="">강북점 </a> |
               <a href="">강서점 </a>
               <ol>
               </ol>
               <div class="row">
                  <div class="col-xl-6">
                     <div class="card mb-4">
                        <div class="card-header">
                           <i class="fas fa-chart-area mr-1"></i> 지출 통계
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
                           <i class="fas fa-chart-area mr-1"></i> 기타 지출금 입력
                        </div>
                        <div class="card-body">
                           <table class="table" width="100%" cellspacing="0">
                              <thead>
                              </thead>
                              <tr>
                                 <td>일자</td>
                                 <td><input type="date" /></td>
                              </tr>
                              <tr>
                                 <td>구분</td>
                                 <td>
                                     <select>
                                       <option value='A'>환불</option>
                                       <option value='B'>기타1</option>
                                       <option value='C'>기타</option>
                                    </select>
                                </td>
                              </tr>
                              <tr>
                                 <td>설명</td>
                                 <td><input type="text" /></td>
                              </tr>
                              <tr>
                                 <td>지출금액</td>
                                 <td><input type="text" /></td>
                              </tr>
                              <tr>
                                 <td>비고</td>
                                 <td><input type="text" /></td>
                              </tr>
                              <tr>
                                 <td colspan="2" align="center"><input type="button" value="제출" /></td>
                              </tr>
                              <tbody>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="card mb-4">
                  <div class="card-header">
                     <i class="fas fa-table mr-1"></i>기타 지출내역
                  </div>
                  <div class="card-body">
                     <div class="table-responsive">
                        <table class="table table-bordered" width="100%" cellspacing="0">
                           <thead>
                              <tr>
                                 <th>일자</th>
                                 <th>구분</th>
                                 <th>설명</th>
                                 <th>지출금액</th>
                                 <th>비고</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>2020/11/25</td>
                                 <td>환불</td>
                                 <td>예약금 현장 환불</td>
                                 <td>27000</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/25</td>
                                 <td>기타</td>
                                 <td>자재구입</td>
                                 <td>30000</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/24</td>
                                 <td>환불</td>
                                 <td>예약금 현장 환불</td>
                                 <td>27000</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/23</td>
                                 <td>환불</td>
                                 <td>예약금 현장 환불</td>
                                 <td>27000</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/22</td>
                                 <td>환불</td>
                                 <td>예약금 현장 환불</td>
                                 <td>27000</td>
                                 <td></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
               <div class="card mb-4">
                  <div class="card-header">
                     <i class="fas fa-table mr-1"></i>일별 총 지출금액
                  </div>
                  <div class="card-body">
                     <div class="table-responsive">
                        <table class="table table-bordered" width="100%" cellspacing="0">
                           <thead>
                              <tr>
                                 <th>일자</th>
                                 <th>총 지출금액</th>
                                 <th>전산 등록금액</th>
                                 <th>비전산 등록금액</th>
                                 <th>비고</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>2020/11/25</td>
                                 <td>34234443</td>
                                 <td>234234</td>
                                 <td>3227</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/24</td>
                                 <td>34423434</td>
                                 <td>34423434</td>
                                 <td>0</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/23</td>
                                 <td>700000</td>
                                 <td>700000</td>
                                 <td>0</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/22</td>
                                 <td>700000</td>
                                 <td>700000</td>
                                 <td>0</td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>2020/11/21</td>
                                 <td>700000</td>
                                 <td>700000</td>
                                 <td>0</td>
                                 <td></td>
                              </tr>

                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>