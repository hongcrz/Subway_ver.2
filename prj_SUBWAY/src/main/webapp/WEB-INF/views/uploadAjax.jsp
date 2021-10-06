<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
		$(function(){
			
			//정규식 파일 길이, 확장자 
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
			}
			
			//객체 복사하기
			var cloneObj = $(".uploadDiv").clone();	
			
			$("#uploadBtn").click(function(){
				var formData = new FormData();
				var inputFile = $("input[name='uploadFile']");
				var files = inputFile[0].files;
				
				console.log(files);
				
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
					dataType : 'json', 	//받는 데이터형태
					success : function(result){
						console.log(result);
						showUploadFile(result);
						$(".uploadDiv").html(cloneObj);
					}
				});
				
			});	//end uploadBtn Click Event
			
			var uploadResult = $(".uploadResult ul");
		 	function showUploadFile(uploadResultArr){
		 		var str = '';
		 		$(uploadResultArr).each(function(i, obj){
		 			
		 			if(!obj.image){
		 				var fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);
		 				str += "<li><a href='/download?fileName=" + fileCallPath + "'>"
		 				+"<img src='/resources/img/attach.png' style='width:20px;'>" 
		 				+ obj.fileName + "</a></li>";
		 			}else{
		 				var fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
						str += "<li><img src='/display?fileName=" + fileCallPath + "'></li>";
		 			}
		 			
		 		});
		 		uploadResult.append(str);
		 	}// end showUploadFile function

			
		});
	</script>
<body>
	<h1>Upload with Ajax</h1>
	
	<div class="uploadDiv">
		<input type="file" name="uploadFile" multiple="multiple">
	</div>
	
	<div class="uploadResult">
		<ul>
		</ul>
	</div>
	
	<button id="uploadBtn">Upload</button>
</body>
</html>