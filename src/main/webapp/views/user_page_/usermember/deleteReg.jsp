<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.korea.health.user.model.usermember.UserMemberVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원탈퇴</title>
<c:if test="${delete  eq 'deletefailed'}">
<script> 
alert("비밀번호가 틀렸습니다");
		location.href = "/user_page_/usermember/modifyMyPage";
</script>
</c:if>

<c:if test="${delete  ne 'deleteFailed'}">
<script> 
alert("탈퇴가 완료되었습니다");
		location.href = "/main";
</script>
</c:if>

</body>
</html>