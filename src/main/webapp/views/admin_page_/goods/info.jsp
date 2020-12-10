<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                       <h1 class="mt-4">상품 관리</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-dumbbell"></i>
                                <a href="">등록 상품 관리</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>상품 ID</th>
                                                <th>상품명</th>
                                                <th>상품 가격</th>
                                                <th>조회수</th>
                                                <th>구매량</th>
                                                <th>등록일</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>5</td>
                                                <td>30일 센터 이용권</td>
                                                <td>54,000원</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>90일 센터 이용권</td>
                                                <td>150,000원</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>180일 센터 이용권</td>
                                                <td>250,000원</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>PT 10회 이용권</td>
                                                <td>300,000원</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>PT 5회 이용권</td>
                                                <td>175,000원</td>
                                                <td>0</td>
                                                <td>0</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="">등록 상품 상세</a>
                            </div>
                                <!--등록상품 상세 (상품명 눌럿을경우 나옴)-->
                                <div class="card-body">
                                    <form action="등록상품수정모듈.html" >
                                    </form>
                             </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-sticky-note"></i>
                                <a href="">상품 등록</a>
                            </div>
                                <!--상품 등록 폼 보고 작성-->
                                <div class="card-body">
                                    <form action="상품등록모듈".html" >
                                    </form>
                             </div>