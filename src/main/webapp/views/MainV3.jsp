<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FitNess Club</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="shortcut icon" href="favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" />

<script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>

</head>
<body>
	<jsp:include page="inc/headerV3.jsp" />
	<div id="fh5co-page">
		<div class="container"></div>
		<aside id="fh5co-hero" class="js-fullheight">
			<div class="flexslider js-fullheight">
				<ul class="slides">
					<li style="background-image: url(../resource/images/intro01.jpg);">
						<div class="overlay-gradient"></div>
						<div class="container">
							<div
								class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
								<div class="slider-text-inner">
									<h2>Winning and losing isn't everything. Sometimes, the
										journey is just as important as the outcome.</h2>
									<p style="color: white; font-weight: bold">이기고 지는 것이 전부가
										아니다. 때때로 그 여정은 결과만큼 중요하다.</p>
									<%-- <p><a href="<c:url value="style_hyeji/introMain.jsp"/>" class="btn btn-primary btn-lg">더 알아보기</a></p> --%>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(../resource/images/intro02.jpg);">
						<div class="container">
							<div
								class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
								<div class="slider-text-inner">
									<h2>He who has health hope; and he who has hope has everything</h2>
									<p style="color: white; font-weight: bold">
										건강을 가진 자는 희망이 있는 자요, 희망이 있는 자는 모든것을 가진 자다.
										</p>
									<!-- <p><a href="#" class="btn btn-primary btn-lg">Get started</a></p> -->
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(../resource/images/intro03.jpg);">
						<div class="container">
							<div
								class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
								<div class="slider-text-inner">
									<h2>Take care of your body. It's the only place you have to live.</h2>
									<p style="color: white; font-weight: bold">
										너의 몸을 건강하게 잘 돌보라, 그것은 당신이 살아갈 수 있는 유일한 장소이다.
										</p>
									<!-- <p><a href="#" class="btn btn-primary btn-lg">Get started</a></p> -->
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</aside>
		
				<div id="fh5co-services-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>Fitness Club 운영철칙</h2>
						<p>안전하고 쾌적한 운동을 위한 환경과 친절한 서비스로 보답하겠습니다.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box">
						<div class="services">
							<i class="icon-laptop"></i>
							<div class="desc">
								<h3>시설 방역</h3>
								<p>
								일 3회 내부시설 전체 방역 및 소독을 철저하게 진행하고 있습니다.
								 </p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="services">
							<i class="icon-laptop"></i>
							<div class="desc">
								<h3>전면 예약제</h3>
								<p>
								안전하고 쾌적하게 이용하실 수 있도록 시간별 시설 이용인원 제한 및 전면 예약제를 실시하고 있습니다.
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="services">
							<i class="icon-money"></i>
							<div class="desc">
								<h3>합리적인 비용</h3>
								<p>
								멤버쉽 가입시 Fitness Club 전 지점에서 이용 가능하며
								<br>합리적인 균일가로 이용하실 수 있습니다.
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="services">
							<i class="icon-tablet"></i>
							<div class="desc">
								<h3>방역지침 준수</h3>
								<p>감염병 예방을 위해 시설 출입시 체온 측정 및 출입명부 작성, 거리두기 유지로
								방역 수칙을 철저하게 관리하고 있습니다.
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="services">
							<i class="icon-line-chart"></i>
							<div class="desc">
								<h3>전문적인 PT</h3>
								<p>
								국제 트레이너 자격증(FISAF)을 취득한 전문 트레이너로 구성되어
								체계적인 맞춤 PT를 제공해드립니다.
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="services">
							<i class="icon-pie-chart"></i>
							<div class="desc">
								<h3>최신 시설</h3>
								<p>
								최신식 운동 기구들을 다량 보유하고 있으며 샤워장과 사우나가 구비되어 있습니다.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="fh5co-work-section" class="fh5co-light-grey-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>Fitness Club Notice</h2>
						<hr>
						<p> _ </p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box">
						<a href="#" class="item-grid text-center">
							<div class="image"
								style="background-image: url(../resource/images/fit05.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">2020년11월 소식</h3>
									<h5 class="category">소식 안내</h5>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="item-grid text-center">
							<div class="image"
								style="background-image: url(../resource/images/fit06.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">2020년 12월 소식</h3>
									<h5 class="category">소식 안내</h5>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="item-grid text-center">
							<div class="image"
								style="background-image: url(../resource/images/fit01.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">시설 이용안내</h3>
									<h5 class="category">상세보기</h5>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="item-grid text-center">
							<div class="image"
								style="background-image: url(../resource/images/fit03.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">지점별 소식</h3>
									<h5 class="category">지점별 소식 모음</h5>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="item-grid text-center">
							<div class="image"
								style="background-image: url(../resource/images/fit04.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">시설 이용시 주의사항</h3>
									<h5 class="category">주의사항 보기</h5>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="item-grid text-center">
							<div class="image"
								style="background-image: url(../resource/images/fit11.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">새 소식</h3>
									<h5 class="category">새소식 상세</h5>
								</div>
							</div>
						</a>
					</div>
