<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기작성</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3style.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/main.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/as.css"/>" />

<script
	src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<%-- <jsp:include page="../../inc/headerV3.jsp" /> --%>
	<div id="page-wrapper">

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<style type="text/css">
.no-drag {
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	user-select: none;
}

.inner {
	width: 1200px;
	margin: 0 auto;
}

.selecter {
	background-image: url('css/images/arrow_down.png');
	background-repeat: no-repeat;
	background-position: right 15px center;
}

.review-form input:focus, .review-form select:focus, .review-form textarea:focus
	{
	outline: none;
	border-color: #ddd !important;
}

.review-form .btn-box {
	text-align: center;
}

.review-form {
	padding: 50px 0px;
}

.review-form form {
	width: 900px;
	margin: 0 auto;
}

.review-form label {
	margin-bottom: 0;
	font-size: 16px;
	display: inline-block;
}

.review-form textarea {
	resize: none;
}

.input-line {
	position: relative;
	margin-bottom: 10px;
	line-height: 50px;
}

.input-line textarea {
	max-width: 100%;
	min-height: 230px;
	line-height: 1.5em;
}

.label-box {
	padding-left: 80px;
}

.label-box label {
	position: absolute;
	left: 0;
	top: 0;
}

.input-line .grade-box {
	text-align: center;
}

.grade-box .grade {
	display: inline-block;
	width: 200px;
	height: 80px;
	position: relative;
	font-size: 40px;
	vertical-align: top;
}

.grade-box .grade .grade-star {
	position: absolute;
	left: 0;
	top: 0;
	height: 50px;
	color: #ddd;
	cursor: pointer;
}

.grade-box .grade .star_gray {
	width: 100%;
}

.grade-box .grade .star_yellow {
	color: #ffd369;
	overflow: hidden;
}

.grade-box .grade p {
	position: absolute;
	left: 0;
	bottom: 10px;
	width: 100%;
	font-size: 12px;
	line-height: 1em;
	margin-bottom: 0;
}

.input-line .selecter-box {
	float: right;
	display: inline-block;
}

.input-line .selecter {
	width: auto;
	min-width: 150px;
	display: inline-block;
}

.upload_box {
	font-size: 0;
}

.upload_box>label, .upload_box>#image_container {
	display: inline-block;
	vertical-align: top;
}

.upload_box input[type="file"] {
	opacity: 0;
	overflow: hidden;
	height: 0;
	width: 0;
}

.upload_box label {
	position: relative;
	width: 150px;
	height: 150px;
	margin: 0;
	margin-right: 10px;
	background-color: #eee;
	background-image: url('css/images/camera.png');
	background-position: top 35px center;
	background-repeat: no-repeat;
	background-size: 50px;
	border-radius: 5px;
	border: 1px solid #eee;
	cursor: pointer;
	overflow: hidden;
	color: #999;
}

.upload_box label:hover {
	border-color: #ddd;
	color: #fff;
}

.upload_box span {
	font-size: 14px;
	position: absolute;
	bottom: 15px;
	left: 0;
	width: 100%;
	text-align: center;
}

.upload_box span em {
	font-style: inherit;
}

.upload_box #image_container {
	
}

.upload_box #image_container img {
	width: 150px;
	height: 150px;
	margin-right: 10px;
	border-radius: 5px;
	border: 1px solid #eee;
	vertical-align: top;
	overflow: hidden;
}

.upload_box #image_container img:last-child {
	margin-right: 0;
}

.btn-submit {
	min-width: 150px;
	border: 1px solid #bb2205;
	color: #ec524b;
}

.btn-submit:hover {
	border: 1px solid #bb2205;
	background: #ec524b;
	color: #fff;
}

.layerPop {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	display: none;
}

.layerPop.active {
	display: block;
}

.layerPop .pop_content {
	border-radius: 10px;
	position: absolute;
	left: 50%;
	top: 50%;
	min-width: 200px;
	min-height: 200px;
	background: #fff;
	transform: translate(-50%, -50%);
}

.layerPop .pop_content h3 {
	text-align: center;
	padding: 50px;
	margin: 0;
}

.layerPop .pop_content .btn-box {
	padding: 15px 30px;
}

.layerPop .pop_content .btn-box .btn {
	display: block;
	margin-bottom: 10px;
	background: #eee;
	font-weight: 700;
	color: #fff;
}

.layerPop .pop_content .btn-box .btn.submit {
	color: #000;
}

