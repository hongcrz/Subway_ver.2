<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp" %>

<!-- mysub 본문 -->
<hr class="menu_line"/>
<div id="mysub">
	<h2 class="mysub_subtitle font_roboto">MYSUB</h2>
	<section class="mysub_member">
		<section class="mysub_member_active">
			<div class="mysub_info mysub_user">
				<h4 class="info_title">박윤택님</h4>
				<a onclick="" class="btn go_view"><span>회원 정보 변경</span></a>
			</div>
			<div class="mysub_info mysub_point">
				<h4 class="info_title">멤버십 포인트</h4>
				<h4 class="info_subtitle">0P</h4>
				<a onclick="" class="btn go_view"><span>포인트 관리</span></a>
			</div>
		</section>
		<section class="mysub_member_active">
			<div class="mysub_info mysub_order">
				<h4 class="info_title">주문내역</h4>
				<h4 class="info_subtitle">0개</h4>
				<a onclick="" class="btn go_view"><span>주문 내역 관리</span></a>
			</div>
			<div class="mysub_info mysub_coupon">
				<h4 class="info_title">쿠폰</h4>
				<h4 class="info_subtitle">0개</h4>
				<a onclick="" class="btn go_view"><span>쿠폰 관리</span></a>
			</div>
		</section>
	</section>


</div>

<%@ include file="../include/footer.jsp" %>