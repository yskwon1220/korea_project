<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>                        
<!-- container fluid 아래부터  -->
                       <h1 class="mt-4">이용권 관리</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-id-badge"></i>
                                <a href="">이용권 등록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <form action="/admin_page_/goods/modify" enctype="multipart/form-data" method="post" name="temp">
                                                <input type="hidden"  name="goods_no" value="${data.goods_no}">
                                                <input type="hidden"  name="goods_cnt" value="${data.goods_cnt}">
                                                <table class="table table-bordered" width="0%" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <td class="align-middle">이용권 명</td>
                                                            <td  class="align-middle">
                                                            	<input class="form-control" type="text" name="goods_name"value="${data.goods_name}">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                           <td class="align-middle">이용권 가격 </td>
                                                           <td  class="align-middle">
                                                               <input class="form-control" type="text" name="goods_price" value="${data.goods_price}">
                                                           </td>
                                                       </tr>
                             						<tr>
                                                        <td class="align-middle">이용권 등록일</td>
                                                        <td  class="align-middle">
                                                            <input class="form-control" type="text" id="regdate" name="welcomeDate" value="${data.welcomeDate}">
                                                        </td>
                                                    </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <div class="col-md-2" style="float: none; margin: 0 auto;">
                                                            <input class="btn btn-info btn-primary btn-sm" type="submit" value="수정" onclick="complete()"/>
                                                            <input class="btn btn-info btn-danger btn-sm" type="reset" value="초기화">
                                                            <a href="/admin_page_/goods/info" class="btn btn-info btn-primary btn-sm">뒤로</a>
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
                        <script>
				             
				            $('#regdate').datepicker({
				                format: "yyyy년mm월dd일",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
				                startDate: '-3m',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
				                endDate: '+3m',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
				                autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
				                title: "등록일 선택",	//캘린더 상단에 보여주는 타이틀
				                todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
				                toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
				                setDate : new Date(),
				                language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
				                }).on("changeDate", function(e){
				                })
				          
				         function complete(){
				            	if (confirm("정보를 수정 하시겠습니까?")){
				            		temp.submit();
				            	}
				      	}
       					 </script>
