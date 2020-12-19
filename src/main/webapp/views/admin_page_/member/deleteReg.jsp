<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원정보 삭제</title>
<c:if test="${delete  eq 'deletefailed'}">
<script> 
alert("삭제 실패");
		location.href = "/admin_page_/member/detail?"${data.user_no};
</script>
</c:if>

<c:if test="${delete  eq 'deleteOk'}">
<script> 
alert("회원삭제 성공");
		location.href = "/admin_page_/member/info";
</script>
</c:if>

</body>
</html>