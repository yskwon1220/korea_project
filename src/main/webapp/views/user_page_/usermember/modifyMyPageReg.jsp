<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.korea.health.user.model.usermember.UserMemberVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>비밀번호 수정완료</title>
	<c:set var="path" value="${pageContext.request.contextPath}" /> 
<c:if test="${modify  eq 'modifyFailed'}">
<script> 
alert("수정 실패");
		location.href = "/user_page_/usermember/pwModify";
</script>

</c:if>

<c:if test="${modify  ne 'modifyFailed'}">
<script> 
		location.href = "/user_page_/usermember/myPage";
</script>
</c:if>
</body>
</html>