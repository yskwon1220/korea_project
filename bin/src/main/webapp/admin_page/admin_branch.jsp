<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        
        <link rel="stylesheet" href="<c:url value="/assets/css/ad_member_styles.css"/>" />
       <!--  <link href="css/ad_member_styles.css" rel="stylesheet" /> -->
        
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