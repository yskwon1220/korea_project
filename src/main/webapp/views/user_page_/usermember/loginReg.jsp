<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginReg</title>
</head>
<body>

<c:if test="${user_id  eq 'idfailed'}">
<script> 
alert("로그인 실패");
		location.href = "/user_page_/usermember/login";
</script>
</c:if>

<c:if test="${user_id  ne 'idfailed'}">
<script> 
		location.href = "/main";
</script>
</c:if>


</body>
</html>