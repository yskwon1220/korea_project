<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <script>
	$(document).ready(function() {
		alert("예약정보가 수정 되었습니다.");
	})
	// 오빠 뭔지몰라서 이걸로 변경했어요 !
</script>

<%-- 
 -->
<script type="text/javascript">
	$(document).ready(function(){
	        $("#myModal").modal();
	});
</script>
<jsp:forward page="/admin_page_/trainer/detail?tr_no=${data.tr_no}"></jsp:forward> --%>

                        
<jsp:forward page="/admin_page_/reservation/info"></jsp:forward>