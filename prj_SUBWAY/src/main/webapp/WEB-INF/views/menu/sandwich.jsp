<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

<body>
<script type="text/javascript">
/* 메뉴 상세 카테고리 관련 */
	$(document).ready(function() {
			 var list = $(".tab_button li").index();
		     $("#defalt").addClass("on");
	
		     $(".tab_content > li").hide(0);
		     $(".tab_content > li").eq(0).fadeIn(300);
		 });
		 
	$(document).ready(function() {
		   $(".tab_button li").click(function() {
		     var list = $(this).index();
		     $(".tab_button li").removeClass("on");
		     $(this).addClass("on");
	
		     $(".tab_content > li").hide();
		     $(".tab_content > li").eq(list).fadeIn(300);
		   });
		 });
	 
/* 메뉴리스트 팝업 관련  */
	$(document).on('click', '.detail-more',function () {
		
		$(this).next('.menu-detail-pop').fadeIn(300);
		
		});
	$(document).on('click', '.menu-detail-pop .close-btn',function () {
		
		$(this).parents('.menu-detail-pop').fadeOut(300);
		
		});

/* 메뉴등록 공백 경고창 */
   function check() {
	  if(regmenu.pno.value == "") {
	    alert("상품번호를 입력해 주세요.");
	    regmenu.pno.focus();
	    return false;
	  }
	  if(regmenu.pno.value < 1) {
	    alert("1 이상의 상품번호를 입력해 주세요.");
	    regmenu.pno.focus();
	    return false;
	  }
	  if(regmenu.pname.value == "") {
	    alert("상품이름을 입력해 주세요.");
	    regmenu.pw.focus();
	    return false;
	  }
	  if(regmenu.pprice.value == "") {
	    alert("상품가격을 입력해 주세요.");
	    regmenu.pprice.focus();
	    return false;
	  }
	  if(regmenu.pname_eng.value == "") {
	    alert("상품의 영어 이름을 입력해 주세요.");
	    regmenu.pname_eng.focus();
	    return false;
	  }
	  
	  return true;
	}
	
/* 메뉴 삭제 확인 취소 */
  function remove_event(f){
	  
	  if (confirm(f.pname.value+" 을(를) 정말 삭제하시겠습니까??") == true){    //확인
		  
	      document.getElementById("remove_form").submit();
	  }else{   //취소

	      return;
	  }
	  
	}
  
</script>