<!-- 					<div class="col-md-12 text-center animate-box">
						<p>
							<a href="#" class="btn btn-primary with-arrow">View More
								Projects <i class="icon-arrow-right"></i>
							</a>
						</p>
					</div> -->
				</div>
			</div>
		</div>
				<div id="fh5co-blog-section" class="fh5co-light-grey-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>이용후기</h2>
						<hr>
						<p>FitNess Club 회원님들의 실제 이용후기입니다.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4 animate-box">
						<a href="#" class="item-grid">
							<div class="image"
								style="background-image: url(../resource/images/fitmain01.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">역시 꾸준히 운동한 보람이 있습니다.</h3>
									<h5 class="date">
										<span>June 23, 2016</span> | <span>4 Comments</span>
									</h5>
									<p>꾸준히 운동을 진행하면서 바디프로필에 대한 목적이 생겨 인생 바디를 만들어보자라는 마음을
									갖고 pt를 받게 되었습니다.</p>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-sm-4 animate-box">
						<a href="#" class="item-grid">
							<div class="image"
								style="background-image: url(../resource/images/1.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">정말 감사합니다.</h3>
									<h5 class="date">
										<span>June 22, 2016</span> | <span>10 Comments</span>
									</h5>
									<p>떨어진 체력과 근력을 회복하고자 운동을 시작했습니다. 운동에 흥미를 느끼면서 더욱 큰
									목적을 가지게 되었습니다.</p>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-sm-4 animate-box">
						<a href="#" class="item-grid">
							<div class="image"
								style="background-image: url(../resource/images/01.jpg)"></div>
							<div class="v-align">
								<div class="v-align-middle">
									<h3 class="title">정말 최고입니다.</h3>
									<h5 class="date">
										<span>June 22, 2016</span> | <span>10 Comments</span>
									</h5>
									<p>평소에 운동을 진행하면서 버킷리스트로 바디프로필 에 대한 목적이 생겨 pt를 받게 되었습니다.</p>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-12 text-center animate-box">
						<p>
							<a href="#" class="btn btn-primary with-arrow">더 보기
								<i class="icon-arrow-right"></i>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>

<!-- 
		<div id="fh5co-testimony-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>Clients Feedback</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-offset-0 to-animate">
						<div class="wrap-testimony animate-box">
							<div class="owl-carousel-fullwidth">
								<div class="item">
									<div class="testimony-slide active text-center">
										<figure>
											<img src="../images/person1.jpg" alt="user">
										</figure>
										<blockquote>
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>
										<span>Athan Smith, via <a href="#" class="twitter">Twitter</a></span>
									</div>
								</div>
								<div class="item">
									<div class="testimony-slide active text-center">
										<figure>
											<img src="../images/person2.jpg" alt="user">
										</figure>
										<blockquote>
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>
										<span>Nathalie Kosley, via <a href="#" class="twitter">Twitter</a></span>
									</div>
								</div>
								<div class="item">
									<div class="testimony-slide active text-center">
										<figure>
											<img src="..images/person3.jpg" alt="user">
										</figure>
										<blockquote>
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>
										<span>Yanna Kuzuki, via <a href="#" class="twitter">Twitter</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
 -->
<!-- 		<div id="fh5co-pricing-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>Pricing</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<div class="row">
					<div class="pricing">
						<div class="col-md-3 animate-box">
							<div class="price-box">
								<h2 class="pricing-plan">Starter</h2>
								<div class="price">
									<sup class="currency">$</sup>9<small>/month</small>
								</div>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
								<a href="#" class="btn btn-select-plan btn-sm">Select Plan</a>
							</div>
						</div>

						<div class="col-md-3 animate-box">
							<div class="price-box">
								<h2 class="pricing-plan">Basic</h2>
								<div class="price">
									<sup class="currency">$</sup>27<small>/month</small>
								</div>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
								<a href="#" class="btn btn-select-plan btn-sm">Select Plan</a>
							</div>
						</div>

						<div class="col-md-3 animate-box">
							<div class="price-box popular">
								<h2 class="pricing-plan pricing-plan-offer">
									Pro <span>Best Offer</span>
								</h2>
								<div class="price">
									<sup class="currency">$</sup>74<small>/month</small>
								</div>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
								<a href="#" class="btn btn-select-plan btn-sm">Select Plan</a>
							</div>
						</div>

						<div class="col-md-3 animate-box">
							<div class="price-box">
								<h2 class="pricing-plan">Unlimited</h2>
								<div class="price">
									<sup class="currency">$</sup>140<small>/month</small>
								</div>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
								<a href="#" class="btn btn-select-plan btn-sm">Select Plan</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="fh5co-cta"
			style="background-image: url(../images/slide_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="col-md-12 text-center animate-box">
					<h3>We Try To Update The Site Everyday</h3>
					<p>
						<a href="#" class="btn btn-primary btn-outline with-arrow">Get
							started now! <i class="icon-arrow-right"></i>
						</a>
					</p>
				</div>
			</div>
		</div>

 -->

	</div>


	<jsp:include page="inc/footerV3.jsp" />


	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

</body>
</html>