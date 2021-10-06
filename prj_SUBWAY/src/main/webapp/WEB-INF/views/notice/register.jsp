<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../include/header.jsp" %>

<div class="content" style="width: 850px">
	<div class="contact-wrap w-100 p-md-5 p-4">
		<h2 class="mb-4">새 게시글 등록</h2>
			
		<form action="/notice/register" method="post" role="form" id="contactForm" name="contactForm" class="contactForm" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<h3>제목</h3>
							<input type="text" class="form-control" name="title" id="name" placeholder="입력해주세요">
					</div>
				</div>

				<div class="col-md-12">
					<div class="form-group">
						<h3>내용</h3>
							<textarea name="content" class="form-control" cols="30" rows="10" placeholder="내용을 입력하세요"></textarea>
					</div>
				</div>
				
					<div class="form-group uploadDiv">
						첨부파일 <input type="file" name="uploadFile" multiple="multiple">
					</div>
					<div class="uploadResult">
						<ul></ul>
					</div>

				<div class="col-md-12">
					<div class="form-group" style="text-align: center">
						
						<button type="submit" class="btn btn-primary" >등록</button>
						<button type="reset"  class="btn btn-warning" onclick="location.href='/notice/list?pageNum=1&amount=10'">목록</button>
						
						<input type="hidden" name="pageNum" value="<c:out value="1"/>">
						<input type="hidden" name="amount" value="<c:out value="10"/>">
						
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript"><!-- 파일 업로드 스크립트 -->
	$(function(){
		var formObj = $("form[role='form']");
		$("button[type='submit']").click(function(e){
			e.preventDefault();
			var str = '';
			
			$(".uploadResult ul li").each(function(i, obj){
				var jobj = $(obj);
				str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"' />";
				str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"' />";
				str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"' />";
				str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+jobj.data("type")+"' />";
			});
			
			formObj.append(str);
			formObj.submit();
			
		});// end button click event
		
		
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880; //5MB
		
		function checkExtension(fileName, fileSize){
			if(fileSize > maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
			if(regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		} // end checkExtension function
		
	 	$("input[type='file']").change(function(){
// 	 		$(".uploadResult ul").empty();
	 		
	 		var formData = new FormData();
	 		var inputFile = $("input[name='uploadFile']");
	 		var files = inputFile[0].files;
	 		
	 		for(var i=0; i<files.length; i++){
	 			if(!checkExtension(files[i].name, files[i].size)){
	 				return false;
	 			}
	 			formData.append("uploadFile", files[i]);
	 		}
	 		
	 		$.ajax({
	 			url : '/uploadAjaxAction',
	 			processData : false,
	 			contentType : false,
	 			data : formData,
	 			type : 'post',
	 			dataType : 'json',
	 			success : function(result){
	 				console.log(result);
	 				showUploadResult(result);	// 업로드 결과 처리
	 			}
	 		});
	 	});// end uploadBtn Click Event
		
	 	function showUploadResult(uploadResultArr){
			if(!uploadResultArr || uploadResultArr.length == 0){return ;}
			var uploadUL = $(".uploadResult ul");
			var str = "";
			  
			$(uploadResultArr).each(function(i, obj){
				//image type
				if(obj.fileType){
					var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
					str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'><div>";
					str += "<span> "+ obj.fileName+"</span>";
					str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
					str += "<img src='/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str += "</li>";
				}else{
					var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);            
					var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
					str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'><div>";
					str += "<img src='/resources/img/attach.png' style='width:20px;'>";
					str += "<span> "+ obj.fileName+"</span>";
					str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
					str += "</div>";
					str += "</li>";
				} 
			});
			uploadUL.html(str);
		}
	 	
	 	// 파일 삭제 버튼 클릭 이벤트
	 	$(".uploadResult").on("click", "button", function(){
	 		console.log("delete file");
	 		
	 		var targetFile = $(this).data("file");
	 		var type = $(this).data("type");
	 		
	 		var targetLi = $(this).closest("li");
	 		
	 		$.ajax({
	 			url : '/deleteFile',
	 			data : {fileName:targetFile, type:type},
	 			type : 'post',
	 			dataType : 'text',
	 			success : function(result){
	 				alert(result);
	 				targetLi.remove();
	 			}
	 		});
	 		
	 	});
	 	
	});
</script>

<%@ include file="../include/footer.jsp" %>