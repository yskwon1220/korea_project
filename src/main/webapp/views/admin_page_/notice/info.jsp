<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                        <h1 class="mt-4">공지사항 관리</h1>
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
                                                <input type="submit" class="form-control" id="submit1" value="검색">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-bullhorn"></i>
                                <a href="">등록 공지사항</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>글 번호</th>
                                                <th>제목</th>
                                                <th>작성일</th>
                                                <th>작성자</th>
                                                <th>조회수</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>5</td>
                                                <td>크리스마스 관련 공지입니다.</td>
                                                <td>2020/11/25</td>
                                                <td>관리자</td>
                                                <td>0</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>qwer1</td>
                                                <td>2020/10/25</td>
                                                <td>관리자</td>
                                                <td>0</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>vcx2</td>
                                                <td>2020/09/12</td>
                                                <td>관리자</td>
                                                <td>0</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>retesdfsdg2</td>
                                                <td>2020/06/29</td>
                                                <td>관리자</td>
                                                <td>0</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>afdsgvcxv2</td>
                                                <td>2020/02/29</td>
                                                <td>관리자</td>
                                                <td>0</td>
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
                                <a href="">공지사항 상세</a>
                            </div>
                            <!--공지사항 상세-->
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
                                        <input type="submit" class="form-control" id="submit1" value="검색">
                                    </div>
                                </form>
                        </div>