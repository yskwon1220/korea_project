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
	<jsp:include page="/views/admin_page_/module_admin_top.jsp"/>
        <!--메인 컨텐츠 wrapper-->
        <div id="layoutSidenav">
            <!--좌측 네비게이션 세팅-->
  		<jsp:include page="/views/admin_page_/module_admin_sideNav.jsp"/>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">고객문의 관리</h1>
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
                                <i class="fas fa-question"></i>
                                <a href="">고객문의 관리</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>작성자 명</th>
                                                <th>작성 시간</th>
                                                <th>조회수</th>
                                                <th>상태</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>6,321</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>1</td>
                                                <td>답변 완료</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6,320</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>1</td>
                                                <td>답변 완료</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6,319</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>1</td>
                                                <td>미 답변</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6,318</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>1</td>
                                                <td>답변 완료</td>
                                                <td>
                                                    <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">수정</a>
                                                    <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6,317</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>1</td>
                                                <td>답변 완료</td>
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
                                <i class="fas fa-info"></i>
                                <a href="">고객문의 상세</a>
                            </div>
                            <!--고객문의 상세-->
                            <div class="card-body">
                                <form action="고객문의수정모듈.html" >
                                    <!-- 고객문의 상세 + 답변달기-->
                                </form>
                                <div class="row">
                                    <div class="col-xl-12" style="text-align: center;">
                                            <a href="정보 수정 모듈로" class="btn btn-info btn-primary btn-sm">답변 등록</a>
                                    </div>
                            </div>
                            </div>
                    </div>
                </main>
                <!--Footer 푸터 삽입 영역-->
				<jsp:include page="/views/admin_page_/module_admin_footer.jsp"/>
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
