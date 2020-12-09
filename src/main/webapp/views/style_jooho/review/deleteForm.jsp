<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<script>

function gogo(){
	
	
	//alert("와 gogo 다");  // 확인 버튼 만 존재함
	//var rr = confirm("삭제하시겠습니까?") // true/ false 를 받을 수 있다
	//console.log(rr)
	
	/* if(rr){
		frm.submit()  ///frm 객체를 submit() 한다
	} */
	
	
	if( confirm("삭제하시겠습니까?") ){
		frm.submit()  ///frm 객체를 submit() 한다
	}
}

//gogo();

</script>  

<h1>board/DeleteForm 페이지 입니다</h1>
<form action="DeleteReg" method="post" name="frm">
<input type="hidden" name="no" value="${param.no }" />
	<table border="" width="100%">
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		
		<tr>
			<td colspan="2" align="right">
				<!-- <input type="submit" value="삭제1" /> -->
				<input type="button" value="삭제2" onclick="gogo()" />
				<a href="Detail?no=${param.no }&noCnt=true">이전페이지</a>
			</td>
		</tr>
	</table>
</form>