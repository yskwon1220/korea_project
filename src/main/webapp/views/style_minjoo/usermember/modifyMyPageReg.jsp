<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.korea.health.user.model.usermember.UserMemberVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원정보 수정 완료</title>
<c:if test="${modify  eq 'modifyFailed'}">
<script> 
alert("수정 실패");
		location.href = "/style_minjoo/usermember/modifyMyPage";
</script>
<%--     <c:out value="${str}" /> --%>
</c:if>

<c:if test="${modify  ne 'modifyFailed'}">
<script> 
alert("수정 성공");
		location.href = "/style_minjoo/usermember/myPage";
</script>
</c:if>
</body>
</html>