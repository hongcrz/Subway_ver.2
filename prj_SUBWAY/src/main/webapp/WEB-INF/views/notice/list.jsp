<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp" %>

<!-- 본문 리스트 -->
<div id="content">
	<h2 class="subTitle">뉴스ㆍ공지사항</h2>
		<div class="board_list_wrapper">
			<div class="content" style= "border: none !important; margin: 0 auto" >
				<p class="board_total">총<strong><c:out value="${total }"/></strong> 건의 게시글이 있습니다.</p>
						
					<div class="form_search" style="width: 350px; float: right; margin: 0px 0px 10px 20px">
						<form id="searchForm" method="get" name="searchForm" action="/notice/list">
						
							<select name="type" style="margin-left: 10px; font-size: 13px">
								<option value="T" ${(pageMaker.cri.type == "T")? "\"selected\"":"" }">제목</option>
							</select>
						
							<input type="text" name="keyword" value="${pageMaker.cri.keyword }" placeholder="검색어를 입력하세요"/>
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"/>
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }"/>
							<a class="btn_search" href="#"></a>
						</form>
					</div>	
						
					<div class="cont_right" style="float: right; ">
						<sec:authorize access="isAuthenticated()">
							<button id="regBtn" type="button" style="width:100px; height: 40px; margin-bottom: 10px; background: #4e9525 ;
	    							border: 1px solid #4e9525; color: #fff; border-radius: 3px;" onclick="location.href='/notice/register'">글 등록</button>
						</sec:authorize>
					</div>

					<table>
						<caption>뉴스ㆍ공지사항 테이블</caption>
							<colgroup>
								<col width="100px">
								<col width="*">
								<col width="50px">
								<col width="120px">
							</colgroup>
							
					<thead>
						<tr style="background-color:#dddddd">
							<th style="text-align: center; border-bottom: 1px solid #dddddd">번호</th>
							<th style="text-align: center; border-bottom: 1px solid #dddddd">제목</th>
							<td><div></div></td>
							<th style="text-align: center; border-bottom: 1px solid #dddddd">작성일</th>
						</tr>
					</thead>
							<tbody>
							<c:forEach var="notice" items="${list }">
								<tr>
									<td><div class="num"><c:out value="${notice.nno}"></c:out></div></td>
									<td>
										<div class="title">
											<a class="move" href='/notice/get?nno=<c:out value="${notice.nno}"/>'><c:out value="${notice.title}"/>
											</a>
										</div>
									</td>
									<td><div></div></td>
									<td><div class="date"><fmt:formatDate value="${notice.regdate}" pattern="yyyy-MM-dd"/></div></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
							
					</div>
				</div>
			</div>


<!-- 페이징 구간 -->
	<div class="pagination">
			<div class="pull-right">
					<ul class="pagination"><a class="arr prev" href="#">◀</a>
						<c:if test="${pageMaker.prev }">
							<li class="paginate_button previous">
								<a href="${pageMaker.startPage -1 }"> &lt; </a>
							</li>
						</c:if>
						
						<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
							<li class="paginate_button ${pageMaker.cri.pageNum == num ? 'active' : ''}">
								<a href="${num }">${num }</a>
							</li>
						</c:forEach>
						
						<c:if test="${pageMaker.next }">
							<li class="paginate_button">
								<a href="${pageMaker.endPage +1 }"> &gt; </a>
							</li>
						</c:if>
						<a class="arr next" href="#">▶</a>
					</ul>
				</div>
				
				<form action="/notice/list" method="get" id="actionForm">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"/>
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }"/>
					<input type="hidden" name="type" value="${pageMaker.cri.type }"/>
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }"/>
				</form>
	</div>

<!-- page  -->
				
<script type="text/javascript">
$(function(){
	var actionForm = $("#actionForm");
	
	$(".paginate_button a").click(function(e){	
		
		e.preventDefault();
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));	
		actionForm.submit();
	});
	
	
	// -------------검색기능----------------
	
	var searchForm = $("#searchForm");
	
	$("#searchForm a").on("click",function(e){
		
		e.preventDefault();
		
		if(!searchForm.find("input[name='keyword']").val()){
			alert("검색어를 입력하세요.");
			return false;
		}
		
		// 페이지 번호를 1로 처리한다
		searchForm.find("input[name='pageNum']").val("1");
		
		searchForm.submit();
	});
});

</script>

<%@ include file="../include/footer.jsp" %>