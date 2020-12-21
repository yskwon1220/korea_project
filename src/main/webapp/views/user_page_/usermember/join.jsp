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
	<c:set var="path" value="${pageContext.request.contextPath}" /> 
		<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3style.css"/>" />
<!-- <script>
// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
function checkValue()
{
    if(!document.userInfo.user_id.value){
        alert("아이디를 입력하세요.");
        return false;
    }
    
    if(!document.userInfo.user_pw.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    if(document.userInfo.pw.value != document.userInfo.user_pwpw.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    }
}

</script> -->

<script type="text/javascript">
// var activeBtn = 1;
// var tttt;

function idCheck(){
	if(document.userInfo.user_id.value ==""){
			alert("ID를 입력하세요");
			return;
		}

	url="../../memJsp/mem/idCheck?user_id=" +document.userInfo.user_id.value;
	window.open(url, "check", 	"width = 500, height = 500, top = 100, left = 200, location = no")
		//open("팝업주소", "팝업창 이름", "팝업창 설정");
// 	tttt = window.opener.document.getElementById("idAvailable").value;

    }


    function validate() {
        //event.preventDefault();
        var objID = document.getElementById("user_id");
        var objPwd1 = document.getElementById("user_pw");
        var objPwd2 = document.getElementById("user_pwpw");
        var objEmail = document.getElementById("user_email");
        var objName = document.getElementById("user_name");
        var objTel = document.getElementById("user_tel");
        var objBirth = document.getElementById("user_birth");
        
        
 //       var objNum1 = document.getElementById("user_num1");
//        var objNum2 = document.getElementById("user_num2");
 
/*         var arrNum1 = new Array();
        var arrNum2 = new Array();
 
        var tempSum=0;//주민번호 합을 넣는 공간 */
 
        //아이디와 패스워드 값 데이터 정규화 공식
        var regul1 = /^[a-zA-Z0-9]{4,12}$/;
        //이메일 값 데이터 유효성 체크
        //[]안에 있는 값만 쓰겠다
 
        //이메일 정규화 공식
        var regul2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
        //이름 정규화 공식
        var regul3 = /^[가-힝a-zA-Z]{2,}$/;
        var email = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
 
        //아이디 입력 하지 않았을 경우
         if ((objID.value) == ""){
            alert("아이디를 입력하지 않았습니다.");
            objID.focus();
            return false;
        } 
        //아이디 유효성 검사
        //내가 입력한 데이터를 검사하는 check()
        //만약 내가 아이디에 정규화 방식을 하나라도 지키지 않으면 if문 안으로 들어가서 alert message를 띄움
        if (!check(regul1,objID,"아이디는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
            return false;//반환 할 곳 없이 if문 탈출
        }
        //비밀번호 입력 하지 않았을 경우
        if ((objPwd1.value) == ""){
            alert("비밀번호를 입력해 주세요");
            objPwd1.focus();
            return false;
        }
        if ((objPwd2.value=="")){
            alert("비밀번호를 입력해 주세요");
            objPwd2.focus();
            return false;
        }
 
        //비밀번호 유효성 검사
        //만약 내가 비밀번호에 정규화 방식을 하나라도 지키지 않으면 if문 안으로 들어가서 alert message를 띄움
        if (!check(regul1,objPwd1,"비밀번호는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
            return false;
        }
        
        //비밀번호와 비밀번호 확인이 일치 하지 않을 경우
        if ((objPwd1.value)!=(objPwd2.value)) {
            alert("비밀번호가 일치 하지 않습니다.");
            objPwd1.focus();
            objPwd2.focus();
            return false;
        }
        //이름 입력 안 한 경우
        if ((objName.value)=="") {
            alert("이름을 입력해 주세요");
            objName.focus();
            return false;
        }
        //이름에 특수 문자가 들어간 경우
        if (!check(regul3,objName,"이름이 잘못 되었습니다.")) {
            return false;
        }
        //생년월일 입력 안 한 경우
        if ((objBirth.value)=="") {
            alert("생년월일을 입력해 주세요");
            objBirth.focus();
            return false;
        }
        //이메일 입력 안했을 경우
        if ((objEmail.value)=="") {
            alert("이메일을 입력해 주세요");
            objEmail.focus();
            return false;
        }
        //이메일이 잘못된 경우
        if (!check(regul2,objEmail,"이메일을 잘못 입력 했습니다.")) {
            return false;
        }
        //전화번호 입력 안했을 경우
        if ((objTel.value)=="") {
            alert("전화번호를 입력해 주세요");
            objTel.focus();
            return false;
        }
 
/*         //주민번호 앞자리를 각 배열에 넣어 검색 및 비교하기위한 단계
        //앞자리 값 만큼 돌림
        for (var i = 0; i <objNum1.value.length; i++) {
            //배열 칸마다 앞자리 값 하나씩 넣어줌
            arrNum1[i]=objNum1.value.charAt(i);
        }
 
        //주민번호 뒷자리를 각 배열에 넣어 검색 및 비교하기위한 단계
        //뒷자리 값 만큼 돌림
        for (var i = 0; i <objNum2.value.length; i++) {
            //배열 칸마다 뒷자리 값 하나씩 넣어줌
            arrNum2[i]=objNum2.value.charAt(i);
        }
        //주민번호 앞자리를 tempSum에 집어 넣기
        //앞자리 만큼 돌림
        for (var i = 0; i <objNum1.value.length; i++) {
            //tempSum에 앞자리를 연이어 넣어줌
            tempSum += arrNum1[i]*(2+i);
        }
        //주민번호 뒷자리를 tempSum에 집어 넣기
        //뒷자리 -1을 해주는 이유 : 뒷자리 마지막 자리는 더할 필요 없어서
        //뒷자리의 -1만큼 돌림
        for (var i = 0; i <objNum2.value.length-1; i++) {
            //뒷자리 2번째 자리 부터 
            if (i>=2) {
                //tempSum에 2~6번째까지 넣어줌
                tempSum += arrNum2[i]*i;
            }else{//뒷자리 0~1번째 자리
                //tempSum에 0~1번째까지 넣어줌
                tempSum += arrNum2[i]*(8+i);
            }
        }
        //주민번호 유효성 체크
        //주민번호 구하는 식
        if (((11-(tempSum%11))%10)!=arrNum2[6]) {
            alert("올바른 주민 번호가 아닙니다.");
            objNum1.value="";
            objNum2.value="";
            objNum1.focus();
            return false;
        }
        //주민번호를 입력하면 생년월일이 자동으로 입력된다.
        //substring은 시작문자와 끝문자를 검색하는 역할
        if (arrNum2[0]==1 || arrNum2[0]==2) {//1900년생 일때
            var y = parseInt(objNum1.value.substring(0,2));
            var m = parseInt(objNum1.value.substring(2,4));
            var d = parseInt(objNum1.value.substring(4,6));
            //년도,월,일을 각각 구함
            f.my_year.value = 1900+y;//년도
            f.month.value = m;//
            f.day.value = d;//일
        }else if(arrNum2[0]==3||arrNum2[0]==4){//2000년생 일때
            var y = parseInt(objNum1.value.substring(0,2));
            var m = parseInt(objNum1.value.substring(2,4));
            var d = parseInt(objNum1.value.substring(4,6));
            
            f.my_year.value = 2000+y;//년도
            f.month.value = m;//월
            f.day.value = d;//일
        }
        //관심분야가 하나라도 체크 되지 않은 경우
        if (f.chk[0].checked == false &&f.chk[1].checked == false &&
            f.chk[2].checked == false &&f.chk[3].checked == false &&
            f.chk[4].checked == false) {
            alert("관심분야를 체크해 주세요");
            return false;
        }
        //자기소개 1글자라도 적지 않은 경우
        if (f.my_intro.value=="") {
            alert("자기소개를 입력해주세요");
            return false;
        } */
    }
    function check(re,what,message){//정규화데이터,아이템 id,메세지
        if (re.test(what.value)) {//what의 문자열에 re의 패턴이 있는지 나타내는 함수 test
        //만약 내가 입력한 곳의 값이 정규화 데이터를 썼다면 true를 반환해서 호출 된 곳으로 리턴됨
            return true;
        }
        alert(message);
        what.value = "";
        what.focus();
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
		<form class="" name="userInfo" method="get" action ="joinReg" onsubmit="return validate()">
				<!-- document 현재문서, joinform-> name이 joinform인 태그의 name값이 id인 input태그의 value => 그값이 !일때(없을때,null일떄) if문 실행 -->
				<!-- onsubmit 은 submit 실행전에 실행 checkvalue()함수의 return 값을 가져옴 true일때 submit실행, false 리턴시 submit 취소 -->




<div class="row"style="width: 30%; float:none; margin:0 auto;">
		<div class="form-group col">
			<label for="user_id">아이디</label>
			<input type="text" id="user_id" name="user_id" class="form-control"
				maxlength="30" placeholder="영문, 숫자만 입력 가능합니다.">
				<div class="row"style="float:none; margin:0 auto; padding: 10px;">					
					<!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->
					<div class="col" style="width: 30%; float: right;  margin:0 auto">
					<input type="button" class="btn btn-primary" value="ID중복확인"
						onClick="idCheck(this.form)" ><!--  data-toggle="modal" data-target="#staticBackdrop" -->
					</div>
				</div>
		</div>
</div>

<!--  Modal 
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
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
	Modal 끝	 -->
		
<div class="row" style="width: 30%; float:none; margin:0 auto">
				<div class="form-group  col">
					<label for="user_pw" class="">비밀번호</label>
					<input type="password" id="user_pw" name="user_pw" class="form-control" maxlength="30" placeholder="비밀번호">
				</div>
				<div class="col" style="width: 30%;"></div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
				<div class="form-group  col">
					<label for="user_pwpw" class="">비밀번호 확인</label>
					<input type="password" id="user_pwpw" name="user_pwpw" class="form-control" maxlength="30" placeholder="비밀번호 확인">
				</div>
</div>
<div class="row" style="width: 30%; float:none; margin:0 auto">
			<div class="form-group  col">	
				<label for="user_name" class="">이름</label>
				<input type="text" name="user_name" id="user_name" class="form-control" maxlength="15" placeholder="한글만 입력 가능합니다.">
			</div>	
				
</div>

 <div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_birth" class="">생년월일+뒷자리한자리</label>
		<input type="text" name="user_birth" maxlength="7" class="form-control" placeholder="ex)9507142">
	</div>	
</div> 


<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_email" class="">이메일</label>
		<input type="email" id="user_email" name="user_email" placeholder="이메일" class="form-control" maxlength="40">
	</div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_tel" class="">휴대폰 번호</label>
		<input type="tel" class="form-control" id="user_tel" name="user_tel" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
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

<div class="row form-inline" style="width: 30%; float:right;  margin:0 auto">	
	<div class="form-group col ">
		<input type="button" class="btn btn-default" value="내계정찾기" onclick="location.href='findMyAccount'" />

	</div>
</div>
</form> 
</div> <!-- 폼 감싸는 div  -->
	


					</article>

				</div>
			</div>
		</div>

     </div>

<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>
	

	<script
		src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>
</body>
</html>