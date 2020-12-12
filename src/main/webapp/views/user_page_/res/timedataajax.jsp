<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>restimeData</title>
<!-- <style>
#con{
	width:800px;
	border:1px solid #000;
	padding:20px;

}
#con > div{
	width:600px;
	margin:10px;
	background: #ff0;

}
</style> -->
<script type="text/javascript" src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript">
/* 	$(document).ready(function(){
		
		function log(msg){
			//var arr = msg.split("\n").join("<br>")
			//$("#con").html(arr)
			//$("#con").html(msg)
			$("#con").html("")
			$.each(msg.trim().split("\n"), function(i,ee){
				ee = ee.trim()
				if(ee!=""){
					var box = $("<div></div>")
					box.html(ee)
					$("#con").append(box)
				}
			})
			
		}
		
		$(".btns").click(function(){
			//var goUrl = "nnn/"+$(this).attr("id")+".html"
			var goUrl = "restimeData.jsp"
			$.ajax({
				url:goUrl,
				type:"GET",
				data:{timeList : $(this).attr("id")},
				success:function(ddd){
					//alert("돌아온다는 너의 약속")
					log(ddd)
				},
				error:function(e){
					alert(e.responseText)
				}
			})
		})
		
		
	}) */
	
/* 	
	
	function test() {
	$.ajax({
		
		type:"get",
		url : "schedule.jsp",
		data : {
			no : "${no}",
			tr_name : "${tr_name}"
			
		},
		error:function(e){
			alert(e.responseText)
		
		},
		success : function(data) {
		concole.log("success");
		}
		
	});
	
	
	
} */
</script>
</head>
<body>
<!-- <h1>02_ajaxNews</h1>
<button class="btns" id="9일" >9일</button>
<button class="btns" id="10일" >10일</button>
<button class="btns" id="11일" >11일</button>
<div id="con"></div> -->

ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
${no}
${tr_name}
${lo_name}
${restime}
${type}

${data.no}
${data.tr_name}
${data.lo_name}
${data.restime}
${data.type}
ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd


</body>
</html>