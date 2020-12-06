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
                        <h1 class="mt-4">판매 관리</h1>
                        <ol>
                        </ol>
                    
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
                        </div>
                </main>
                <!--Footer 푸터 삽입 영역-->
				<jsp:include page="/admin_page/module_admin_footer.jsp"/>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>

        <script src="<c:url value="/assets/demo/chart-bar-demo.js"/>"></script>
        <script src="<c:url value="/assets/demo/chart-area-demo.js"/>"></script>
        <script src="<c:url value="/js/scripts.js"/>"></script>
        <script src="<c:url value="/assets/demo/datatables-demo.js"/>"></script>
    </body>
</html>
