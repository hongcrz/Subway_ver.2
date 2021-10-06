<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../include/header.jsp" %>

	
<!--  여기서부터 게시판 영역입니다  -->
 	<section class="ftco-section ftco-degree-bg" style="padding-top:80px;">
		<div class="container">
        	<div class="row">
        		<!-- left area -->
          		<div class="col-lg-8 ftco-animate">
          		
		          	<h2>${notice.title }</h2>
						<br/>
		          	<h6>${notice.regdate }</h6>
		          		<br/>
		          		<br/>
		          	<!-- 공지사항 메인 이미지를 등록  -->
			        <p>
			        	<img src="/resources/upload/${notice.uploadPath }/${notice.uuid }_${notice.fileName }" class="img-fluid">
			        </p>  	
			          	<br/>
			        	<br/>
					<p>${notice.content }</p>
			        	<br/>
			        	<br/>
			        	<br/>

    				<button data-oper="modify" class="btn btn-primary" onclick="location.href='/notice/modify?nno=${notice.nno}'">수정</button>
					<button data-oper="list" class="btn btn-warning" onclick="location.href='/notice/list?pageNum=1&amount=10'">목록</button>		
    						
    				<form action="/notice/modify" method="get" id="operForm">	<!-- 화면이동하면서 데이터 던져준다 -->
						<input id="nno" type="hidden" name="nno" value='<c:out value="${notice.nno }"/>'/>	<!-- 수정할때 객체 인덱스번호 넘긴다 --><!-- 수정후에 list로 넘어갈때는 인덱스가 필요없다. -->
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'/>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'/>
					</form>		
    						
           		</div>  
           		<!-- .col-lg-8 -->
           		
           		<!-- right -->
	            <div class="col-lg-4 sidebar pl-lg-5 ftco-animate">
           
		            <div class="sidebar-box ftco-animate">
						<div class="categories" >
			                <h3>공지사항</h3>
			                <ul id="notice-ul">
				                <li><a href="/notice/get?nno=${notice.nno +1}" class="updown-list">
										다음 글
				                		<span><img alt="" src="/resources/image/ETC_icon/icon_arrow_up.png"></span>
				                	</a></li>
				                <li><a href="/notice/get?nno=${notice.nno}">
				                		<c:out value="${notice.title }"/>
				                		<span><img alt="" src="/resources/image/ETC_icon/icon_arrow_right.png" style="transform: scaleX(-1);"></span>
				                	</a></li>
				                <li><a href="/notice/get?nno=${notice.nno -1}" class="updown-list">
				                		이전 글
				                		<span><img alt="" src="/resources/image/ETC_icon/icon_arrow_down.png"></span>
				                	</a></li>
							</ul>
						</div>
		            </div>
            	</div> <!-- .col-lg-4 End -->
         	</div> <!-- .row Wnd --> 
         	
        </div> <!-- container End -->
    </section> <!-- .section -->
	<!-- 여기까지 게시판 영역입니다  -->

<script type="text/javascript"><!-- 첨부 파일 조회 스크립트 -->
	$(function(){
		var nno = '<c:out value="${notice.nno}"/>';
		
		$.ajax({
 			type : 'get',
 			url : '/notice/getAttachList',
 			data : {nno:nno},
 			dataType : 'json',
 			success : function(result){
 				console.log(result)
 				
 				var str = '';
 				$(result).each(function(i, obj){
 					//image type
 					
 					if(obj.fileType){
 						var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
 						
 						str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'><div>";
 						str += "<img src='/display?fileName="+fileCallPath+"'>";
 						str += "</div>";
 						str += "</li>";
 					}else{
 						str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'><div>";
 						str += "<img src='/resources/img/attach.png' style='width:20px;'>";
 						str += "<span> "+ obj.fileName+"</span>";
 						str += "</li>";
 					} 
 				});
 				$(".uploadResult ul").append(str);
 			}
 		});
		
		$(".uploadResult").on("click", "li", function(){
			console.log("download Files");
			
			var liObj = $(this);
			var path = encodeURIComponent( liObj.data("path")+"/"+liObj.data("uuid")+"_"+liObj.data("filename") );
			self.location = '/download?fileName=' + path;
		});
		
	});
	
	
</script>	

<%@ include file="../include/footer.jsp" %>