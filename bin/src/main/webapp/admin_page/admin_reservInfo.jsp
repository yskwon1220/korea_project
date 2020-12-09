<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        
        <link rel="stylesheet" href="<c:url value="/assets/css/ad_member_styles.css"/>" />
        
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
       <jsp:include page="/admin_page/module_admin_top.jsp"/>
        <!--메인 컨텐츠 wrapper-->
        <div id="layoutSidenav">
            <!--좌측 네비게이션 세팅-->
           <jsp:include page="/admin_page/module_admin_sideNav.jsp"/>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
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
                                                <th>예약번호</th>
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
                    </div>
                </main>
                <!--Footer 푸터 삽입 영역-->
				<jsp:include page="/admin_page/module_admin_footer.jsp"/>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>

        <script src="<c:url value="/assets/demo/chart-bar-demo.js"/>"></script>
        <script src="<c:url value="/assets/demo/chart-area-demo.js"/>"></script>
        <script src="<c:url value="/js/scripts.js"/>"></script>
        <script src="<c:url value="/assets/demo/datatables-demo.js"/>"></script>
    </body>
</html>
