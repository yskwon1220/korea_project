<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    

<c:if test="${modify  eq 'modifyfailed'}">
	<script> 
	var temp = ${data.customer_no};
	alert("관리자권한뺏기 실패");
		location.href ="detail?user_no=${data.user_no}";
	</script>
</c:if>
<c:if test="${modify  eq 'modifySuccess'}">
	<script> 
	alert("관리자권한뺏기 성공");
			location.href ="detail?user_no=${data.user_no}";
	</script>
</c:if>
