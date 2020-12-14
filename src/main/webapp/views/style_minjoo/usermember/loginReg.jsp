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



<%-- ${id} --%>
<%-- <c:set var="name" value="${id}" /> --%>

<c:if test="${id  eq 'idfailed'}">
<script> 
alert("로그인 실패");
		location.href = "/style_minjoo/usermember/login";
</script>
<%--     <c:out value="${str}" /> --%>
</c:if>

<c:if test="${id  ne 'idfailed'}">
<script> 
alert("로그인 성공");
		location.href = "/MainV3";
</script>
</c:if>


</body>
</html>