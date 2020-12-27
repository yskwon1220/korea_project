<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- container fluid 아래부터  -->
   
                        <h1 class="mt-4">지점 관리</h1>
                        <div class="row">
	                        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	                                <div class="input-group" style="margin: 10px;">
	                                    <input class="form-control" type="text" placeholder="강사명을 입력해주세요" onkeyup="searchFunction();" id="tr_name" />
	                                    <div class="input-group-append">
	                                        <button class="btn btn-info" onclick = "searchFunction();" type="button"><i class="fas fa-search"></i></button>
	                                    </div>
	                                </div>
	                         </form>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-id-badge"></i>
                                <a href="">직원 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center"  width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>직원 번호</th>
                                                <th>지점 번호</th>
                                                <th>사진</th>
                                                <th>직원 이름</th>
                                                <th>직원 경력</th>
                                                <th>회원 평가 점수</th>
                                            </tr>
                                        </thead>
                                        <tbody id="showTable">
                                        <c:forEach items="${data.pageSet}" var="data">
                                            <tr>
                                                <td class="align-middle"><a href="/admin_page_/trainer/detail?tr_no=${data.tr_no}"> ${data.tr_no}</a></td>
                                                <td class="align-middle">${data.lo_name}</td>
                                                <td class="align-middle"><a href="/admin_page_/trainer/detail?tr_no=${data.tr_no}"> <img class="img-responsive" alt="" src="/resource/images/gangsa/${data.tr_pic}"></a></td>
                                                <td class="align-middle"><a href="/admin_page_/trainer/detail?tr_no=${data.tr_no}">${data.tr_name}</a></td>
                                                <td class="align-middle">${data.contentTrans}</td>
                                                <td class="align-middle">${data.star}</td>
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
											<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${data.page}', '${data.range}', '${data.rangeSize}')">Previous</a></li>
										</c:if>
										<c:forEach begin="${data.startPage}" end="${data.endPage}" var="idx">
											<li class="page-item <c:out value="${data.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${data.range}', '${data.rangeSize}')"> ${idx} </a></li>
										</c:forEach>
										<c:if test="${data.next}">
											<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${data.range}', '${data.range}', '${data.rangeSize}')" >Next</a></li>
										</c:if>
									</ul>
								</div>
								<!-- pagination{e} -->
                             		<div class="col-md-6" >
                                            <a style="float: right; margin-left: 5px;" href="/admin_page_/trainer/insertForm" class="btn btn-info btn-primary btn-sm">신규 직원 등록</a>
                                            <a style="float: right;" href="/admin_page_/branch/info" class="btn btn-info btn-primary btn-sm">지점 목록</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <script>
								//이전 버튼 이벤트
							function fn_prev(page, range, rangeSize) {
									var page = ((range - 2) * rangeSize) + 1;
									var range = range - 1;
									var temp = ${data.locationNo};
									
									var url = "list?lo_no=" + temp;
									url = url + "&page=" + page;
									url = url + "&range=" + range;

									location.href = url;
									
								}
							
							  //페이지 번호 클릭
								function fn_pagination(page, range, rangeSize, searchType, keyword) {
									var temp = ${data.locationNo};

									var url = "list?lo_no=" + temp;
									url = url + "&page=" + page;
									url = url + "&range=" + range;
								
									location.href = url;	
							
								}
							
								//다음 버튼 이벤트
								function fn_next(page, range, rangeSize) {
									var page = parseInt((range * rangeSize)) + 1;
									var range = parseInt(range) + 1;
									var temp = ${data.locationNo};
									
									var url = "list?lo_no=" + temp;
									url = url + "&page=" + page;
									url = url + "&range=" + range;
							
									location.href = url;
								}
						</script>