.layerPop .pop_content .btn-box .btn.cancle {
	color: #000;
}
</style>

					<!-- Content -->
					<article class="review-form">
						<div class="inner">

							<form action="reviewinsertreg" method="post" onsubmit="return check();" name="review"
								enctype="multipart/form-data">
								<input type="hidden" name="user_id"
									value="<%=session.getAttribute("user_id")%>" /> <input
									type="hidden" name="starCnt" id="starCnt" value="10">
								<h3>후기 작성</h3>
								<div class="input-line label-box">
						
									<!-- value="${vo.pid} -->
								</div>
								<div class="selecter-box">
		               				<select id="selectLo" name="lo_no" class="selecter" style="background-image: <c:url value="/images/arrow_down.png."/>">
			               				<optgroup label = "지점" name="lo_no">
			               				
											<option selected hidden value="0">지점</option>
			               					<c:forEach items="${data }" var="vo" varStatus="no">
											    <option value="${vo.lo_no}">${vo.lo_name}</option>
											    
											</c:forEach>
											<!-- 
			               					<option>강남점</option>
			               					<option>강동점</option>
			               					<option>강서점</option>
			               					 -->
			               				</optgroup>
			               			</select>

			               			<select id="selectTr"  name="tr_name" class="selecter">
		               					<optgroup label = "트레이너 ">
											<option  selected hidden value="0" >트레이너</option>
											<c:forEach items="${data }" var="vo" varStatus="no">
												 <option value="${vo.tr_name}">${vo.tr_name}</option>
											</c:forEach>
			               				</optgroup>
		               				</select>
	               				</div>
	               		


								<div class="input-line label-box">
									<label>제목</label> <input type="text" name="title" id="title"
										style="width: 600px">

								</div>

								<div class="input-line">
									<div class="grade-box">
										<div class="grade no-drag" name="star">
											<div class="grade-star star_gray">★★★★★</div>
											<div class="grade-star star_yellow">★★★★★</div>
											<p>별표를 탭하여 평가하세요.</p>
										</div>
									</div>
								</div>
								<div class="input-line">
									<textarea name="content" id="content" style="width: 1000px"></textarea>
								</div>
								<div class="input-line">
									<div class="upload_box">
										<input name="review_file" type="file" multiple="multiple"
											id="upload_image" accept="image/*" /> <label class="" for="upload_image">
											<span>사진 <!-- <em class="count">0</em>/4 --></span>
										</label>
										<div id="image_container"></div>
									</div>
								</div>
								<div class="btn-box">
									<input class="btn btn-primary" type="submit" value="등록" onclick="check_onclick()" />

								</div>
							</form>
						</div>
					</article>



				</div>
			</div>
		</div>
	</div>

	<ul id='logs' style='user-select: none;'></ul>

	 <jsp:include page="../../inc/footerV3.jsp" /> 

	<script>
	 function check() {

         if (review.title.value == "") {
            alert("제목을 입력해 주세요.");
            review.title.focus();
            return false;
         }
         else if (review.content.value == "") {
            alert("내용을 입력해 주세요.");
            review.content.focus();
            return false;
         } else if (review.review_file.value == "") {
             alert("파일을 넣어 주세요.");
             review.content.focus();
             return false;
          } else if (review.tr_no.value == "") {
              alert("트레이너명을 선택해 주세요.");
              review.content.focus();
              return false;
          }	else if (review.lo_no.value == "") {
              alert("지점명을 선택해 주세요.");
              review.content.focus();
              return false;
          }	else
              return true;
     	}



		





	
		// 이미지 미리보기
		function setThumbnail(event) {

			var count = $("#image_container img").length;

			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);

				if (count < 4) {
					$("#image_container").append(img);
				} else {
					$("#image_container img:last-child").remove();
					$("#image_container").append(img);
				}

				count = $("#image_container img").length;
				$('.count').html(count);

			};
			reader.readAsDataURL(event.target.files[0]);
		}

		$('.grade').on({
			mousedown : function(event) {

				var star = Math.ceil(event.offsetX / 20)
				$('.star_yellow').width(star * 20);
				console.log("별별별" + star)
				$("#starCnt").val(star)
			},
			mouseup : function(event) {
				//$('.star_yellow').width(event.offsetX);
				var star = Math.ceil(event.offsetX / 20)
				$('.star_yellow').width(star * 20);
				console.log("별별별" + star)
				$("#starCnt").val(star)
			}
		});

		
	</script>
	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

<!-- 	<script>
		$(document).ready(function(){
			var list = new Array();
	
			<c:forEach items="${data.trList}" var="item">
				list.push( { tr_no:"${item.tr_no}",
							 lo_no:"${item.lo_no}",
							 tr_name:"${item.tr_name}"
						});
			</c:forEach>
			
			
			$("#selectLo").on('change',function() {
				var lo_no = $(this).val();
				$('#selectTr optgroup').empty();				
				for ( var i = 0; i < list.length; i++) {
					if( list[i].lo_no == lo_no ){
	
						$('#selectTr optgroup').append("<option value=" + list[i].tr_no + ">" + list[i].tr_name + "</option>");						
					}
					
				}
	
				
				
			});
	
			
		});



	</script> -->
</body>
</html>
