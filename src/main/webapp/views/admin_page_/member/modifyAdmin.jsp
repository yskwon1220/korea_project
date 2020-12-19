<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>

<html>
<head>
<title>관라자권한주기</title>


<c:if test="${modify  eq 'modifyfailed'}">
	<script> 
	alert("관리자권한주기 실패");
		location.href ="/admin_page_/member/detail?user_no=${data.user_no}";
	</script>
</c:if>

<c:if test="${modify  eq 'modifySuccess'}">
	<script> 
	alert("관리자권한주기 성공");
			location.href ="/admin_page_/member/detail?user_no=${data.user_no}";
	</script>
</c:if>

</body>
</html>