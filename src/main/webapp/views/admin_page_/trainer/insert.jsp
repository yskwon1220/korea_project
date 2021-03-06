<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
	$(document).ready(function(){
	        $("#myModal").modal();
	});
</script>
                     <h1 class="mt-4">트레이너 관리</h1>
                        <ol>
						</ol>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">직원 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <table class="table table-bordered" width="0%" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                        <td  class="align-middle" rowspan="7">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/${data.tr_pic}"/>
                                                        </td>
                                                        <td class="align-middle">이름</td>
                                                        <td  class="align-middle">${data.tr_name}</td>
                                                    </tr>
                                                <tr>
                                                    <td class="align-middle">입사 일자</td>
                                                    <td  class="align-middle">${data.welcomeDate}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">직책</td>
                                                    <td  class="align-middle">${data.isManage}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">직원 번호</td>
                                                    <td  class="align-middle">${data.tr_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">직원 경력</td>
                                                    <td  class="align-middle">${data.tr_info}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">소속 지점 번호</td>
                                                    <td  class="align-middle">${data.lo_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle">회원 평가 점수</td>
                                                    <td  class="align-middle">${data.stars}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ol>
                                    </ol>
                                    <div class="col-sm-2" style="float: none; margin: 0 auto;">
                                            <a href="/admin_page_/trainer/" class="btn btn-info btn-primary btn-sm">수정</a>
                                            <a href="정보 삭제 모듈로" class="btn btn-info btn-danger btn-sm">삭제</a>
                                    		   <a href="/admin_page_/trainer/info" class="btn btn-info btn-info btn-sm">목록으로</a>
                                    </div>
                            </div>
                            </div>
                        </div>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h4 class="modal-title" id="exampleModalLabel">Notice</h4>
						        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
						        <span aria-hidden="true">X</span>
						        </button>
						      </div>
						      <div class="modal-body">
						      		트레이너 추가가 완료되었습니다.
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-info" data-dismiss="modal">확인</button>
						      </div>
						    </div>
						  </div>
						</div>
