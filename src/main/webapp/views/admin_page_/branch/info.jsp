<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                        <h1 class="mt-4">지점 관리</h1>
                        <ol>
                        </ol>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-code-branch"></i>
                                <a href="">지점 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>지점 ID</th>
                                                <th>지점명</th>
                                                <th>지점 위치</th>
                                                <th>직원 수</th>
                                                <th>회원 수</th>
                                                <th>지점 등록일</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>B1001</td>
                                                <td>피트니스 센터 강남점</td>
                                                <td>서울시 강남구 도교동 도교마을 123-1 19층</td>
                                                <td>15명</td>
                                                <td>230명</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>B1002</td>
                                                <td>피트니스 센터 강북점</td>
                                                <td>서울시 종로구 종로동 종로마을 123-1 2층</td>
                                                <td>15명</td>
                                                <td>230명</td>
                                                <td>2020/11/25</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>B1003</td>
                                                <td>피트니스 센터 강동점</td>
                                                <td>서울시 강동구 강동동 강동마을 123-1 63층</td>
                                                <td>15명</td>
                                                <td>230명</td>
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
                                <i class="far fa-building"></i>
                                <a href="">지점 상세</a>
                            </div>
                                <!--등록상품 상세 (상품명 눌럿을경우 나옴)-->
                                <div class="card-body">
                                    <form action="등록상품수정모듈.html" >
                                    </form>
                             </div>
                        </div>
                        <div class="row">
                                <div class="col-xl-12" style="text-align: center;">
                                        <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">지점 등록</a>
                                </div>
                        </div>