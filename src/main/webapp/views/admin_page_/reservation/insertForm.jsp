<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script language="javascript">

	function selectLocation(frm) {

		var lo_name = frm.lo_no.selectedIndex;

		switch (lo_name) {
		case 0:
			frm.lo_name.value = '지점명이 표시됩니다';
			break;
		case 1:
			frm.lo_name.value = '강서점';
			break;
		case 2:
			frm.lo_name.value = '강남점';
			break;
		case 3:
			frm.lo_name.value = '강서점';
			break;
		}

		return true;
	}

</script>
<!-- container fluid 아래부터  -->
<h1 class="mt-4">예약 정보</h1>
<ol>
</ol>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-id-badge"></i> <a href="">예약 등록</a>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<div class="col-sm-6" style="float: none; margin: 0 auto;">

				<form action="insert" method="get" name="form">

					<table class="table table-bordered" width="0%" cellspacing="0">
						<tbody>
							<tr>
								<td class="align-middle">지점 번호</td>
								<td class="align-middle">
								
								<select name="lo_no" onchange="selectLocation(this.form)">
						<option selected value=0>-선택하세요-
						<option value=1>1
						<option value=2>2
						<option value=3>3
				</select></td>
							</tr>
							<tr>
								<td class="align-middle">지점 이름</td>
								<td class="align-middle">
								
								<input class="form-control"  name="lo_name" type="text" size="50" maxlength="50" value="지점명이 표시됩니다" readonly="readonly">
								</td>
							</tr>
							<tr>
								<td class="align-middle">PTYE</td>
								<td>
									<div class="btn-group btn-group-toggle" data-toggle="buttons"
										id="type">
										<label class="btn btn-info"> <input type="radio"
											name="type" value="PT" checked="checked"> PT
										</label> <label class="btn btn-info"> <input type="radio"
											name="type" value="헬스"> 헬스
										</label>
									</div>
								</td>
							</tr>
							<tr>
								<td class="align-middle">트레이너 이름</td>
								<td class="align-middle"><input class="form-control"
									type="text" id="regdate" name="tr_name"></td>
							</tr>
							
							<tr>
								<td class="align-middle">예약 일자</td>
								<td class="align-middle"><input class="form-control"
									type="date" id="regdate" name="resdateStr"></td>
							</tr>
							<tr>
								<td class="align-middle">예약 시간</td>
								<td class="align-middle"><input class="form-control"
									type="text" id="regdate" name="restime"></td>
							</tr>
							
							<tr>
								<td class="align-middle">예약자 아이디</td>
								<td class="align-middle"><input class="form-control"
									type="text" id="regdate" name="user_id"></td>
							</tr>
							<tr>
								<td class="align-middle">예약자 성함</td>
								<td class="align-middle"><input class="form-control"
									type="text" id="regdate" name="user_name"></td>
							</tr>
                             <tr>
                                <td class="align-middle">예약 비밀번호</td>
                                <td class="align-middle"><input class="form-control"
									type="text" id="regdate" name="user_pw"></td>
                            </tr>							
							
							<tr>
								<td class="align-middle">예약자 연락처</td>
								<td class="align-middle"><input class="form-control"
									type="text" id="regdate" name="user_tel"></td>
							</tr>

							<tr>
								<td class="align-middle">내용</td>
								<td class="align-middle"><textarea
										class="form-control col-sm-12" rows="5" name="content"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="col-sm-4" style="float: none; margin: 0 auto;">
										<input class="btn btn-info btn-primary btn-sm" type="submit" value="등록"> 
										<input class="btn btn-info btn-danger btn-sm" type="reset" value="초기화"> 
										<a href="/admin_page_/reservation/list?lo_no=${lo_no}" class="btn btn-info btn-primary btn-sm">목록으로</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<ol>
			</ol>
		</div>
	</div>
</div>
<!-- <script> 뭔지몰라서 주석..ㅎㅎ
	$('#regdate').datepicker({
		format : "yyyy년mm월dd일", //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		startDate : '-3m', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		endDate : '+3m', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		autoclose : true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		title : "입사일 선택", //캘린더 상단에 보여주는 타이틀
		todayHighlight : true, //오늘 날짜에 하이라이팅 기능 기본값 :false 
		toggleActive : true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		setDate : new Date(),
		language : "ko" //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
	}).on("changeDate", function(e) {
	})
</script> -->
