<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>자주묻는 질문</title>

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

<link rel="stylesheet" href="<c:url value="${path}/resource/css/notice.css"/>" />
<style>
		.grade-box .grade { display: inline-block; width: 100px; height: 50px; position: relative; font-size: 20px; vertical-align: top; }
 					.grade-box .grade .grade-star { position: absolute; left: 0; top: 0; height: 50px; color: #ddd; cursor: pointer; }
 					.grade-box .grade .star_gray { width: 100%; }
 					.grade-box .grade .star_yellow { color: #ffd369; overflow: hidden; }
 					.grade-box .grade p { position: absolute; left: 0; bottom: 10px; width: 100%; font-size: 12px; line-height: 1em; margin-bottom: 0;  }
					.star-0 {width: 0%;}
					.star-1 {width: 10%;}
					.star-2 {width: 20%;}
					.star-3 {width: 30%;}
					.star-4 {width: 40%;}
					.star-5 {width: 50%;}
					.star-6 {width: 60%;}
					.star-7 {width: 70%;}
					.star-8 {width: 80%;}
					.star-9 {width: 90%;}
					.star-10 {width: 100%;}
					
					
	</style>
</head>
<body>
<%-- 	<jsp:include page="../inc/headerV3.jsp" />
	<div id="main-wrapper "> --%>
		<div id="board">
			<div id="titleList">
			<c:set var="vo" value="${data }"/>
				<div id="category">이용후기</div>
				<div id="titleName">
					<svg width="1em" height="1em" viewBox="0 0 16 16"
						class="bi bi-chat-right-dots-fill" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd"
							d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
			</svg>
					
					${vo.title }
					
				</div>
				<input type = "hidden" name = "user_id" value = "${user_id }">
				<div class="titleDetail">${vo.user_id }</div>
				<div class="titleDetail">${vo.review_no }</div>
				<div class="titleDetail"><fmt:formatDate value="${vo.regdate }"
											pattern="yy-MM-dd HH:mm" /></div>
				<div class="titleDetail">${vo.tr_no }</div>
				<div class="titleDetail">${vo.lo_no }</div>	
				<div class="titleDetail">
					<div class="grade-box">
	               					<div class="grade no-drag" name="star">
	               						<div class="grade-star star_gray">★★★★★</div>
	               						<div class="grade-star star_yellow star-${vo.starCnt}">★★★★★</div>
	               						
	               					</div>
	               				</div>
				</div>						
				<hr>
				<div class="OutTextBox animate-box" >
					<div>
						<img src="<c:url value="${path}/upup/${vo.review_file_name }"/>" style="width: 500px; height: 300px;"><br>
						<div>${vo.contentBr }</div>
					</div>
				</div>
				
			<div class="bottomB">
					<a class="btn btn-primary" href="reviewlist">목록</a>
					<c:if test = "${sessionScope.user_id  == vo.user_id  }">
						<a class="btn btn-primary" href="reviewmodify?review_no=${vo.review_no }">수정</a>
					</c:if>
					
					<c:if test = "${sessionScope.user_id  == vo.user_id  }">
						<a class="btn btn-primary" href="reviewdelete?review_no=${vo.review_no }">삭제</a>
					</c:if>
				</div>
<!-- 				</form> -->
			</div>
		</div>

</body>
</html>