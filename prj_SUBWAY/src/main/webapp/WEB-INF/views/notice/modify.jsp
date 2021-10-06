<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../include/header.jsp" %>

<div class="content" style="width: 850px">
	<div class="contact-wrap w-100 p-md-5 p-4">
		<h2 class="mb-4">글 수정하기</h2>
			
		<form action="/notice/modify" method="post" id="contactForm" name="contactForm" class="contactForm">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>글 번호</label>
							<input class="form-control" name="nno" value='<c:out value="${notice.nno }"/>' readonly="readonly">
					</div>	
					<div class="form-group">
						<label>제목</label>
							<input rows="3" cols="30" name="title" class="form-control" style="font-weigth:400px; height: 52px; width: 100%" value='<c:out value="${notice.title }"/>'>
					</div>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						<label>내용</label>
							<textarea name="content" class="form-control" rows="10" cols="30" placeholder="내용을 입력하세요"><c:out value="${notice.content }"/></textarea>
					</div>
				</div>
				
					<div class="form-group uploadDiv">
						파일 업로드 <input type="file" name="uploadFile" multiple="multiple">
					</div>
					<div class="uploadResult">
						<ul></ul>
					</div>
				
				<div class="col-md-12">
					<div class="form-group" style="text-align: center">
						<button type="submit" data-oper="modify" class="btn btn-primary">글 수정</button>
						<button type="submit" data-oper="remove" class="btn btn-warning">글 삭제</button>
						<button type="reset" class="btn" style="color: #212529; background-color: #cdd0cb;
    							border-color: #cdd0cb;"
    							onclick="location.href='/notice/list?pageNum=1&amount=10'">목록</button>	
						
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'/>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'/>
					</div>
				</div>
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
		</form>
	</div>
</div>
<script>

$(document).ready(function() {
	
	var formObj = $("form");	// form 객체 받아오기
	
	$("button").click(function(e){	// 버튼 클릭 이벤트
		// * 버튼 타입 클릭시 submit() 이벤트와 click()이벤트 동시 진행이기 때문에
		// e.preventDefault() 메소드를 이용하여 기존에 설정된 이벤트 해제(submit)
		e.preventDefault();
		
		// data-oper 속성 받아오기(modify or remove or list)
		var operation = $(this).data("oper");
		
		if(operation === 'remove'){
			// 기존에 작성된 post 방식으로 전달해야 돼서 속성값을 바꿔준다. 
			formObj.attr("action", "/notice/remove");
		}else if(operation === 'list'){
			// 목록 화면으로 가기위한 속성 변경
			formObj.attr("action", "/notice/list");
			formObj.attr("method", "get");
			
			// 목록 화면에서 사용할 데이터 객체 임시 저장
			var pageNumTag = $("input[name=pageNum]").clone();
			var amountTag = $("input[name=amount]").clone();
			
			formObj.empty();	// form 객체 내부를 비워준다.
			formObj.append(pageNumTag);	// pageNum 태그 추가
			formObj.append(amountTag);	// amountNum 태그 추가
		}else if(operation === 'modify'){
			var str = '';
			
			$(".uploadResult ul li").each(function(i, obj){
				var jobj = $(obj);
				str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"' />";
				str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"' />";
				str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"' />";
				str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+jobj.data("type")+"' />";
			});
			formObj.append(str);
		}
		
		// form 태그 전송(modify or remove)
		formObj.submit();
	});
});

</script>

<%@ include file="../include/footer.jsp" %>