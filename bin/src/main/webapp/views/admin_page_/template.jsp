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
        <title>관리자 - ${kind.cate}</title>
        <link rel="stylesheet" type="text/css" href="/resource/bootstrap-4.5.3-dist/css/ad_member_styles.css" />
        <link rel="stylesheet" type="text/css" href="/resource/bootstrap-4.5.3-dist/css/dataTables.bootstrap4.min.css"/>
        <script src="/resource/bootstrap-4.5.3-dist/js/all.min.js"/></script>
    </head>
     <body class="sb-nav-fixed">
    	<jsp:include page="/views/admin_page_/module_admin_top.jsp"/>
       <!--메인 컨텐츠 wrapper-->
        <div id="layoutSidenav">
        	 	 <!--좌측 네비게이션 세팅-->
        	<div id="layoutSidenav_nav">
        		<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
          			<jsp:include page="/views/admin_page_/module_admin_sideNav.jsp"/>
          		</nav>
          	</div>
            	<!-- 메인 페이지 세팅 -->
            <div id="layoutSidenav_content">
            	<main>
            		<div class="container-fluid">
             			<jsp:include page="${kind.mainUrl}"/>
             		</div>
            	</main>
                <!--Footer 푸터 삽입 영역-->
				<jsp:include page="/views/admin_page_/module_admin_footer.jsp"/>
            </div>
        </div>
    </body>
        <script src="/resource/bootstrap-4.5.3-dist/js/jquery-3.5.1.min.js"/></script>
        <script src="/resource/bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"/></script>
        <script src="/resource/bootstrap-4.5.3-dist/js/Chart.js" /></script>
        <script src="/resource/bootstrap-4.5.3-dist/js/jquery.dataTables.min.js"/></script>
        <script src="/resource/bootstrap-4.5.3-dist/js/dataTables.bootstrap4.min.js"/></script>

        <script src="/resource/bootstrap-4.5.3-dist/demo/chart-bar-demo.js"/></script>
        <script src="/resource/bootstrap-4.5.3-dist/demo/chart-area-demo.js"/></script>
        <script src="/resource/bootstrap-4.5.3-dist/js/scripts.js"/></script>
        <script src="/resource/bootstrap-4.5.3-dist/demo/datatables-demo.js"/></script>
</html>