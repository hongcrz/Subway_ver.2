<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>


<style>
	#container {
	/*.container와 분리하되, wrapper의 역할을 합니다 */
		width: 100%;
		height: auto;
		margin: 0 auto;
		padding: 0;
		background-image: url('/resources/image/Background/img_visual_wrap02.png'); 
		background-position: left top;
		background-repeat: no-repeat;
		background-color: #85c441;
	}
	
	.top-text h1 {
		font-family: font_sw; 
		font-weight:bold; 
		font-size:70px; 
		color: #fff; 
		text-align: center; 
		padding: 70px 0 20px 0;
	}
	
	.top-text p {
		color: #fff; 
		font-size: 16px; 
		text-align: center; 
		line-height: 26px;
	}
	
	.sub-progress-bar {
		margin: 20px auto 60px;
		text-align: center;
	}
	
	.sub-progress-bar p{
		color: #fff;
	}
	
	.wrapper {
		width: 70%;
		margin: 30px auto 0;
	} 
	
	.category {
		padding-top: 10px; 
		padding-bottom: 10px;
		background-color: #009132;
	}
	
	.category ul {
		width: 100%; 
		height: 3em;
		
		box-sizing: border-box;		
		
		list-style: none; 
		text-align: center;
	}
	
	.category ul li {
		width: 20%;
		line-height: 3em;
		display: inline-block;
		 
		box-sizing: border-box;		
		border-left: 1px solid #e5e5e5;
		
		background-color: #fff;
		float: left;
	}
	
	.category ul li:first-child {
		border-left: none;
		background-color: #009132;
	}
	
	.category ul li:first-child a {
		color: #fff;
	}
	
	.category ul li a {
		color: #666;
		font-size: 1em;
		
		display: block;
		width: 100%;
		line-height: 3em;
	}
	
	.menuList {
		width: 100%;
		margin-top: 10px;
		padding-bottom: 20px;
		
		background-color: #fff;
	}
	
	.menuList > ul {
		font-size: 0;
		padding-left: 1%;
		padding-top: 1%;
	}
	
	.menuList > ul > li {
		width: 33%;
		height: 230px;
		display: inline-block;
		
		font-size: 16px;
	}
	
	.menu-ul {
		position: relative;
	}
	
	.menu-detail-pop {
		z-index: 999; 
		display: none;	
		background-color: rgba(255, 255, 255, 0.9);	
		
		position: absolute;	
		top: 0; 
		left: 0;
		
		width: 100%; 
		height: 100%;
	}
	
	.menu-detail-pop > div {
		width: 100%; 
		height: 100%; 
		
		background-image: url('/resources/image/ETC_icon/cart.png');
		background-repeat: no-repeat;
		background-size: 50px 50px;
		background-position: 48% 25%;
		
		text-align: center;
		
		line-height: 100%;
	}
	
	.menu-wrapper {
		width: 100%;
	}
	
	.menu-img img {
		margin: 0 auto;
		width: 80%;
		display: block;
	}
	
	.menu-txt {
		text-align: center;
		padding: 0.5em;
	}
	
	.tit {
		color: #333;
	}
	.not-emph {
		font-size: 0.8em;
		
	}
	.cal{
		color: #ffc20d;
		font-weight: bold;
	}
	
	/* modal CSS */
	.modal-dialog {
		width: 70%;
	}
	
	.modal-header {
		margin: 0 auto;
		text-align: center;
	} 
	
	
	.form-group.modal-center {
		text-align: center;
	}
	
	#btn-close {
		width: 100%; 
		height: 100%; 
		
		background-image: url('/resources/image/ETC_icon/btn_close.png');
		background-repeat: no-repeat;
		background-size: 50px 50px;
		background-position: 50% 50%;
		
		text-align: center;
		
		/* line-height: 100%; */
	}
	
	.modal-footer {
		text-align: center;
	}
	
	.pr-li {
		display: inline-block; 
		width: 49%; 
		height: 200px;
	}
	
	.set-li {
		display: inline-block;
		width: 100%; 
		height: 50px; 
		text-align: center;
	}
	/* step - select animation */
	.pr-li .tit, .moption-li .tit, .set-li .tit {
		background-image: linear-gradient(180deg, rgba(255, 255, 255, 0) 40%, #85c441 60%);
	  	background-repeat: no-repeat;
	  	background-size: 0% 90%;
	  	background-position: 0 88%;
	  	transition: background-size 0.25s ease-in;
	  
	}
	/* js로 click 이벤트 구현 예정 
	.bread-li:hover .tit {
		background-size: 100% 90%;
	}*/	
	
	
</style>

<script type="text/javascript">
	$(function(){
		
		// tab 변경: a태그 클릭 이벤트
		$(".tabSwitch").click(function() {
			// 배경색 초기화
			$(".tabSwitch").parent().css("background-color", "#fff");
			$(".tabSwitch").css("color", "#666");
			
			
			// selected 배경색 변경 
			$(this).parent().css("background-color", "#009132");
			$(this).css("color", "#fff");
			
			
			var oper = $(this).data("oper");
			//alert(oper);
			
			var min_pno;
			var max_pno;
			
			if (oper === 'sandwich') {
				min_pno = 100;
				max_pno = 199;
			} else if (oper === 'salad') {
				min_pno = 200;
				max_pno = 299;
			} else if (oper ==='wrap') {
				min_pno = 800;
				max_pno = 849;
			} else if (oper === 'breakfast') {
				min_pno = 850;
				max_pno = 899;
			} else { // oper === 'side'
				min_pno = 600;
				max_pno = 649;
			}
			
			// ajax를 이용하여 min/max 범위의 데이터 불러오기  
			$.ajax({
				type: "GET",
				url: "/order/tabswitch",
				data:  {
					"min_pno" : min_pno,
					"max_pno" : max_pno
				},
				dataType: 'json'
				,
				success: function(data){
					// 정상 data 여부 확인 
					//alert(data.length);
					//console.log(JSON.stringify(data))
					
					//var result = data.json;
					
					// 기존 html 영역을 지운 후,
					$(".menuList ul li").remove();
					
					// 새로운 데이터리스트로 재출력
					var str = "";
					
					$.each(data , function(idx, val) {
						//console.log(idx + " : " + val.pno);
						
							str += '<li>';
				    			str += '<ul class="menu-ul">';
							    	str += '<li class="menu-li detail-more">';
							    		str += '<div class="menu-wrapper">';
										    str += '<div class="menu-img">';
										    	str += '<img src="' + val.purl + '">';
										    str += '</div>';
										    
										    str += '<div class="menu-txt">';
										    	str += '<strong class="tit">' + val.pname + '</strong><br/>';
								    			str += '<span class="eng not-emph">' + val.pname_eng + '</span><br/>';
								    		
								    		if (val.pno < 600 || val.pno > 699) {
									    		str += '<span class="cal not-emph">' + val.pcal + ' kcal</span>';
								    		}
										    str += '</div>';
							    		str += '</div>';
							    	str += '</li>';
							    			
							    			<!-- mouse hover 시 구현되는 영역입니다  -->
							    	str += '<li class="menu-detail-pop">';
							    		str += '<div class ="close-btn">';
							    			str += '<div style="width: 100%; height: 60%;"></div>'
							    			str += '<h6><a href="" data-toggle="modal" data-target=".modal"> Go to CART! </a></h6>';
							    		str += '</div>';
							    	str += '</li>';
						    	str += '</ul>';
						   str += '</li>';
					  
					});
				
    				$(".menuList ul").html(str);
				},
				error: function(result){
					alert("error : " + result);
				}
			
			});
		});// End tabSwitch();
		
	});
 	
	// ajax로 불러온 데이터에 대한 mouse hover 이벤트
	$(document).on("mouseover", ".menu-li", function(){
		$(this).next().fadeIn(300);
	});
	
	$(document).on("mouseleave", ".close-btn", function(){
		$(this).parents('.menu-detail-pop').fadeOut(300);
	}); 
	
</script>


<!-- modal 관련 스크립트 영역 -->
<script type="text/javascript" src="/resources/js/modal.js"></script>
<script>
	// modal toggle action 
	$(document).on("show.bs.modal", ".modal", function(e){
		
		// process(;step1~9) 전체 숨김 처리 
		$(".process").css("display", "none");
		
		// step1 open 
		if($(".step1").css("display", "none")) {
			$(".step1").css("display", "block");
			$("#modalPrevBtn").hide();
			$("#modalOrderBtn").hide();
		}
		
		// step1 reset
		$("input:radio[name='size']").prop("checked", false);
		
		// step3 reset
		$("input:radio[name='toasting']").prop("checked", false);
	});
	
	
 	/* 
 	$(document).on("toggle", ".modal", function(){
		$(".step1").css("display", "block");
	}); 
 	*/
	
 	
 	/* 제 발 간 단 한 로 직 생 각 해 내 자 지 금 은 귀 찮 으 니 까 그 냥 복 붙 하 고 하 하 깔 깔 */
 	/* 제 발 간 단 한 로 직 생 각 해 내 자 지 금 은 귀 찮 으 니 까 그 냥 복 붙 하 고 하 하 깔 깔 */
 	/* 제 발 간 단 한 로 직 생 각 해 내 자 지 금 은 귀 찮 으 니 까 그 냥 복 붙 하 고 하 하 깔 깔 */
 	/* 제 발 간 단 한 로 직 생 각 해 내 자 지 금 은 귀 찮 으 니 까 그 냥 복 붙 하 고 하 하 깔 깔 */
 	/* 제 발 간 단 한 로 직 생 각 해 내 자 지 금 은 귀 찮 으 니 까 그 냥 복 붙 하 고 하 하 깔 깔 */
 	/* 제 발 간 단 한 로 직 생 각 해 내 자 지 금 은 귀 찮 으 니 까 그 냥 복 붙 하 고 하 하 깔 깔 */
	// step2: .bread-li - selected 
	$(document).on("click", ".bread-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
		} else {
			$(".bread-li").find(".tit").css("background-size", "0% 90%");
			$(".bread-li").removeClass("selected");
			
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
	});
	
	// step4: .cheese-li - selected 
	$(document).on("click", ".cheese-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
		} else {
			$(".cheese-li").find(".tit").css("background-size", "0% 90%");
			$(".cheese-li").removeClass("selected");
			
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
	});
 	
	// step4: .choption-li - selected 
	$(document).on("click", ".choption-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
		} else {
			$(".choption-li").find(".tit").css("background-size", "0% 90%");
			$(".choption-li").removeClass("selected");
			
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
	});
 	
	// step5: .vege-li - selected 
	$(document).on("click", ".vege-li", function() {
		
		var lastIndex = $(".vege-li").length -1;
		// 모든 야채 제외 시, 
		if ( $(this).index() === lastIndex ) {
			
			// 선택한 객체가 selected 클래스를 보유하고 있으면, 
			if ($(this).hasClass("selected") === true) {
				$(this).children().find(".tit").css("background-size", "0% 90%");
				$(this).removeClass("selected");
			} else {
				$(".vege-li").find(".tit").css("background-size", "0% 90%");
				$(".vege-li").removeClass("selected");
				
				$(this).children().find(".tit").css("background-size", "100% 90%");
				$(this).addClass("selected");
			}
		}
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		else if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
			$(".vege-li").eq(lastIndex).children().find(".tit").css("background-size", "0% 90%");
			$(".vege-li").eq(lastIndex).removeClass("selected");
		} 
		
		else {
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
			
			$(".vege-li").eq(lastIndex).children().find(".tit").css("background-size", "0% 90%");
			$(".vege-li").eq(lastIndex).removeClass("selected");
		}
		
	});
 	
	// step6: .ss-li - selected 
	$(document).on("click", ".ss-li", function() {
		
		var lastIndex = $(".ss-li").length -1;
		// 모든 소스 제외 시, 
		if ( $(this).index() === lastIndex ) {
			
			// 선택한 객체가 selected 클래스를 보유하고 있으면, 
			if ($(this).hasClass("selected") === true) {
				$(this).children().find(".tit").css("background-size", "0% 90%");
				$(this).removeClass("selected");
			} else {
				$(".ss-li").find(".tit").css("background-size", "0% 90%");
				$(".ss-li").removeClass("selected");
				
				$(this).children().find(".tit").css("background-size", "100% 90%");
				$(this).addClass("selected");
			}
		}
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		else if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
			$(".ss-li").eq(lastIndex).children().find(".tit").css("background-size", "0% 90%");
			$(".ss-li").eq(lastIndex).removeClass("selected");
		} 
		
		else {
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
			
			$(".ss-li").eq(lastIndex).children().find(".tit").css("background-size", "0% 90%");
			$(".ss-li").eq(lastIndex).removeClass("selected");
		}
		
	});
 	
	// step7: .option-li - selected 
	$(document).on("click", ".option-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
		
		} else {
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
		
	});
 	
	// step8: .moption-li - selected 
	$(document).on("click", ".moption-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
		} else {
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
		
	});
 	
	// step9: .bev-li - selected 
	$(document).on("click", ".bev-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
		} else {
			$(".bev-li").find(".tit").css("background-size", "0% 90%");
			$(".bev-li").removeClass("selected");
			
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
	});
 	
	// step9: .coo-li - selected 
	$(document).on("click", ".coo-li", function() {
		
		// 선택한 객체가 selected 클래스를 보유하고 있으면, 
		if ( $(this).hasClass("selected") === true  ) {
			$(this).children().find(".tit").css("background-size", "0% 90%");
			$(this).removeClass("selected");
			
		} else {
			$(".coo-li").find(".tit").css("background-size", "0% 90%");
			$(".coo-li").removeClass("selected");
			
			$(this).children().find(".tit").css("background-size", "100% 90%");
			$(this).addClass("selected");
		}
	});
