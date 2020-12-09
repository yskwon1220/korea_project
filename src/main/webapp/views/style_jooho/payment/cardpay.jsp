<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="<c:url value="${path }/resource/css/cardpay.css"/>"/>
  <link rel="stylesheet" href="${path }/resource/bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script src="${path }/resource/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
  function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      //object.maxLength : 매게변수 오브젝트의 maxlength 속성 값입니다.
      object.value = object.value.slice(0, object.maxLength);
    }    
  }
  
</script>

</head>
<body>
<form action="cardpay2" method="post">
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="#">원클릭 간편결제</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">앱카드</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">일반결제</a>
  </li>
</ul>
<table class="table">
  <thead>
    <tr>
      <th scope="col">사용쇼핑몰</th>
      <th scope="col">(주)체력</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>금액</td>
      <td>0원</td>
    </tr>
    <tr>
      <td>날짜</td>
      <c:set var="now" value="<%=new java.util.Date()%>" />
		<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" /></c:set> 
      <input type="hidden" name="regdate" value="${today }"/>
      <td><c:out value="${today}" /></td>
    </tr>
    <tr>
      <td>카드번호</td>
      <td><input type="number" name="card_num1" maxlength="3" oninput="maxLengthCheck(this)"/>-
      <input type="password" pattern="[0-9]*" inputmode="numeric" name="card_num2" maxlength="3" oninput="maxLengthCheck(this)"/>-
      <input type="password" pattern="[0-9]*" inputmode="numeric" name="card_num3" maxlength="3" oninput="maxLengthCheck(this)"/>-
      <input type="number" name="card_num4" maxlength="3" oninput="maxLengthCheck(this)"/></td>
    </tr>
    <tr>
      <td>CVC/4DBC</td>
      <td><input type="number" maxlength="3" oninput="maxLengthCheck(this)" name="cvc"/></td>
    </tr>
    <tr>
      <td>
      <button type="button" class="btn btn-outline-danger">취소</button>
      <button type="submit" class="btn btn-outline-success">확인</button>
	</td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>