<!-- 여기서부터 menuList/sandwich 영역입니다  -->
	<div class="body" style=" width : 100%;">
	
    	<div style="overflow: hidden;">
    		<div style="background: url('/resources/image/Background/img_visual_sandwich.png'); width: 100%; height: 380px; background-position: center;">
	    		<div class="test1" style=" width : 100%; overflow: hidden;">
	    			<div class="" >
	    			</div>
	    			<div class="category" style="text-align: center;">
	    				<ul style="list-style: none; padding-top:10px; text-align: center;">
	    					<li style="display: inline-block;"><a href="/menu/sandwich">샌드위치</a></li>
	    					<li style="display: inline-block;; padding-left: 24px; margin-left: 21px; "><a href="/menu/unit">랩ㆍ기타</a></li>
	    					<li style="display: inline-block;; padding-left: 24px; margin-left: 21px;"><a href="/menu/salad">찹샐러드</a></li>
	    					<li style="display: inline-block;; padding-left: 24px; margin-left: 21px;"><a href="/menu/morning">아침메뉴</a></li>
	    					<li style="display: inline-block;; padding-left: 24px; margin-left: 21px;"><a href="/menu/sidedrink">스마일 썹</a></li>
	    					<li style="display: inline-block;; padding-left: 24px; margin-left: 21px;"><a href="/menu/catering">단체메뉴</a></li>
	    				</ul>
	    			</div>
	    			<div>
	    				<h1 style="font-family: font_sw; font-weight:bold; font-size:70px; color: #fff; text-align: center; padding: 70px 0 20px 0;">
	    				Sandwich
	    				</h1>
	    				<p style="color: #fff; font-size: 16px; text-align: center; line-height: 26px;">
	    				전세계 넘버원 브랜드 Subway!
	    				<br>
	    				50년 전통의 세계 최고의 샌드위치를 맛보세요!
	    				</p>
	    			</div>
	    		</div>
	 
    		</div>	 	
    	</div>
    	<div>
    		<ul class = "tab_button" style="background-color: #009132;">
    					<li id="defalt">All</li>
    					<li>클래식</li>
    					<li>프레쉬&라이트</li>
    					<li>프리미엄</li>
    					<li>추가 선택</li>
    				</ul>
    	</div>
    	
    	<div class = "menu_content" style="background-color: #f2f2f2; overflow: hidden; padding-bottom: 120px;">
    	
	    	<!-- 모달 버튼  -->
	    	<sec:authorize access="isAuthenticated()">
	    	<div class="regBtn-div" style=" text-align: center; padding-top: 20px;">
		    	<a class="regBtn" data-toggle="modal" data-target=".modal"
		    		style="display:inline-block; width:400px; padding : 10px; background: #4e9525 ;
					border: 1px solid #4e9525; color: #fff; border-radius: 3px; cursor: pointer;
					font-weight: bold; font-size: 30px;">메뉴 추가
				</a>
			</div>	
			</sec:authorize>
			
    			<div style="padding: 2%; height: 100%;  ">	 
    				<ul class = "tab_content">
    				
    					<!-- 상세 카테고리 all  -->
    					<li class="all">
    						<c:forEach var="vo" items="${list_sandwich_all}">
    						<ul>
    							<li class="detail-more" onclick="location.href='javascript:;void(0);'" style="position: apsolute; z-index: 3;">
    								
		    						<div class="img">
		    							<img src="${vo.purl }">
		    						</div>
		    						<strong class="tit">${vo.pname }</strong>
		    						<span class="eng">${vo.pname_eng }</span>
		    						<span class="cal">${vo.pcal} kcal</span>
		    						<sec:authorize access="isAuthenticated()">
			    						<form action="/menu/remove" method="post" id="remove_form">
				    						<input type="hidden" name="pno" value="${vo.pno }">
				    						<input type="hidden" name="pname" value="${vo.pname }">
				    						<input type="button" onclick="remove_event(this.form);" value="메뉴 삭제"
				    						 style="font-weight: bold; background-color:#4e9525; color: #fff; padding: 5px; border: 1px solid #4e9525; border-radius: 3px; z-index: 999;">
			    						</form>
		    						</sec:authorize>
		    					</li>
		    					
		    					<li class="menu-detail-pop" style="background-color:  rgba(255, 255, 255, 0.8);">
		    						<div class ="close-btn" style="width: 100%; height: 100%;">
		    							<div class = "info-box-top" style="padding: 15px; height: 60%;">
		    								<div>
			    								<div class="title-box"  style="height: 100px;">
				    								<h4 style="font-weight: bold;">${vo.pname }</h4>
					    							<p style="width: 50%; float: left;">${vo.pname_eng }</p>
					    							<p style="width: 50%; float: left; color: #ffc300; font-weight: bold;">${vo.pcal} kcal</p>
			    								</div> 
			    								<div  style="height: 130px;">
				    								<span style="display: block; height: 100px; color: black; font-weight: bold;">${vo.pdesc }</span>
				    							</div>
				    						</div>
		    							</div>
		    							<div class ="info-box-bottom" style="text-align: center; font-size: 0.5px; background-color: #d9d9d9; height: 40%; padding: 15px;">
		    								<div>
		    									<p style="font-size: 15px; display: block; height: 40px; padding: 10px; color: black;">15cm : ${vo.pprice }원 / 30cm : ${vo.pprice*2 -400}원</	p>
		    								</div>
		    								<div style="padding: 15px;">
				    							<p>* 매장에 따라 추천소스는 상이할 수 있습니다.</p>
				    							<p>* 써브웨이가 제공하는 신선한 야채가 정량으로 제공됩니다.</p>
				    							<p><br>* 제품 사진은 이미지컷입니다.<br></p>
			    							</div>
			    						</div>
		    						</div>
		    					</li>
		    				</ul>
		    				</c:forEach>
						</li>
						
						
						<!-- 상세 카테고리 클래식  -->
						<li>
							<c:forEach var="vo" items="${list_sandwich_classic}">
    						<ul>
    							<li class="detail-more" onclick="location.href='javascript:;void(0);'" style="position: apsolute; z-index: 3;">
		    						<div class="img">
		    							<img src="${vo.purl }">
		    						</div>
		    						<strong class="tit">${vo.pname }</strong>
		    						<span class="eng">${vo.pname_eng }</span>
		    						<span class="cal">${vo.pcal} kcal</span>
		    						<sec:authorize access="isAuthenticated()">
			    						<form action="/menu/remove" method="post" id="remove_form">
				    						<input type="hidden" name="pno" value="${vo.pno }">
				    						<input type="hidden" name="pname" value="${vo.pname }">
				    						<input type="button" onclick="remove_event(this.form);" value="메뉴 삭제"
				    						 style="font-weight: bold; background-color:#4e9525; color: #fff; padding: 5px; border: 1px solid #4e9525; border-radius: 3px; z-index: 999;">
			    						</form>
		    						</sec:authorize>
		    					</li>
		    					<li class="menu-detail-pop" style="background-color:  rgba(255, 255, 255, 0.8);">
		    						<div class ="close-btn" style="width: 100%; height: 100%;">
		    							<div class = "info-box-top" style="padding: 15px; height: 60%;">
		    								<div>
			    								<div class="title-box"  style="height: 100px;">
				    								<h4 style="font-weight: bold;"><c:out value="${vo.pname }"/></h4>
					    							<p style="width: 50%; float: left;">${vo.pname_eng }</p>
					    							<p style="width: 50%; float: left; color: #ffc300; font-weight: bold;">${vo.pcal} kcal</p>
			    								</div> 
			    								<div  style="height: 130px;">
				    								<span style="display: block; height: 100px; color: black; font-weight: bold;">${vo.pdesc }</span>
				    							</div>
				    						</div>
		    							</div>
		    							<div class ="info-box-bottom" style="text-align: center; font-size: 0.5px; background-color: #d9d9d9; height: 40%; padding: 15px;">
		    								<div>
		    									<p style="font-size: 15px; display: block; height: 40px; padding: 10px; color: black;">15cm : ${vo.pprice }원 / 30cm : ${vo.pprice*2 -400}원</	p>
		    								</div>
		    								<div style="padding: 15px;">
				    							<p>* 매장에 따라 추천소스는 상이할 수 있습니다.</p>
				    							<p>* 써브웨이가 제공하는 신선한 야채가 정량으로 제공됩니다.</p>
				    							<p><br>* 제품 사진은 이미지컷입니다.<br></p>
			    							</div>
			    						</div>
		    						</div>
		    					</li>
		    				</ul>
		    				</c:forEach>
						</li>
						
						<!-- 상세 카테고리 프래쉬 & 라이트  -->
						<li>
						<c:forEach var="vo" items="${list_sandwich_fresh}">
    						<ul>
    						
    							<li class="detail-more" onclick="location.href='javascript:;void(0);'" style="position: apsolute; z-index: 3;">
		    						<div class="img">
		    							<img src="${vo.purl }">
		    						</div>
		    						<strong class="tit">${vo.pname }</strong>
		    						<span class="eng">${vo.pname_eng }</span>
		    						<span class="cal">${vo.pcal} kcal</span>
		    						<sec:authorize access="isAuthenticated()">
			    						<form action="/menu/remove" method="post" id="remove_form">
				    						<input type="hidden" name="pno" value="${vo.pno }">
				    						<input type="hidden" name="pname" value="${vo.pname }">
				    						<input type="button" onclick="remove_event(this.form);" value="메뉴 삭제"
				    						 style="font-weight: bold; background-color:#4e9525; color: #fff; padding: 5px; border: 1px solid #4e9525; border-radius: 3px; z-index: 999;">
			    						</form>
		    						</sec:authorize>
		    					</li>
		    					<li class="menu-detail-pop" style="background-color:  rgba(255, 255, 255, 0.8);">
		    						<div class ="close-btn" style="width: 100%; height: 100%;">
		    							<div class = "info-box-top" style="padding: 15px; height: 60%;">
		    								<div>
			    								<div class="title-box"  style="height: 100px;">
				    								<h4 style="font-weight: bold;">${vo.pname }</h4>
					    							<p style="width: 50%; float: left;">${vo.pname_eng }</p>
					    							<p style="width: 50%; float: left; color: #ffc300; font-weight: bold;">${vo.pcal} kcal</p>
			    								</div> 
			    								<div  style="height: 130px;">
				    								<span style="display: block; height: 100px; color: black; font-weight: bold;">${vo.pdesc }</span>
				    							</div>
				    						</div>
		    							</div>
		    							<div class ="info-box-bottom" style="text-align: center; font-size: 0.5px; background-color: #d9d9d9; height: 40%; padding: 15px;">
		    								<div>
		    									<p style="font-size: 15px; display: block; height: 40px; padding: 10px; color: black;">15cm : ${vo.pprice }원 / 30cm : ${vo.pprice*2 -400}원</	p>
		    								</div>
		    								<div style="padding: 15px;">
				    							<p>* 매장에 따라 추천소스는 상이할 수 있습니다.</p>
				    							<p>* 써브웨이가 제공하는 신선한 야채가 정량으로 제공됩니다.</p>
				    							<p><br>* 제품 사진은 이미지컷입니다.<br></p>
			    							</div>
			    						</div>
		    						</div>
		    					</li>
		    					
		    				</ul>
		    				</c:forEach>	
						</li>
						
						<!-- 상세 카테고리 프리미엄  -->
						<li>
							<c:forEach var="vo" items="${list_sandwich_premium}">
    						<ul>
    							<li class="detail-more" onclick="location.href='javascript:;void(0);'" style="position: apsolute; z-index: 3;">
		    						<div class="img">
		    							<img src="${vo.purl }">
		    						</div>
		    						<strong class="tit">${vo.pname }</strong>
		    						<span class="eng">${vo.pname_eng }</span>
		    						<span class="cal">${vo.pcal} kcal</span>
		    						<sec:authorize access="isAuthenticated()">
			    						<form action="/menu/remove" method="post" id="remove_form">
				    						<input type="hidden" name="pno" value="${vo.pno }">
				    						<input type="hidden" name="pname" value="${vo.pname }">
				    						<input type="button" onclick="remove_event(this.form);" value="메뉴 삭제"
				    						 style="font-weight: bold; background-color:#4e9525; color: #fff; padding: 5px; border: 1px solid #4e9525; border-radius: 3px; z-index: 999;">
			    						</form>
		    						</sec:authorize>
		    					</li>
		    					<li class="menu-detail-pop" style="background-color:  rgba(255, 255, 255, 0.8);">
		    						<div class ="close-btn" style="width: 100%; height: 100%;">
		    							<div class = "info-box-top" style="padding: 15px; height: 60%;">
		    								<div>
			    								<div class="title-box"  style="height: 100px;">
				    								<h4 style="font-weight: bold;">${vo.pname }</h4>
					    							<p style="width: 50%; float: left;">${vo.pname_eng }</p>
					    							<p style="width: 50%; float: left; color: #ffc300; font-weight: bold;">${vo.pcal} kcal</p>
			    								</div> 
			    								<div  style="height: 130px;">
				    								<span style="display: block; height: 100px; color: black; font-weight: bold;">${vo.pdesc }</span>
				    							</div>
				    						</div>
		    							</div>
		    							<div class ="info-box-bottom" style="text-align: center; font-size: 0.5px; background-color: #d9d9d9; height: 40%; padding: 15px;">
		    								<div>
		    									<p style="font-size: 15px; display: block; height: 40px; padding: 10px; color: black;">15cm : ${vo.pprice }원 / 30cm : ${vo.pprice*2 -400}원</	p>
		    								</div>
		    								<div style="padding: 15px;">
				    							<p>* 매장에 따라 추천소스는 상이할 수 있습니다.</p>
				    							<p>* 써브웨이가 제공하는 신선한 야채가 정량으로 제공됩니다.</p>
				    							<p><br>* 제품 사진은 이미지컷입니다.<br></p>
			    							</div>
			    						</div>
		    						</div>
		    					</li>
		    				</ul>
		    				</c:forEach>	
						</li>
						
						<!-- 상세 카테고리 추가 선택  -->
						
						<li>
						<c:forEach var="vo" items="${list_sandwich_plus}">
    						<ul>
    							<li class="detail-more" onclick="location.href='javascript:;void(0);'" style="position: apsolute; z-index: 3;">
		    						<div class="img">
		    							<img src="${vo.purl }">
		    						</div>
		    						<strong class="tit">${vo.pname }</strong>
		    						<span class="eng">${vo.pname_eng }</span>
		    						<span class="cal">${vo.pcal} kcal</span>
		    						<sec:authorize access="isAuthenticated()">
			    						<form action="/menu/remove" method="post" id="remove_form">
				    						<input type="hidden" name="pno" value="${vo.pno }">
				    						<input type="hidden" name="pname" value="${vo.pname }">
				    						<input type="button" onclick="remove_event(this.form);" value="메뉴 삭제"
				    						 style="font-weight: bold; background-color:#4e9525; color: #fff; padding: 5px; border: 1px solid #4e9525; border-radius: 3px; z-index: 999;">
			    						</form>
		    						</sec:authorize>
		    					</li>
		    					<li class="menu-detail-pop" style="background-color:  rgba(255, 255, 255, 0.8);">
		    						<div class ="close-btn" style="width: 100%; height: 100%;">
		    							<div class = "info-box-top" style="padding: 15px; height: 60%;">
		    								<div>
			    								<div class="title-box"  style="height: 100px;">
				    								<h4 style="font-weight: bold;">${vo.pname }</h4>
					    							<p style="width: 50%; float: left;">${vo.pname_eng }</p>
					    							<p style="width: 50%; float: left; color: #ffc300; font-weight: bold;">${vo.pcal} kcal</p>
			    								</div> 
			    								<div  style="height: 130px;">
				    								<span style="display: block; height: 100px; color: black; font-weight: bold;">${vo.pdesc }</span>
				    							</div>
				    						</div>
		    							</div>
		    							<div class ="info-box-bottom" style="text-align: center; font-size: 0.5px; background-color: #d9d9d9; height: 40%; padding: 15px;">
		    								<div>
		    									<p style="font-size: 15px; display: block; height: 40px; padding: 10px; color: black;">15cm : ${vo.pprice }원 / 30cm : ${vo.pprice*2 -400}원</	p>
		    								</div>
		    								<div style="padding: 15px;">
				    							<p>* 매장에 따라 추천소스는 상이할 수 있습니다.</p>
				    							<p>* 써브웨이가 제공하는 신선한 야채가 정량으로 제공됩니다.</p>
				    							<p><br>* 제품 사진은 이미지컷입니다.<br></p>
			    							</div>
			    						</div>
		    						</div>
		    					</li>
		    				</ul>
		    			</c:forEach>	
						</li>
    				</ul>
    			</div>
    		</div>
    </div>
        	
        	
