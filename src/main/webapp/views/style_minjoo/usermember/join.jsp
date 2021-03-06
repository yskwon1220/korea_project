<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원가입</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 
<link rel="shortcut icon" href="favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" /> 

            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

<script>
// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
function checkValue()
{
    if(!document.userInfo.id.value){
        alert("아이디를 입력하세요.");
        return false;
    }
    
    if(!document.userInfo.pw.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    if(document.userInfo.pw.value != document.userInfo.pwpw.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    }
}



</script>
</head>
<body>
		<%-- <jsp:include page="../inc/headerV3.jsp" /> --%>

	<div id="page-wrapper">


		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>

						<h2>회원 가입</h2>

						<!-- 본문 들어가는 부분 -->



<div class="row text-center">						
		<form class="" name="userInfo" method="get" action ="joinReg"onsubmit="return checkValue()">
				<!-- document 현재문서, joinform-> name이 joinform인 태그의 name값이 id인 input태그의 value => 그값이 !일때(없을때,null일떄) if문 실행 -->
				<!-- onsubmit 은 submit 실행전에 실행 checkvalue()함수의 return 값을 가져옴 true일때 submit실행, false 리턴시 submit 취소 -->




<div class="row"style="width: 30%; float:none; margin:0 auto;">
		<div class="form-group col">
			<label for="id">아이디</label>
			<input type="text" id="id" name="id" class="form-control"
				maxlength="30" placeholder="영문, 숫자만 입력 가능합니다.">
				<div class="row"style="float:none; margin:0 auto; padding: 10px;">					
					<!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->
					<div class="col" style="width: 30%; float: right;  margin:0 auto">
					<input type="button" class="btn btn-primary" value="ID중복확인"
						onClick="idCheck(this.form.id.value)"  data-toggle="modal" data-target="#staticBackdrop">
					</div>
				</div>
		</div>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">id중복확인</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
 <!--        <button type="button" class="btn btn-primary">Understood</button> -->
      </div>
    </div>
  </div>
</div>
	<!-- Modal 끝 -->	
		
<div class="row" style="width: 30%; float:none; margin:0 auto">
				<div class="form-group  col">
					<label for="pw" class="">비밀번호</label>
					<input type="password" id="pw" name="pw" class="form-control" maxlength="30" placeholder="비밀번호">
				</div>
				<div class="col" style="width: 30%;"></div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
				<div class="form-group  col">
					<label for="pwpw" class="">비밀번호 확인</label>
					<input type="password" id="pwpw" name="pwpw" class="form-control" maxlength="30" placeholder="비밀번호 확인">
				</div>
</div>
<div class="row" style="width: 30%; float:none; margin:0 auto">
			<div class="form-group  col">	
				<label for="name" class="">이름</label>
				<input type="text" name="name" id="name" class="form-control" maxlength="15" placeholder="한글만 입력 가능합니다.">
			</div>	
				
</div>

<!-- <div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="birth" class="">생년월일</label>
		<input type="text" name="" maxlength="6" class="form-control" placeholder="ex)950714">
	</div>	
</div> -->


<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="email" class="">이메일</label>
		<input type="email" id="email" name="email" placeholder="이메일" class="form-control" maxlength="40">
	</div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="tel" class="">휴대폰 번호</label>
		<input type="tel" class="form-control" id="tel" name="tel" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
	</div>
</div>

<div class="row" style="width: 30%;   margin:0 auto">
       <div class="form-group col">
                    <label for="gender" class="">성별</label>
                    <div class="col">
                        <select class="form-control" id="gender" name="gender">
                            <option value="M">남</option>
                            <option value="F">여</option>
                        </select>
                    </div>
                </div>
</div>


<div class="row" style="width: 30%; float:none;  margin:0 auto">
	<div class="form-group col ">
				<input type="submit" value="회원가입" class="btn btn-primary"/> 
				<input type="reset" value="다시쓰기" class="btn btn-primary"/> 
	</div>
	<div class="form-group col ">
					
				<input type="button" value="회원이시라구요?" class="btn btn-default" onClick="javascript:location.href='login'">
	</div>
</div>

</form> 
</div> <!-- 폼 감싸는 div  -->
	


					</article>

				</div>
			</div>
		</div>

     </div>
<script>
checkValue(){
	console.log("시발");
}
</script>

<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>
	

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>