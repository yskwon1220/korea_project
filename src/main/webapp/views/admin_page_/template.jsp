<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        
        <link rel="stylesheet" type="text/css"  href="<c:url value="${path}/resource/bootstrap-4.5.3-dist/css/ad_member_styles.css" />"/>
        <link href="<c:url value="${path}/resource/bootstrap-4.5.3-dist/css/dataTables.bootstrap4.min.css"/>" rel="stylesheet" crossorigin="anonymous" />
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/all.min.js"/>" crossorigin="anonymous"/></script>
    </head>
     <body class="sb-nav-fixed">
    	<jsp:include page="/views/admin_page_/module_admin_top.jsp"/>
       <!--메인 컨텐츠 wrapper-->
        <div id="layoutSidenav">
        	 	 <!--좌측 네비게이션 세팅-->
          		<jsp:include page="/views/admin_page_/module_admin_sideNav.jsp"/>
            <div id="layoutSidenav_content">
            	<!-- 메인 페이지 세팅 -->
             	<jsp:include page="${mainUrl}"/>
                <!--Footer 푸터 삽입 영역-->
				<jsp:include page="/views/admin_page_/module_admin_footer.jsp"/>
            </div>
        </div>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/jquery-3.5.1.slim.min.js"/>" crossorigin="anonymous"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"/>" crossorigin="anonymous"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/Chart.min.js" />"crossorigin="anonymous"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/jquery.dataTables.min.js"/>" crossorigin="anonymous"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/dataTables.bootstrap4.min.js"/>" crossorigin="anonymous"></script>

        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/demo/chart-bar-demo.js"/>"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/demo/chart-area-demo.js"/>"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/js/scripts.js"/>"></script>
        <script src="<c:url value="${path}/resource/bootstrap-4.5.3-dist/demo/datatables-demo.js"/>"></script>
    </body>
</html>