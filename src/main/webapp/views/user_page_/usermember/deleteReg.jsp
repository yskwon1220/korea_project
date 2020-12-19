<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.korea.health.user.model.usermember.UserMemberVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원정보 수정 완료</title>
<c:if test="${delete  eq 'deletefailed'}">
<script> 
alert("비밀번호가 틀렸습니다");
		location.href = "/user_page_/usermember/modifyMyPage";
</script>
<%--     <c:out value="${str}" /> --%>
</c:if>

<c:if test="${delete  ne 'deleteFailed'}">
<script> 
alert("회원탈퇴 성공");
		location.href = "/MainV3";
</script>
</c:if>

</body>
</html>