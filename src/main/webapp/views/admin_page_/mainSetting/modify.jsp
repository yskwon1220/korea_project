
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<head>
<hr>
<title>수정</title>

<link rel="stylesheet"
   href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>

   <div class="container">
      <div id="content">

         <!-- Content -->
         <article>
            <h2>업로드</h2>

            <form  action="modifyReg" method="post" enctype="multipart/form-data" name="temp">
               <c:set var="sm" value="${data }" />
               <input type="hidden" name="imgNo" value="${sm.imgNo}">
               <div class="mb-3">
               <div class="filebox preview-image"> 
                  <c:choose>
                     <c:when test="${data.image == null}">
                        <input class="upload-name" value="파일선택" disabled="disabled">
                        <label for="input-file">업로드</label>
                        <input type="file" id="input-file" class="upload-hidden"
                           name="imgUpload">
                     </c:when>
                     <c:otherwise>
                        <input type="hidden" class="upload-name" name="imgUpload"
                           value="${data.imgUpload}" disabled="disabled">${data.image}
                                                             <input
                           type="hidden" name="image" value="${data.image}">
                        <input class="btn btn-info btn-primary btn-sm" type="button"
                           value="파일 삭제" onclick="fileDelete()" />
                     </c:otherwise>
                  </c:choose>
                  </div>
               </div>
               <div class="mb-3">
                  <label for="content_1">컨텐츠1</label>
                  <textarea class="form-control" rows="5" name="content_1"
                     id="content_1">${sm.content_1 }</textarea>
               </div>
               <div class="mb-3">
                  <label for="content_2">컨텐츠2</label>
                  <textarea class="form-control" rows="5" name="content_2"
                     id="content_2">${sm.content_1 }</textarea>
               </div>


               <div>
                  <hr>
               </div>
               <div>

                  <input class="btn btn-primary" type="submit" value="수정하기" /> <a
                     class="btn btn-primary" href="info">목록으로</a>
               </div>
            </form>
         </article>
         <script type="text/javascript">
            $(document).ready(
                  function() {
                     var fileTarget = $('.filebox .upload-hidden');
                     fileTarget.on('change', function() {
                        if (window.FileReader) {
                           var filename = $(this)[0].files[0].name;
                        } else {
                           var filename = $(this).val().split('/')
                                 .pop().split('\\').pop();
                        }
                        $(this).siblings('.upload-name').val(filename);
                     });
                  });
            function fileDelete() {
               if (confirm("파일을 삭제하시겠습니까?\n삭제된 파일은 복원되지 않습니다.")) {
                  temp.action = "fileDelete";
                  temp.submit();
               }
            }
            function check() {

               if (modify.content_1.value == "") {
                  alert("내용을 입력해 주세요.");
                  modify.content_1.focus();
                  return false;
               }
               else if (upinsert.content_2.value == "") {
                  alert("내용을 입력해 주세요.");
                  modify.content_2.focus();
                  return false;
               } else
                  return true;
            }
         </script>
      </div>
   </div>
</body>
</html>