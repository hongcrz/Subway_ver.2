<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>


<style>
	.ordertable{
		padding-bottom: 20px;
		width: 100%;
		height: auto;
		margin: 0 auto;
		
		background-size: 100%;
		background-color: #e95b1d;
		background-image: url("../../resources/image/Background/img_visual_sandwich.png");
		background-repeat: no-repeat;
 		background-position: left top;
	}	
	.ordtitle{
		/* 
		text-align: center;
		color: black;
		font-size: 40px;
		padding: 5% 0 3%;
		font-weight: bold; 
		*/
		
		font-family: font_sw; 
		font-weight:bold; 
		font-size:60px; 
		color: #fff; 
		text-align: center; 
		padding: 70px 0 20px 0;
	}
	.addr{
		background-color: white;
		overflow: hidden;
		width: 80%;
		margin: 0 auto;
	}
	.addrsub{
		float:left;
		width: 20%;
		font-size: 20px;
		font-weight: bold;
		line-height: 70px;
		text-align: right;
	}
	.addrmain{
		float:left;
		width: 70%;
		font-size: 20px;
		line-height: 70px;
		color: black;
	}
	.addrmain >strong{
		margin-left: 10%;
		width: 90%;
	}
	.addrmain >button{
		float: right;
		text-align: center;
		width: 10%;
		line-height: 40px;
		font-weight: bold;
		
		background-color: #fff;
	    border: 2px solid black;
	    color: #009223;
	    border-radius: 30px;
	    font-size: 20px;
	    font-weight: bold;
	    margin-top: 15px;
	}
	.addrmain>button:hover{
		background-color: #ffc20d;
		cursor: pointer;
	}
	.addrmain>button:focus{
	    outline:none;
	}
	.ordmenu{
		background-color: white;
		overflow: hidden;
		width: 80%;
		margin: 2% auto 2%;
		color: black;
	}
	.ordcheck{
		text-align: left;
		width: 80%;
		border-bottom: 2px solid #888484;
		margin: 0 auto;
	}
	.ordcheck >a{
		margin: 0 3% 0 3%;
		width: 100%;
		font-size: 20px;
		font-weight: bold;
		line-height: 70px;
		color: #808080;
	}
	.ordfot{
		background-color: white;
		overflow: hidden;
		width: 80%;
		margin: 2% auto 0;
		color: black;
	}
	.ordsum{
		float:left;
		width:60%;
		font-size: 30px;
		font-weight: bold;
		line-height: 70px;
		text-align: center;
		color: black;
	}
	.sum{
		float: left;
		color: black;
		font-size: 30px;
		font-weight: bold;
		line-height: 150px;
		text-align: center;
		width: 30%;
	}
	.sumprice{
		float: left;
		font-size: 40px;
		font-weight: bold;
		line-height: 150px;
		text-align: center;
	}
	.ordbtn{
		float: right;
		width: 30%;
		text-align: center;
		line-height: 150px;
	}
	.ordplus{
		display: inline-block;
		width: 170px;
		line-height: 70px;
		background-color: #fff;
	    border: 2px solid #009223;
	    color: #009223;
	    box-sizing: border-box;
	    border-radius: 30px;
	    font-size: 20px;
	    font-weight: bold;
	    margin-right: 15px;
	}
	.finish{
		display: inline-block;
		width: 170px;
		line-height: 70px;
		background-color: #009223;
	    border: 2px solid #009223;
	    color: white;
	    box-sizing: border-box;
	    border-radius: 30px;
		font-size: 20px;
		font-weight: bold;
	}
	.ordpick{
		padding: 30px 100px 90px 100px;
		background-color: white;
		overflow: hidden;
		margin: 0 auto;
		width:80%;
	}	
	.basic{
		padding-bottom: 22px;
		border-bottom: 1px solid #e5e5e5;
		overflow: hidden;
	}
	.info{
		float: left;
	}
	.basic >img{
		float: right;
	}
	.info >label{
		font-size: 40px;
		font-weight: bold;
		line-height: 50px;
	}
	.info >p{
		color: gray;
		margin: 10px 0  20px 30px;
	}
	.info >strong{
		color:black;
		margin-left: 30px;
		font-size: 30px;
		font-weight: bold;
		line-height: 50px;
	}
	.plus{
		border-bottom: 1px solid #e5e5e5;
		overflow: hidden;
		padding: 35px 0 35px 35px;
		font-size: 25px;
	}
	.plustag{
		border: 1px solid #ddd;
		border-radius: 12px;
		color : #bbb;
		float: left;
		width: 10%;
		text-align: center;
	}
	.plusprice{
		float: right;
	}
	.plus >span{
		padding-left: 20px;
	}
	.total{
		font-size: 25px;
		line-height: 30px;
		padding-top: 20px;
		float: right;
	}
	.total>strong{
		color: #ffc20d;
	}
	.ordplus:hover, .finish:hover{
		background: #ffc20d;
	}
	.ordcheck >button{
		text-align: center;
		width: 10%;
		line-height: 40px;
		font-weight: bold;
		
		background-color: #fff;
	    border: 2px solid black;
	    color: black;
	    border-radius: 30px;
	    font-size: 20px;
	    font-weight: bold;
	    margin-top: 15px;
	    margin-bottom: 15px;
	}
	.ordcheck>button:hover{
		background-color: #ffc20d;
		cursor: pointer;
	}
	.ordcheck>button:focus{
	    outline:none;
	}
	
</style>
<script>
	/* function set(){
		var str=prompt("변경하려는 주로를 입력하세요");
		if(str==""){
			alert("주소지가 공란입니다.");
		}
		else if(str==null){
			alert("취소합니다.")
		}
		else{
			document.getElementById("main").innerHTML=str;
			alert("주소지가 변경되었습니다.");
		}
		
	} */
	
	function numberWithCommas(${vo.pprice}) {
		return ${vo.pprice}.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	$("#btnDelete").click(function(){
	       if(confirm("장바구니를 비우시겠습니까?")){
	           location.href="/cart/cartlist/deleteAll";
	       }
	});
</script>
<!-- 장바구니 및 결제페이지 -->

<div class="ordertable">
	<h1 class="ordtitle">장바구니</h1>
	<div class="addr">
		<h3 class="addrsub">배달주소</h3>
		<div class="addrmain">
			<c:forEach var="vo" items="${listcart }">
				<strong id="main">${vo.useraddress }</strong>
				<!-- <button onclick="set()">변경하기</button> -->
			</c:forEach>
			<!-- <a onclick="set()">변경하기</a> -->
		</div>
	</div>
	<div class="ordmenu">
		<div class="ordcheck">
			<button type="button" id="btnDelete">전체삭제</button>
		</div>
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
		
	</div>
	<div class="ordfot">
		<div class="ordsum">
			<h2 class="sum">최종 결제 금액</h2>
			<h2 class="sumprice"> 7,600원</h2>
		</div>
		<div class="ordbtn">
			<a class="ordplus" href="#">
				메뉴추가
			</a>
			<a class="finish" href="#">
				주문하기
			</a>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>  