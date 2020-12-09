<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
	
<!DOCTYPE html>
<html>
<head>
<title>FITNESS CLUB</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
</head>

<body class="is-preload homepage">
	<div id="page-wrapper">
<jsp:include page="../inc/header2.jsp" />
		<!-- Banner -->
		<div id="banner-wrapper">
			<div id="banner" class="box container">
				<div class="row">
					<div class="col-7 col-12-medium">
						<h2>Hi. This is Verti.</h2>
						<p>It's a free responsive site template by HTML5 UP</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Features -->
		<div id="features-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-4 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic01.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<h2>Put something here</h2>
									<p>Maybe here as well I think</p>
								</header>
								<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
									lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
							</div>
						</section>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic02.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<h2>An interesting title</h2>
									<p>This is also an interesting subtitle</p>
								</header>
								<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
									lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
							</div>
						</section>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="../images/pic03.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<h2>Oh, and finally ...</h2>
									<p>Here's another intriguing subtitle</p>
								</header>
								<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
									lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
							</div>
						</section>

					</div>
				</div>
			</div>
		</div>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row gtr-200">
					<div class="col-4 col-12-medium">

						<!-- Sidebar -->
						<div id="sidebar">
							<section class="widget thumbnails">
								<h3>Interesting stuff</h3>
								<div class="grid">
									<div class="row gtr-50">
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic04.jpg"
												alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic05.jpg"
												alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic06.jpg"
												alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic07.jpg"
												alt="" /></a>
										</div>
									</div>
								</div>
								<a href="#" class="button icon">More</a>
							</section>
						</div>

					</div>
					<div class="col-8 col-12-medium imp-medium">

						<!-- Content -->
						<div id="content">
							<section class="last">
								<h2>So what's this all about?</h2>
								<p>
									This is <strong>Verti</strong>, a free and fully responsive
									HTML5 site template by <a href="http://html5up.net">HTML5
										UP</a>. Verti is released under the <a
										href="http://html5up.net/license">Creative Commons
										Attribution license</a>, so feel free to use it for any personal
									or commercial project you might have going on (just don't
									forget to credit us for the design!)
								</p>
								<p>Phasellus quam turpis, feugiat sit amet ornare in,
									hendrerit in lectus. Praesent semper bibendum ipsum, et
									tristique augue fringilla eu. Vivamus id risus vel dolor auctor
									euismod quis eget mi. Etiam eu ante risus. Aliquam erat
									volutpat. Aliquam luctus mattis lectus sit amet phasellus quam
									turpis.</p>
								<a href="#" class="button icon solid">Continue
									Reading</a>
							</section>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="inc/footer.jsp" />

	<!-- Scripts -->	
	<script src="<c:url value="../assets/js/jquery.min.js"/>"></script>
   <script src="<c:url value="../assets/js/jquery.dropotron.min.js"/>"></script>
   <script src="<c:url value="../assets/js/browser.min.js"/>"></script>
   <script src="<c:url value="../assets/js/breakpoints.min.js"/>"></script>
   <script src="<c:url value="../assets/js/util.js"/>"></script>
   <script src="<c:url value="../assets/js/main.js"/>"></script>
	

</body>
</html>