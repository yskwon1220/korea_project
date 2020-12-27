<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/intromain.css"/>" /> 
<title>FitNess Club</title>
</head>
	<body class="landing is-preload">

			<div id="page-wrapper">
				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>스페셜 피트니스</h2>
							<p>다이어트 전문 퍼스널 트레이닝<br />
							단 8주,<br />
							리얼 후기 당신이 될 수 있습니다.</p>
							<ul class="actions special">
								<li><a href="../main" class="button primary">together</a></li>
							</ul>
						</div>
					</section>


					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design: <a href="#">박혜지</a></li>
						</ul>
					</footer>

			</div>

			
		 <script src="<c:url value="${path }/resource/js/introjquery.min.js"/>"></script>
         <script src="<c:url value="${path }/resource/js/introjquery.scrollex.min.js"/>"></script>
         <script src="<c:url value="${path }/resource/js/introjquery.scrolly.min.js"/>"></script>
         <script src="<c:url value="${path }/resource/js/introbrowser.min.js"/>"></script>
         <script src="<c:url value="${path }/resource/js/introbreakpoints.min.js"/>"></script>
         <script src="<c:url value="${path }/resource/js/introutil.js"/>"></script>
         <script src="<c:url value="${path }/resource/js/intromain.js"/>"></script>

	</body>
</html>