<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기</title>

	<style>
		.grade-box .grade { display: inline-block; width: 100px; height: 50px; position: relative; font-size: 20px; vertical-align: top; }
 					.grade-box .grade .grade-star { position: absolute; left: 0; top: 0; height: 50px; color: #ddd; cursor: pointer; }
 					.grade-box .grade .star_gray { width: 100%; }
 					.grade-box .grade .star_yellow { color: #ffd369; overflow: hidden; }
 					.grade-box .grade p { position: absolute; left: 0; bottom: 10px; width: 100%; font-size: 12px; line-height: 1em; margin-bottom: 0;  }
					.star-0 {width: 0%;}
					.star-1 {width: 10%;}
					.star-2 {width: 20%;}
					.star-3 {width: 30%;}
					.star-4 {width: 40%;}
					.star-5 {width: 50%;}
					.star-6 {width: 60%;}
					.star-7 {width: 70%;}
					.star-8 {width: 80%;}
					.star-9 {width: 90%;}
					.star-10 {width: 100%;}
					
					
	</style>
</head>


<body>
<h1 class="mt-4">이용후기 관리</h1>
   <div class="card-header">
     <i class="fas fa-bullhorn"></i> <a href="info">이용후기 목록</a>
   </div>  
      <!-- Main -->
      <div class="card-body">
         <div class="table-responsive">
            

            
            

            
          
               <table class="table table-bordered">
                  <thead>
                  <tr>
                     <th>글번호</th>
                     <th>작성자</th>
                     <th>제목</th>
                     <th>작성일</th>
                     <th>조회수</th>
                     <th>별점</th>
              		 <th>비고</th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach items="${data.voArr }" var="vo" varStatus="no">
						<tr>
							<td>${vo.review_no}</td>
							<td>${vo.user_id }</td>
							<td>
									<a href="detail?review_no=${vo.review_no }">
									${vo.title }
									</a>
							</td>
							
							<td><fmt:formatDate value="${vo.regdate }" pattern="yy-MM-dd HH:mm"/></td>
							<td>${vo.cnt }</td>
							<td>
			       				<div class="grade-box">
	               					<div class="grade no-drag" name="star">
	               						<div class="grade-star star_gray">★★★★★</div>
	               						<div class="grade-star star_yellow star-${vo.starCnt}">★★★★★</div>
	               						
	               					</div>
	               				</div>
							
							</td>
							<td>
							 <a
								href="delete?review_no=${vo.review_no }" 
								class="btn btn-info btn-danger btn-sm">삭제</a>
							</td>
						</tr>
					</c:forEach>

                  </tbody>
               </table>
            </div>
            <!-- 게시판 페이징 영역 -->

            <ul class="pagination"  style="font-size: 30px;">
               <c:if test="${data.startPage>1 }">
							<a href="?nowPage=${startPage-1 }"><span>«</span></a>
						</c:if>
						<c:forEach begin="${data.startPage }" end="${data.endPage }"
							step="1" var="i">
							<c:choose>
								<c:when test="${data.nowPage==i }">[${i }]</c:when>
								<c:otherwise>
									<a href="?nowPage=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data.endPage<data.lastPage }">
							<a href="?nowPage=${data.endPage+1 }"> <span>»</span>
							</a>
						</c:if>
              
            </ul>

         			
         </ul>
      </div>
   </div>
      </div>
               
            </div>
         </div>
     

 <%--  <jsp:include page="../../inc/footerV3.jsp" /> --%>
	
	
</body>
</html>

	


	