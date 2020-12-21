<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<c:set var="path" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheck</title>
</head>
<body>
<c:if test="${user_id  ne 'idCheckFailed'}">
<center><h3> "${user_id}"는 사용 가능한 ID입니다.</h3></center>
<!-- <input type="hidden" id = "idAvailable" value="ok"/> -->
</c:if>

<c:if test="${user_id  eq 'idCheckFailed'}">
<center><h3>사용 불가능한 ID입니다.</h3></center>
<!-- <input type="hidden" id = "idNonAvailable" value="no"/> -->
</c:if>
</body>
</html>