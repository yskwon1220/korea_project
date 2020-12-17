<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>                        
<!-- container fluid 아래부터  -->
                        <h1 class="mt-4">지점 관리</h1>
                        <ol>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-id-badge"></i>
                                <a href="">지점 등록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <form action="/admin_page_/branch/insert" enctype="multipart/form-data" method="post">
                                                <input type="hidden"  name="lo_no" value="100${data}">
                                                <input type="hidden"  name="income" value="0">
                                                <input type="hidden"  name="outcome" value="0">
                                                <table class="table table-bordered" width="0%" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <td class="align-middle">지점 명</td>
                                                            <td  class="align-middle">
                                                            	<input class="form-control" type="text" name="lo_name" placeholder="자세한 지점명을 입력해주세요">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                           <td class="align-middle">지점 주소 </td>
                                                           <td  class="align-middle">
                                                               <input class="form-control" type="text" name="lo_addr" placeholder="상세 주소를 입력해주세요">
                                                           </td>
                                                       </tr>
                                                        <tr>
                                                            <td class="align-middle">지점 연락처</td>
                                                            <td  class="align-middle">
                                                            	<input class="form-control" type="text" name="lo_tel" placeholder="' - ' 를 포함하여 입력해주세요">
                                                            </td>
                                                    </tr>
                             						<tr>
                                                        <td class="align-middle">지점 등록일</td>
                                                        <td  class="align-middle">
                                                            <input class="form-control" type="text" id="regdate" name="welcomeDate">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                    	<td class="align-middle">지점 수용인원</td>
                                                    	<td class="align-middle">
                                                    		 <input class="form-control" type="text" name="maximum" placeholder="숫자만 입력해주세요">
                                                    	</td>
                                                    </tr>
                                                        <tr>
                                                    <td class="align-middle">
                                                        대표 사진 업로드
                                                    </td>
                                                    <td class="align-middle">
                                                        <div class="filebox preview-image"> 
                                                            <input class="upload-name" value="파일선택" disabled="disabled">
                                                            <label for="input-file">업로드</label> 
                                                            <input type="file" id="input-file" class="upload-hidden" name="pic"> 
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">지점 상세 정보</td>
                                                    <td  class="align-middle">
                                                        <textarea class="form-control col-sm-12" rows="5" name="content"></textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <div class="col-md-3" style="float: none; margin: 0 auto;">
                                                            <input class="btn btn-info btn-primary btn-sm" type="submit" value="등록">
                                                            <input class="btn btn-info btn-danger btn-sm" type="reset" value="초기화">
                                                            <a href="/admin_page_/branch/info" class="btn btn-info btn-primary btn-sm">목록으로</a>
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
						$(document).ready(function(){
				            var fileTarget = $('.filebox .upload-hidden');
				             fileTarget.on('change', function(){
				                  // 값이 변경되면
				                  if(window.FileReader){ 
				                      // modern browser
				                       var filename = $(this)[0].files[0].name; 
				                      } else { 
				                           // old IE 
				                           var filename = $(this).val().split('/').pop().split('\\').pop();
				                            // 파일명만 추출 
				                        } 
				                        // 추출한 파일명 삽입 
				                        $(this).siblings('.upload-name').val(filename);
				           	});
						});
				             
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
				                

       					 </script>
