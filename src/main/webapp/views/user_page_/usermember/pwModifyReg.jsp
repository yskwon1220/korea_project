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
alert("비밀 번호 변경을 실패했습니다.");
		location.href = "/user_page_/usermember/modifyMyPage";
</script>

</c:if>

<c:if test="${modify  ne 'modifyFailed'}">
<script> 
		location.href = "/user_page_/usermember/myPage";
</script>
</c:if>
</body>
</html>