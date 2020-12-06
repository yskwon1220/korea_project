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
<form action="successpay.jsp">
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

  <tbody>
    <tr>
      <td>카드번호</td>
      <td>5137-****-****-*666</td>
    </tr>
    <tr>
      <td>주민등록번호(법인,사업자번호)</td>
      <td><input type="text"/>("-"제외)</td>
    </tr>
    <tr>
      <td>유효기간</td>
      <td><input type="text"/>월<input type="text"/>년</td>
    </tr>
    <tr>
      <td>CVC/4DBC</td>
      <td>***</td>
    </tr>
    <tr>
      <td>카드비밀번호</td>
      <td><input type="text"/>**</td>
    </tr>
        <tr>
      <td>휴대폰번호</td>
      <td>
      <select>
      <option value=''>SKT</option>
      <option value=''>KT</option>
      <option value=''>LG</option>
	  <option value=''>SKT 알뜰폰</option>
      <option value=''>KT 알뜰폰</option>
      <option value=''>LG 알뜰폰</option>
      </select>
      <input type="text"/>-<input type="text"/>-<input type="text"/></td>
    </tr>
        <tr>
      <td>인증번호</td>
      <td><input type="text" /><input type="button" value="sms 인증번호 받기"/></td>
    </tr>
  </tbody>
</table>
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">이용약관 동의</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">개인정보 수집 및 이용동의</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">고유식별정보 처리 동의</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">ㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹ </div><input type="checkbox" name="xxx" value="yyy" />
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">ddsafdsahfkjddsafdsahfkj</div><input type="checkbox" name="xxx" value="yyy" />
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">ㅁㄴㅇㄹㅇㅁㄴㅇㄴㅁㄹ</div><input type="checkbox" name="xxx" value="yyy" />
</div>
 <button type="button" class="btn btn-outline-danger">취소</button>
      <button type="submit" class="btn btn-outline-success">확인</button>
</form>
</body>
</html>