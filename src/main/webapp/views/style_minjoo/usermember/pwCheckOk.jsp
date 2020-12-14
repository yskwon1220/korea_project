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

<c:if test="${pw  eq 'pwfailed'}">
<script> 
alert("비밀번호가 틀렸습니다 ");
		location.href = "/style_minjoo/usermember/pwCheck";
</script>
<%--     <c:out value="${str}" /> --%>
</c:if>

<c:if test="${pw  ne 'pwfailed'}">
<script> 
alert("비밀번호가 맞았습니다.");
		location.href = "/style_minjoo/usermember/modifyMyPage";
</script>
</c:if>


</body>
</html>