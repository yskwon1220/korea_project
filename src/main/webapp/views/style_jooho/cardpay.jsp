<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="css/cardpay.css"/>
  <link rel="stylesheet" href="bootstrap-4.5.3-dist/css/bootstrap.min.css">

<script src="bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>


</head>
<body>
<form action="cardpay2.jsp">
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
      <td>2020-12-01 03:19:30</td>
    </tr>
    <tr>
      <td>카드번호</td>
      <td><input type="text"/>-<input type="text"/>-<input type="text"/>-<input type="text"/></td>
    </tr>
    <tr>
      <td>CVC/4DBC</td>
      <td><input type="text"/></td>
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