</script>



	<!-- 여기서부터 order/orderPage 영역입니다  -->
	<div id="container" >
	   	<div class=top-text>
	   		<h1><b>Home-Sub</b></h1>
	   		<p>온라인 주문 시 배달되는 서비스입니다</p>
	   	</div> <!-- .top-text End -->
	   		
	   	<!-- <div class="sub-progress-bar">
	   		<p>sub-progress-bar 구현 예정 </p>
	   	</div> .progress-bar End -->
    	
    	<div class="wrapper">
	    	<div class="category">
		    	<ul>
		    		<li><a href="#" data-oper="sandwich" class="tabSwitch" onclick="return false">샌드위치</a></li>
		    		<li><a href="#" data-oper="salad" class="tabSwitch" onclick="return false">찹샐러드</a></li>
		    		<li><a href="#" data-oper="wrap" class="tabSwitch" onclick="return false">랩</a></li>
		    		<li><a href="#" data-oper="breakfast" class="tabSwitch" onclick="return false">아침메뉴</a></li>
		    		<li><a href="#" data-oper="side" class="tabSwitch" onclick="return false">사이드ㆍ음료</a></li>
		    	</ul>
	    	</div> <!-- .category End -->
    		
    		<!-- 해당 부분부터 forEach로 반복하여 출력합니다  -->
    		<div class="menuList">
    			<ul>
    				<c:forEach var="product" items="${prlist }">
	    				<li>
	    					<ul class="menu-ul">
	    						<!-- 상품 정보입니다 -->
				    			<li class="menu-li detail-more">
				    				<div class="menu-wrapper">
							    		<div class="menu-img">
							    			<img src="${product.purl }">
							    		</div>
							    		<div class="menu-txt">
								    		<strong class="tit">${product.pname }</strong><br/>
								    		<span class="eng not-emph">${product.pname_eng }</span><br/>
								    		<span class="cal not-emph">${product.pcal} kcal</span>
							    		</div>
				    				</div>
				    			</li>
				    			
				    			<!-- mouse hover 시 구현되는 영역입니다  -->
				    			<li class="menu-detail-pop">
				    				<div class ="close-btn">
				    					<div style="width: 100%; height: 100%;">
					    					<a href="" data-toggle="modal" data-target=".modal" style="display: block; width: 100%; line-height: 230px;">
					    						<strong>5252! 주문하러 가자구! </strong>
					    					</a>
				    					</div>
				    				</div>
				    			</li>
			    			</ul>
			    		</li>	
    				</c:forEach>
				</ul>
    		</div>	<!-- .menuList End -->
    	</div> <!-- .wrapper End  -->

    	<%@ include file="modal.jsp" %>
		
   	</div> <!-- #container End -->


<%@ include file="../include/footer.jsp" %>