<!-- modal 창 -->
<div class="modal fade" id="MyModal" tabindex="-1"  role="dialog" aria-labelledby="myModalLabel" aria-hidden = "true">
	<div class = "modal-dialog">
		<div class="modal-content">
			<div class="modal_header">
				<div id = "myModalLabel" style="background-color: #009223;  color: #fff; height: 50px; text-align: center;">
					<h3 style="color: #fff; font-weight: bold; text-align: center; line-height: 50px;">메뉴 신규등록</h3>
				</div>
			</div>
			<form action="/menu/register" name="regmenu" method="POST" onsubmit="return check()">
			<div class="modal-body">
				<div style="text-align: center; padding-top: 40px;">
					<h6>상품번호</h6><input type="number" name="pno" style="width: 350px;" >
					<h6>상품명</h6><input type="text" name="pname" style="width: 350px;">
					<h6>상품가격</h6><input type="number" name="pprice" style="width: 350px;">
					<h6>상품이미지</h6><input type="text" name="purl" style="width: 350px;">
					<h6>상품설명</h6><textarea name="pdesc" rows="4" cols="45" style="resize: none;"></textarea>
					<h6>상품명(영문)</h6><input type="text" name="pname_eng" style="width: 350px;">
					<h6>상품 칼로리</h6><input type="number" name="pcal" style="width: 350px;">
				</div>
			</div>
			<div class ="modal-footer">
				<input type="submit" value="등록" style="display:block; width: 70px; height: 40px; background-color: #009223; font-weight: bold; color: #fff;"/>
				<input type="button" value="취소" class="btn btn-default" data-dismiss="modal" style="display:block; width: 70px; height: 40px; font-weight: bold; background-color: #ffc107 ">
			</div>
			</form>
		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp" %>

	