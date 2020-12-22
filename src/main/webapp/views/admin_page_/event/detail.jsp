<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <h1 class="mt-4">지점 관리</h1>
                        <ol>
						</ol>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="far fa-address-card"></i>
                                <a href="">지점 상세</a>
                            </div>
                            <!--직원 가입 폼 확인 후 수정-->
                            <div class="card-body">
                                <div class="table-responsive">
                                        <div class="col-sm-6" style="float: none; margin: 0 auto;">
                                            <table class="table table-bordered" width="0%" cellspacing="0">
                                                <tbody>
                                                 	 <tr>
                                                          <td class="align-middle text-lg-center">메인 이미지</td>
                                                          <td class="align-middle text-lg-center">서브 이미지 (1)</td>
                                                          <td class="align-middle text-lg-center">서브 이미지 (2)</td>
                                                          <td class="align-middle text-lg-center">서브 이미지 (3)</td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td  class="align-middle">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/${data.main_img}"/>
                                                        </td>
                                                        <td  class="align-middle">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/${data.detail_img1}"/>
                                                        </td>
                                                        <td  class="align-middle">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/${data.detail_img2}"/>
                                                        </td>
                                                        <td  class="align-middle">
                                                            <img class="img-fluid rounded center-block align-middle"  src="/resource/images/${data.detail_img3}"/>
                                                        </td>
                                                    </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center" colspan="2">이벤트 번호</td>
                                                    <td  class="align-middle" colspan="2">${data.event_no}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center" colspan="2">이벤트 명</td>
                                                    <td  class="align-middle" colspan="2">${data.title}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center" colspan="2">이벤트 개시일</td>
                                                    <td  class="align-middle" colspan="2">${data.welcomeDate}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center" colspan="2">이벤트 적용 전 가격</td>
                                                    <td  class="align-middle" colspan="2">${data.showE_price}</td>
                                                </tr>
                                                <tr>
                                                    <td class="align-middle text-lg-center" colspan="2">이벤트 할인 가격</td>
                                                    <td  class="align-middle" colspan="2">${data.showDiscount}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ol>
                                    </ol>
                                    <div class="col-md-2" style="float: none; margin: 0 auto;">
                                            <a href="/admin_page_/event/modifyForm?event_no=${data.event_no}" class="btn btn-info btn-primary btn-sm">수정</a>
                                            <a href="javascript:deleteChk('/admin_page_/event/delete?event_cnt=${data.event_cnt}')" class="btn btn-info btn-danger btn-sm">삭제</a>
                                            <a href="/admin_page_/event/info" class="btn btn-info btn-info btn-sm">목록으로</a>
                                    </div>
                            </div>
                            </div>
                        </div>
                     	<script>
					         function deleteChk(url){
					            	if (confirm("정보를 삭제 하시겠습니까?")){
					            		location = url;
					            	}
					      	}
                        </script>
                        