<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Subway 써브웨이</title>
<link rel="shortcut icon" href="/resources/image/Logo/logo_s_SxL_icon.ico" type="image/x-icon">
<!-- bootstrap -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/bootstrap/css/animate.css">
<link rel="stylesheet" href="/resources/bootstrap/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/bootstrap/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/resources/bootstrap/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/bootstrap/css/ionicons.min.css">
<link rel="stylesheet" href="/resources/bootstrap/css/flaticon.css">
<link rel="stylesheet" href="/resources/bootstrap/css/icomoon.css">
<link rel="stylesheet" href="/resources/bootstrap/css/style.css">

<!-- option style -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<!-- custom -->
<link rel="stylesheet" href="/resources/css/notice.css">
<link rel="stylesheet" href="/resources/css/notice_list.css">
<link rel="stylesheet" href="/resources/css/notice_modify.css">
<link rel="stylesheet" href="/resources/css/notice_register.css">
<link rel="stylesheet" href="/resources/css/member.css">
<link rel="stylesheet" href="/resources/css/menu.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/mysub.css">

<!--  bootstrap script -->
<script src="/resources/bootstrap/js/jquery.min.js"></script>
<script src="/resources/bootstrap/js/jquery-migrate-3.0.1.min.js"></script>


</head>
<body>
	<div class="header">
		<div style="background-color: #62ce08; height: 5px"></div>
		<div style="float: right; padding-right: 10%; padding-top: 1.9%;">
			<sec:authorize access="isAnonymous()">
				<a href="/member/login"
					style="color: #666666; font-size: 13px; font-weight: normal; height: 30px;">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/member/join"
					style="color: #666666; font-size: 13px; font-weight: normal; height: 30px;">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="https://www.subway.com/en-us/exploreourworld">
					<img alt="global" src="../../../resources/image/SNS_icon/icon_utill_global.png">
				</a>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
			    <form action="/member/logout" method="POST" >
			        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			        <button type="submit" 
			        	style="color: #666666; font-size: 13px; font-weight: normal; height: 30px; background-color: #fff; border: none;">
			        	로그아웃
			        </button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/order/cart">
						<img alt="cart" src="../../../resources/image/ETC_icon/cart2.png">
					</a>
			        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="https://www.subway.com/en-us/exploreourworld">
						<img alt="global" src="../../../resources/image/SNS_icon/icon_utill_global.png">
					</a>
			    </form>
			</sec:authorize>
		</div> 
		<div style="width:100%; text-align: center; padding: 2%; margin:0px auto; margin-left: 17%">
			<a href="<c:url value='/'/>"><img alt="" src="../../../resources/image/Logo/logo_w.png"></a>
		</div>

		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" >
			<div class="container-fluid" style="width: 100%; background-color: white;">
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul id="main_menu" class="navbar-nav m-auto">
						<li class="nav_back" style="background-color: white;width: 100%; height: 220px;position: absolute;left: 0;top: 65px;"></li>
						<li class="nav-item">
							<a href="#" class="nav-link" style="font-size: 18px; color: black;">브랜드</a>
							<div>
								<ul id="sub_menu" style="background-color: white; width: 100%; position: absolute; ">
									<li><a href="<c:url value='/sub/promise'/>">써브웨이 약속</a></li>
									<li><a href="/sub/history">써브웨이 역사</a></li>
									<li><a href="/sub/artist">샌드위치 아티스트 지원</a></li>
									<li><a href="/sub/storeSearch">매장찾기</a></li>
									<li><a>&nbsp</a></li>
									<li><a>&nbsp</a></li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="<c:url value='/menu/sandwich'/>" class="nav-link" style="font-size: 18px; color: black;">메뉴소개</a>
							<div>
								<ul id="sub_menu" style="background-color: white; width: 100%;">
									<li><a href="<c:url value='/menu/sandwich'/>">샌드위치</a></li>
									<li><a href="<c:url value='/menu/unit'/>">랩/기타</a></li>
									<li><a href="<c:url value='/menu/salad'/>">찹샐러드</a></li>
									<li><a href="<c:url value='/menu/morning'/>">아침메뉴</a></li>
									<li><a href="<c:url value='/menu/sidedrink'/>">스마일 썹</a></li>
									<li><a href="<c:url value='/menu/catering'/>">단체메뉴</a></li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link" style="font-size: 18px; color: black;">이용방법</a>
							<div>
								<ul id="sub_menu" style="background-color: white; width: 100%;">
									<li><a href="#">신선한 재료 소개</a></li>
									<li><a href="#">써브웨이 이용방법</a></li>
									<li><a href="#">단체메뉴 이용방법</a></li>
									<li><a href="#">App 이용방법</a></li>
									<li><a>&nbsp</a></li>
									<li><a>&nbsp</a></li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link" style="font-size: 18px; color: black;">새소식</a>
							<div>
								<ul id="sub_menu" style="background-color: white; width: 100%;">
									<li><a href="">이벤트/프로모션</a></li>
									<li><a href="/notice/list?pageNum=1&amount=10">뉴스/공지사항</a></li>
									<li><a href="#">광고영상</a></li>
									<li><a>&nbsp</a></li>
									<li><a>&nbsp</a></li>
									<li><a>&nbsp</a></li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link" style="font-size: 18px; color: black;">가맹점</a>
							<div>
								<ul id="sub_menu" style="background-color: white; width: 100%;">
									<li><a href="/sub/Franchise">써브웨이 프랜차이즈</a></li>
									<li><a href="#">가맹관련 FAQ</a></li>
									<li><a href="#">가맹신청/문의</a></li>
									<li><a href="#">지사안내</a></li>
									<li><a href="#">사업설명회</a></li>
									<li><a>&nbsp</a></li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link" style="font-size: 18px; color: black;">온라인주문</a>
							<div>
								<ul id="sub_menu" style="background-color: white; width: 100%;">
									<li><a href="#">FAST-SUB</a></li>
									<li><a href="/order/orderPage">HOME-SUB</a></li>
									<li><a href="#">단체주문</a></li>
									<li><a>&nbsp</a></li>
									<li><a>&nbsp</a></li>
									<li><a>&nbsp</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>