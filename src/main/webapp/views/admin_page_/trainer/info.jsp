<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <c:set var="path" value="${pageContext.request.contextPath}"/> --%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        <link rel="stylesheet" href="/bootstrap-4.5.3-dist/css/ad_member_styles.css"/>
        <link href="/bootstrap-4.5.3-dist/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>
        <script src="/bootstrap-4.5.3-dist/js/all.min.js"/></script>
    </head>
    <body class="sb-nav-fixed">
    <jsp:include page="/views/admin_page_/module_admin_top.jsp"/>
        <!--메인 컨텐츠 wrapper-->
        <div id="layoutSidenav">
            <!--좌측 네비게이션 세팅-->
   			<jsp:include page="/views/admin_page_/module_admin_sideNav.jsp"/>
            <div id="layoutSidenav_content">
                <main>
                      <div class="container-fluid">
                        <h1 class="mt-4">트레이너 관리</h1>
                        ${path}
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
                                                    <option>직원번호</option>
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
                                <i class="fas fa-id-badge"></i>
                                <a href="">직원 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>직원 번호</th>
                                                <th>지점 번호</th>
                                                <th>관리자 유무</th>
                                                <th>사진</th>
                                                <th>직원 이름</th>
                                                <th>직원 경력</th>
                                                <th>회원 평가 점수</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${data}" var="data">
                                            <tr>
                                                <td>${data.tr_no}</td>
                                                <td>${data.lo_no}</td>
                                                <td>${data.isManage}</td>
                                                <td>${data.tr_pic}</td>
                                                <td>${data.tr_name}</td>
                                                <td>${data.tr_info}</td>
                                                <td>${data.stars}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">직원 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
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
                                        <input type="submit" class="form-control btn btn-info" id="submit1" value="검색">
                                    </div>
                                </form>
                        </div>
                        <!--직원 가입 폼 확인 후 수정-->
                    </div>
                </main>
                <!--Footer 푸터 삽입 영역-->
				<jsp:include page="/views/admin_page_/module_admin_footer.jsp"/>
            </div>
        </div>
        <script src="/bootstrap-4.5.3-dist/js/jquery-3.5.1.slim.min.js"/></script>
        <script src="/bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"/></script>
        <script src="/bootstrap-4.5.3-dist/js/jquery.dataTables.min.js"/></script>
        <script src="/bootstrap-4.5.3-dist/js/dataTables.bootstrap4.min.js"/></script>
<!--         <script src="/bootstrap-4.5.3-dist/js/Chart.min.js"/></script> -->

        <script src="/bootstrap-4.5.3-dist/demo/chart-bar-demo.js"/></script>
        <script src="/bootstrap-4.5.3-dist/demo/chart-area-demo.js"/></script>
        <script src="/bootstrap-4.5.3-dist/js/scripts.js"/></script>
        <script src="/bootstrap-4.5.3-dist/demo/datatables-demo.js"/></script>
    </body>
</html>

