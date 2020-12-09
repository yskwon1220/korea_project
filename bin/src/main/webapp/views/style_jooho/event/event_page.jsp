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
       
      <div id="page-wrapper">


		<h1>이벤트</h1>

		<div class="tot">
		
		<c:forEach begin="0" end="2" var="i">
			<div class="big">
				
			<c:forEach items="${eventSel }" var="arr">
				<div class="small_div">
					<div class="main_img">
						<a href="${arr[0] }?event_no=${data.get(i).event_no}"><img src="<c:url value="${path }/resource/images/${data.get(i).main_img }"/>"></a>
					</div>
					<div class="main_text"><a href="${arr[0] }?${data.get(i).event_no}"">${data.get(i).title }</a></div>
				</div>
				
			</c:forEach>
	
			</div>
		</c:forEach>
		</div>

     </div>



	
</body>
</html>