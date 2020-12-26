<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script>
	function searchResCheck(frm) {
		if (frm.keyWord.value.trim() == "") {
			alert("검색 단어를 입력하세요.");
			frm.keyWord.focus();
			return;
		}
		frm.submit();
	}
</script>

<!-- container fluid 아래부터  -->
<h1 class="mt-4">예약 인원 정보</h1>
<div class="row">
	<!-- <form method="get" class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0"> -->
	<div class="input-group" style="margin: 10px;">



		 <form action="searchResList" method="post">
		
		<table>
		 <tr>
		     <td>  <select class="form-control" name="keyField">
				<option value="0">----선택----</option>
				<!-- <option value="lo_no">지점 별 조회</option> -->
				<option value="resdate">예약 날짜별 조회</option>
				<option value="restime">예약 시간별 조회</option>
			</select>   </td>
		     <td>  <input class="form-control" type="text" name="keyWord" />   </td>
		     
		     <td> &nbsp;&nbsp; <input type="button" class="btn btn-info btn-primary btn-sm" value="검색" onclick="searchCheck(form)" /> </td>
		     
		       <td> &nbsp;&nbsp; <input type="button" class="btn btn-info btn-primary btn-sm" value="뒤로" onclick="location.href='reslist?lo_no=${param.lo_no}'" /> </td>
		 
		 </tr>
			
		</table>
			<input type="hidden" name="lo_no" value="${param.lo_no }" /> 
		</form>


	</div>
	<!-- </form> -->
</div>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-id-badge"></i> <a href="">예약 목록</a>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered text-center" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>예약 일자</th>
						<th>일자별 시간</th>
						<th>시간별 인원수</th>
					</tr>
				</thead>
				<tbody id="showTable">
					<c:forEach items="${data.reservtime2Set}" var="data" varStatus="no">
						<tr>
							<td class="align-middle">${data.welcomeDate}</td>
							<td class="align-middle">${data.restime}:00</td>
							<td class="align-middle">${data.nowCnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<ol>
		</ol>
		<div class="row">
			<!-- pagination{s} -->
			<div id="paginationBox" class="col-md-6" style="float: right">
				<ul class="pagination">
					<c:if test="${data.prev}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_prev('${data.page}', '${data.range}', '${data.rangeSize}', , '${data.keyField}', '${data.keyWord}')">Previous</a></li>
					</c:if>
					<c:forEach begin="${data.startPage}" end="${data.endPage}"
						var="idx">
						<li
							class="page-item <c:out value="${data.page == idx ? 'active' : ''}"/> "><a
							class="page-link" href="#"
							onClick="fn_pagination('${idx}', '${data.range}', '${data.rangeSize}', '${data.keyField}', '${data.keyWord}')">
								${idx} </a></li>
					</c:forEach>
					<c:if test="${data.next}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_next('${data.range}', '${data.range}', '${data.rangeSize}', '${data.keyField}', '${data.keyWord}')">Next</a></li>
					</c:if>
				</ul>
			</div>
			
			<div class="col-md-6">
				<a style="float: right;" href="/admin_page_/reservation/resinfo" class="btn btn-info btn-primary btn-sm">목록으로</a>
			</div>
		</div>
	</div>
</div>
<script>
								//이전 버튼 이벤트
							function fn_prev(page, range, rangeSize, keyField, keyWord) {
									var page = ((range - 2) * rangeSize) + 1;
									var range = range - 1;
									var temp = ${data.locationNo};
									
									var url = "searchResList?lo_no=" + temp;
									url = url + "&page=" + page;
									url = url + "&range=" + range;
									url = url + "&keyField=" + keyField;
									url = url + "&keyWord=" + keyWord;

									location.href = url;
									
								}
							
							  //페이지 번호 클릭
								function fn_pagination(page, range, rangeSize, keyField, keyWord) {
										var temp = ${data.locationNo};
										var url;
										
										url = "searchResList?lo_no=" + temp;
										url = url + "&page=" + page;
										url = url + "&range=" + range;
										url = url + "&keyField=" + keyField;
										url = url + "&keyWord=" + keyWord;
										
										location.href = url;	
							
								}
							
								//다음 버튼 이벤트
								function fn_next(page, range, rangeSize, keyField, keyWord) {
									var page = parseInt((range * rangeSize)) + 1;
									var range = parseInt(range) + 1;
									var temp = ${data.locationNo};
									
									var url = "searchResList?lo_no=" + temp;
									url = url + "&page=" + page;
									url = url + "&range=" + range;
									url = url + "&keyField=" + keyField;
									url = url + "&keyWord=" + keyWord;
									
									location.href = url;
								}
</script>
