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
		background-image: url('/resources/image/Background/img_visual_sandwich.png'); 
		background-position: left top;
		background-size: 100%;
		background-repeat: no-repeat;
		background-color: #e95b1d;
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
	
	
	.wrapper {
		width: 70%;
		margin: 30px auto 0;
		background-color: #fff;
	} 
	
	.menuInfo {
		width: 100%;
		margin-top: 10px;
		padding-bottom: 20px;
	}		
	
	
	
</style>


<!-- 여기서부터 order/cartPage 영역입니다  -->
	<div id="container" >
	   	<div class=top-text>
	   		<h1><b>Cart List</b></h1>
	   		<p>장바구니 페이지입니다</p>
	   	</div> <!-- .top-text End -->
	   		
    	<div class="wrapper">
    		<div class="menuInfo">
	    		<div class="menuInfoLeft"> 
	    		<!-- 가라로 넣은 데이터를 수정합니다 -->
		    		<c:forEach var="vo" items="${listcart }">
						<div class="ordpick">
							<div class="basic">
								<div class="info">
									<label>${vo.pname }</label>
									<p>
										<th>${vo.csize }cm,</th>
										<th>${vo.bread }</th>
										<th>(${vo.toasting }),</th>
										<th>${vo.cheese },</th>
										<th>${vo.vege }</th>
										
									</p>
									<strong>${vo.pprice}원</strong>
								</div>
								<img src=${vo.purl }>
							</div>
							<div class="plus">
								<div class="plustag">
									추가
								</div>
								<span>${vo.addoption }</span>
								<div class="plusprice">
									<strong>1,600</strong>
									<span>원</span>
								</div>
							</div>
							<div class="plus">
								<div class="plustag">
									추가
								</div>
								<span>${vo.moption }</span>
								<div class="plusprice">
									<strong>1,800</strong>
									<span>원</span>
								</div>
							</div>
							<div class="plus">
								<div class="plustag">
									추가
								</div>
								<span>${vo.setoption }</span>
								<div class="plusprice">
									<strong>0</strong>
									<span>원</span>
								</div>
							</div>
							<div class="total">
								총 주문금액
								<strong>7,600</strong>
								<span>원</span>
							</div>
						</div>
					</c:forEach>
    			</div> <!-- .menuInfoLeft End -->
    			<div class="menuInfoRight"> 
    				대충 메뉴 설명 
    			</div> <!-- .meneInfoRight End -->
    		</div> <!-- .menuInfo End -->
    		
    		<div class="userCustomInfo">
	    		<div>선택항목들 나열 </div>
	    		<div>STEP1. 필수 선택 </div>
	    		<div>STEP2. 추가 선택 </div>
	    		<div>STEP3. 세트 선택 </div>
    		
    		</div> <!-- .userCustomInfo End -->
    		
    		
    	</div> <!-- .wrapper End  -->

    	<%@ include file="modal.jsp" %>
		
   	</div> <!-- #container End -->


<%@ include file="../include/footer.jsp" %>