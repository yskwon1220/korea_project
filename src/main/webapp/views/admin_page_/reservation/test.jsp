<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
<script>
	function searchCheck(frm) {
		if (frm.keyWord.value.trim() == "") {
			alert("검색 단어를 입력하세요.");
			frm.keyWord.focus();
			return;
		}
		frm.submit();
	}
</script>
           <form method="get">
				<select name="keyField">
					<option value="0">----선택----</option>
					<option value="lo_name">지점명</option>
					<option value="user_name">예약자</option>
					<option value="user_tel">전화번호</option>
				</select> <input type="text" name="keyWord" /> <input type="button"
					value="검색" onclick="searchCheck(form)" />

			</form> 
			
	
		<form name="form1" method="get">

			<select name="search_option">
				<option value="lo_name"
					<c:if test="${data.search_option == 'lo_name'}">selected</c:if>>지점 이름</option>

				<option value="user_id"
					<c:if test="${data.search_option == 'user_id'}">selected</c:if>>예약자 성명</option>

				<option value="user_tel"
					<c:if test="${data.search_option == 'user_tel'}">selected</c:if>>예약자 연락처</option>

				<option value="all"
					<c:if test="${data.search_option == 'all'}">selected</c:if>>모두검색</option>

			</select> <input name="keyword" value="${data.keyword}"> <input
				type="submit" value="조회">
		</form>

	
 -->
