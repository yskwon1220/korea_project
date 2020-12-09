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
                        <h1 class="mt-4">이벤트 관리</h1>
                        <ol>
                        </ol>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-birthday-cake"></i>
                                <a href="">이벤트 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>이벤트 ID</th>
                                                <th>이벤트 이미지</th>
                                                <th>이벤트 명</th>
                                                <th>이벤트 내용</th>
                                                <th>조회수</th>
                                                <th>등록일</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="align-middle">E101</td>
                                                <td>
                                                	<img class="img-fluid rounded center-block"  src="<c:url value="/images/1.jpg"/>"alt="" />
                                              	</td>
                                                <td class="align-middle">이벤트 11</td>
                                                <td  class="align-middle">할인율 제공</td>
                                                <td class="align-middle">0</td>
                                                <td class="align-middle">2020/11/25</td>
                                                <td class="align-middle">
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-middle">E102</td>
                                                <td>
													<img class="img-fluid rounded center-block"  src="<c:url value="/images/5.jpg"/>"alt="" />
                                                </td>
                                                <td class="align-middle">이벤트 1</td>
                                                <td class="align-middle">할인율 제공</td>
                                                <td class="align-middle">0</td>
                                                <td class="align-middle">2020/11/25</td>
                                                <td class="align-middle">
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-middle">E103</td>
                                                <td>
                                                	<img class="img-fluid rounded center-block"  src="<c:url value="/images/3.jpg"/>"alt="" />
                                                </td>
                                                <td class="align-middle">이벤트 1</td>
                                                <td class="align-middle">할인율 제공</td>
                                                <td class="align-middle">0</td>
                                                <td class="align-middle">2020/11/25</td>
                                                <td class="align-middle">
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-middle">E104</td>
                                                <td>
                                                	<img class="img-fluid rounded center-block"  src="<c:url value="/images/4.jpg"/>"alt="" />
                                                </td>
                                                <td class="align-middle">이벤트 1</td>
                                                <td class="align-middle">할인율 제공</td>
                                                <td class="align-middle">0</td>
                                                <td class="align-middle">2020/11/25</td>
                                                <td class="align-middle">
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-middle">E105</td>
                                                <td>
                                                	<img class="img-fluid rounded center-block"  src="<c:url value="/images/2.jpg"/>"alt="" />
                                                </td>
                                                <td class="align-middle">이벤트 1</td>
                                                <td class="align-middle">할인율 제공</td>
                                                <td class="align-middle">0</td>
                                                <td class="align-middle">2020/11/25</td>
                                                <td class="align-middle">
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
                                <a href="">이벤트 상세</a>
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
                                <a href="">이벤트 등록</a>

                            </div>
                                <!--상품 등록 폼 보고 작성-->
                                <div class="card-body">
                                    <form action="상품등록모듈.html" >
                                        <div class="row">
                                            <div class="col-xl-12" style="text-align: center;">
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">이벤트 등록</a>
                                            </div>
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
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>

         <script src="<c:url value="/assets/demo/chart-bar-demo.js"/>"></script>
         <script src="<c:url value="/assets/demo/chart-area-demo.js"/>"></script>
         <script src="<c:url value="/js/scripts.js"/>"></script>
         <script src="<c:url value="/assets/demo/datatables-demo.js"/>"></script>
    </body>
</html>