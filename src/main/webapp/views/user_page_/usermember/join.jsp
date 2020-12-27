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
		<script src="/resource/js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">


var idChecknum =0;
var emailChecknum =0;
var telChecknum =0;


//아이디와 패스워드 값 데이터 정규화 공식
var regul1 = /^[a-zA-Z0-9]{4,12}$/;
//이메일 값 데이터 유효성 체크
//[]안에 있는 값만 쓰겠다

//이메일 정규화 공식
var regul2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
//이름 정규화 공식
var regul3 = /^[가-힣]{2,}$/;
var email = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
var tel = /^[0-9]{9,11}$/;
var birth = /^[0-9]{6}$/;
		
function toggleBtn() {
	var activeBtn = idChecknum + emailChecknum +telChecknum;
	if(activeBtn ==3){
		$("#signupbtn").prop("disabled", false);
	}else{
		$("#signupbtn").prop("disabled", true);
	}
	
}

function idCheck(){
	if($("#user_id").val()  ==""){
			alert("ID를 입력하세요");
			return;
		}

    //아이디 유효성 검사
    //내가 입력한 데이터를 검사하는 check()
    //만약 내가 아이디에 정규화 방식을 하나라도 지키지 않으면 if문 안으로 들어가서 alert message를 띄움
	var objID = document.getElementById("user_id");
     if (!check(regul1,objID,"아이디는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
        return false;//반환 할 곳 없이 if문 탈출
    }

	
	url="../../memJsp/mem/idCheck?user_id=" +$("#user_id").val();


	$.ajax({
        url:url,

        success:function(data){

        	if(data.trim()=="IDO"){
	        		$("#user_id").prop("readonly",true);
	        		alert("사용가능한 id");
	        		idChecknum = 1;
	        		toggleBtn();
            }else if(data.trim()=="IDX"){
	        		alert("중복된 id");
	        		idChecknum = 0;
            }
        },
        
        error:function(e){
            alert(e.responseText);
        }
        
    });

//아작스는 비동기식이기 때문에 아작스가 다녀올동안 다른  function이 기다려주지 않음 
//그래서 버튼을 하나하나 만드는게 나을것같다 . 

    }

function emailCheck(){
	if($("#user_email").val()  ==""){
			alert("email을 입력하세요");
			return;
		}

    //이메일이 잘못된 경우
    var objEmail = document.getElementById("user_email");
    if (!check(regul2,objEmail,"이메일을 잘못 입력 했습니다.")) {
        return false;
    }


	url="../../memJsp/mem/emailCheck?user_email=" +$("#user_email").val();


	$.ajax({
        url:url,
        
        success:function(data){

        	if(data.trim()=="emailO"){
        		alert("email 사용가능");
        		$("#user_email").prop("readonly",true);
        		emailChecknum = 1;
        		toggleBtn();
            	}else if(data.trim()=="emailX"){
            		alert("중복된 email");
            		emailChecknum =0;
                }
            
        },
        
        error:function(e){
            alert(e.responseText);
        }
        
    });


    }


function telCheck(){
	if($("#user_tel").val()  ==""){
			alert("전화번호를 입력하세요");
			return;
		}
    //생년월일에 숫자말고 다른것 입력했을때 
	var objTel = document.getElementById("user_tel");
    if (!check(tel,objTel,"숫자만 입력해주세요")) {
        return false;
    }

	
	url="../../memJsp/mem/telCheck?user_tel=" +$("#user_tel").val();


	$.ajax({
        url:url,

        success:function(data){


        	if(data.trim()=="telO"){
        		alert("사용가능한 전화번호입니다.");
        		$("#user_tel").prop("readonly",true);
        		telChecknum = 1;
        		toggleBtn();
            	}else if(data.trim()=="telX") {
        		alert("중복된 전화번호입니다.");
        		telChecknum = 0;
            		
                	}
        },
        
        error:function(e){
            alert(e.responseText);
        }
        
    });


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



    function validate() {

    	var objPwd1 = document.getElementById("user_pw");
    	var objPwd2 = document.getElementById("user_pwpw");
    	var objName = document.getElementById("user_name");
    	var objBirth = document.getElementById("user_birth");
  	    	
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

		//선호 지점 체크가 안되있을때 
		/* if(document.getElementById('lo_1001').checked != true && 
				document.getElementById('lo_1002').checked != true && 
				document.getElementById('lo_1003').checked != true  ) {
			alert("선호지점을 선택해주세요");
			return false;
			}
		 */
		 var form_check_inputChk = false
		 $(".form-check-input").each(function(){

				if($(this).prop("checked"))
					form_check_inputChk = true
			 })
			 
			if(!form_check_inputChk){
				alert("선호지점을 선택해주세요");
				return false;
			}
			 

		 	userInfo.submit()
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


						<!-- 본문 들어가는 부분 -->



<div class="row text-center">						
												<div class="row " style="margin:0 auto; padding-top:50px; padding-bottom: 25px;" > 
															<h1>회원 가입</h1>
												</div>
		<form class="" name="userInfo" method="get" action ="joinReg" >
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
					<input type="button" class="btn btn-primary" value="중복확인"
						onClick="idCheck(this.form)" >
					</div>
				</div>
		</div>
</div>

		
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
		<label for="user_birth" class="">생년월일</label>
		<input type="text" name="user_birth" id="user_birth" maxlength="6" class="form-control" placeholder="ex)950714">
	</div>	
</div> 






<div class="row"style="width: 30%; float:none; margin:0 auto;">
		<div class="form-group col">
			<label for="user_email">이메일</label>
					<input type="email" id="user_email" name="user_email" placeholder="이메일" class="form-control" maxlength="40">
				<div class="row"style="float:none; margin:0 auto; padding: 10px;">					
					<!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->
					<div class="col" style="width: 30%; float: right;  margin:0 auto">
					<input type="button" class="btn btn-primary" value="중복확인"
						onClick="emailCheck(this.form)" >
					</div>
				</div>
		</div>
</div>



<div class="row"style="width: 30%; float:none; margin:0 auto;">
		<div class="form-group col">
			<label for="user_tel">휴대폰 번호</label>
			<input type="tel" class="form-control" id="user_tel" name="user_tel" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">				
			<div class="row"style="float:none; margin:0 auto; padding: 10px;">					
					<!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->
					<div class="col" style="width: 30%; float: right;  margin:0 auto">
					<input type="button" class="btn btn-primary" value="중복확인"
						onClick="telCheck(this.form)" >
					</div>
				</div>
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

<!-- 라디오 박스 부분 추가 -->
			<div class="row" style="width: 30%;   margin:0 auto">
			       <div class="form-group col">
						  <label class="form-check-label" id="location" for="lo_no">
						  선호하는 지점선택
						  </label>
						<c:forEach items="${data}" var="vo" varStatus="no">
								<div class="form-check">
								  <input class="form-check-input" type="radio" name="lo_no" id="lo_${vo.lo_no }" value="${vo.lo_no }">
								  ${vo.lo_name}			  
								</div>
						</c:forEach>

			
			         </div>
			</div>


		<div class="row" style="width: 30%; float:none;  margin:0 auto">
			<div class="form-group col ">
						<input type="button" id="signupbtn" onclick="validate()" value="회원가입" class="btn btn-primary" disabled="disabled" /> 
						<input type="reset" value="다시쓰기" class="btn btn-primary"/> 
			</div>
			<div class="form-group col ">	
						<input type="button" value="회원이시라구요?" class="btn btn-default" onClick="javascript:location.href='login'">
			</div>
		</div>
		
		<div class="row" style="width: 30%; float:none;  margin:15px 15px 0 auto">	
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