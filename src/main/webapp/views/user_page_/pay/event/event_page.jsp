<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 

<link rel="stylesheet" href="<c:url value="${path }/resource/css/event_page.css"/>" />

</head>
 <body>
 	<ol></ol>
 	<ol></ol>
 	<ol></ol>
      <div id="page-wrapper" style="margin: auto auto">
		<div><h1>이벤트</h1></div>
		<div class="tot text-center">
			<div class="big text-center">
			<c:forEach items="${data }" var="arr">
				<div class="small_div">
					<div class="main_img">
						<a href="event_detail?event_no=${arr.event_no}"><img src="<c:url value="${path }/resource/images/${arr.main_img }"/>"></a>
					</div>
					<div class="main_text"><a href="event_detail?event_no=${arr.event_no}">${arr.title }</a></div>
				</div>
			</c:forEach>
			</div>
		</div>
     </div>



	
</body>
</html>