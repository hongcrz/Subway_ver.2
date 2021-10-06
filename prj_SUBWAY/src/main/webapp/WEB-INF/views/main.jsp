<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<style>
	.bx-wrapper .bx-viewport {
		-moz-box-shadow: none;
		-webkit-box-shadow: none;
		box-shadow: none;
		border: none;
	}
	.bx-wrapper{
		margin-bottom: 0;
	}
</style>
<script>
	$(document).ready(function() {
		$('.slider').bxSlider({
			pager : false			
		});
		
	});
	$(document).ready(function() {
		$(".tab_btn li").click(function() {
			var list = $(this).index();
			$(".tab_btn li").removeClass("on");
			$(this).addClass("on");

			$(".tab_cont >li").hide();
			$(".tab_cont >li").eq(list).show();
		});
	});
</script>

<div id="container" class="main_wrapper">
		<div class="main_tap_event_wrapper">
			<ul class="slider" style="padding-left: 0px;">
				<li>
					<a href="#"> 
						<img alt="스파이시 쉬림프"src="/resources/image/Banner/main_PC2.png" />
					</a>
				</li>
				<li>
					<a href="#"> 
						<img alt="썹프라이즈 터키아보카도"src="/resources/image/Banner/main_PC3.png" />
					</a>
				</li>
				<li>
					<a href="#"> 
						<img alt="민트초코"src="/resources/image/Banner/main_PC4.png" />
					</a>
				</li>
				<li>
					<a href="#"> 
						<img alt="02.내손안의 작은 써브웨이"src="/resources/image/Banner/main_PC.png" />
					</a>
				</li>
			</ul>
			<div class="quick_link" ">
				<div class="quick_link_content">
					<div class="store">
						<a href="/sub/storeSearch"> 
							<strong style="color: black; font-size: 22px; font-weight: bold; display: inline-block; padding: 27px 0 0 0;">
								<img alt="map" src="/resources/image/ETC_icon/icon_map.png" style="padding-right: 10px;"> 매장찾기
							</strong>
						</a>
					</div>
					<div class="franchise">
						<a href="#"> 
							<strong style="color: white; font-size: 22px; font-weight: bold; display: inline-block; padding: 27px 0 0 0;">
								<img alt="fran" src="/resources/image/ETC_icon/icon_franchise.png" style="padding-right: 10px;"> 가맹신청ㆍ문의
							</strong>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="subway_menu" style="height: 400px; padding: 2% 0 0;">
			<div class="subway_menu_header" style="width: 1170px; margin: 0 auto; padding-bottom: 33px; position: relative;">
				<h2 style="font-size: 40px; font-weight: bold; background: url('/resources/image/ETC_icon/bul_tit.png') 0 12px no-repeat; min-height: 60px; padding: 17px 0 0 25px; margin-bottom: 1px;">
					Subway's Menu
				</h2>
				<div class="tab_wrap" style="position: absolute; right: 0; top: 44px;">
					<ul class="tab_btn" style="overflow: hidden;">
						<li class="on">클래식</li>
						<li>프레쉬&amp;라이트</li>
						<li>프리미엄</li>
						<li>아침메뉴</li>
					</ul>
					<ul class="tab_cont" style="margin-top: 30px">
						<li>
							<ul>
								<c:forEach var="vo" items="${classic }" begin="0" end="3">
									<li>
										<a href="#">
											<div class="wrap">
												<div class="img"><img alt="" src="${vo.purl }" /></div>
												<strong class="title" style="color: black; font-size: 18px;">${vo.pname }</strong>
												<p style="font-size: 13px;color: silver;">${vo.pdesc }</p>
											</div>
										</a>
									</li>
								</c:forEach>
							</ul>
						</li>
						<li>
							<ul>
								<c:forEach var="vo" items="${freshhh }" begin="0" end="3">
									<li>
										<a href="#">
											<div class="wrap">
												<div class="img"><img alt="" src="${vo.purl }" /></div>
												<strong class="title" style="color: black; font-size: 18px;">${vo.pname }</strong>
												<p style="font-size: 13px;color: silver;">${vo.pdesc }</p>
											</div>
										</a>
									</li>
								</c:forEach>
							</ul>
						</li>
						<li>
							<ul>
								<c:forEach var="vo" items="${preminum }" begin="0" end="3">
									<li>
										<a href="#">
											<div class="wrap">
												<div class="img"><img alt="" src="${vo.purl }" /></div>
												<strong class="title" style="color: black; font-size: 18px;">${vo.pname }</strong>
												<p style="font-size: 13px;color: silver;">${vo.pdesc }</p>
											</div>
										</a>
									</li>
								</c:forEach>
							</ul>
						</li>
						<li>
							<ul>
								<c:forEach var="vo" items="${morning }" begin="0" end="3">
									<li>
										<a href="#">
											<div class="wrap">
												<div class="img"><img alt="" src="${vo.purl }" /></div>
												<strong class="title" style="color: black; font-size: 18px;">${vo.pname }</strong>
												<p style="font-size: 13px;color: silver;">${vo.pdesc }</p>
											</div>
										</a>
									</li>
								</c:forEach>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="subway_etc" style="width: 1280px; margin: 0 auto; padding: 80px 0; background: url('/resources/image/Background/bg_content.png');">
			<div class="content_top" style="overflow: hidden;">
				<div class="utilization" style="background: url('/resources/image/Background/bg_utilization.png') 0 0 no-repeat; width: 400px; height: 300px; position: relative; margin-left: 55px; float: left;">
					<p style="color: white; font-size: 28px; font-weight: bold; line-height: 40px; position: absolute; left: 39px; top: 39px;">
						써브웨이를<br />제대로 즐기는 방법!
					</p>
					<a class="btn" href="#" style="position: absolute; left: 41px; bottom: 42px; border: 2px solid white; border-radius: 20px; width: 92px;">
						<span style="display: block; height: 36px; color: white; font-size: 16px; line-height: 36px; font-weight: 300px;">이용방법</span>
					</a>
				</div>
				<div class="history"style="float: left; width: 825px; position: relative;">
					<p	style="color: white; font-size: 28px; font-weight: bold; line-height: 40px; position: absolute; left: 410px; top: 39px;">
						50년 역사를 가진<br />No.1 프랜차이즈의 성장기
					</p>
					<a class="btn" href="/sub/history" style="position: absolute; left: 410px; bottom: 42px; border: 2px solid white; border-radius: 20px; width: 128px; display: inline-block; text-align: center; font-weight: bold;">
						<span style="display: block; height: 36px; color: white; font-size: 16px; line-height: 36px; font-weight: 300px;">
						써브웨이 역사
						</span>
					</a> <img src="/resources/image/Background/img_subway_history.png" />
				</div>
			</div>
			<div class="content_bottom"style="margin: 30px 55px 0 55px; overflow: hidden; background-color: white; border-radius: 20px;">
				<div class="whats_new" style="width: 870px; height: 300px; float: left; position: relative;">
					<div class="hd" style="position: absolute; top: 75px; left: 60px;">
						<h2 style="font-size: 40px; font-weight: bold; background: url('/resources/image/ETC_icon/bul_tit.png') 0 12px no-repeat; min-height: 60px; padding: 17px 0 0 25px; margin-bottom: 1px;">
							What's New
						</h2>
						<p style="text-align: center; line-height: 26px;">
							써브웨이의 다양한 소식을<br /> 빠르게 전달해드립니다.
						</p>
					</div>
					<div class="board_list" style="color: black; position: absolute; left: 389px; top: 76px;">
						<ul style="padding-left: 0px;">
							<li style="margin-bottom: 10px;">
								<a href="/notice/get?nno=${notice1.nno}"style="color: black;">
									<c:out value="${notice1.title}"></c:out>
								</a>
							</li>
							<li style="margin-bottom: 10px;">
								<a href="/notice/get?nno=${notice2.nno}"style="color: black;">
									<c:out value="${notice2.title}"></c:out>
								</a>
							</li>
							<li style="margin-bottom: 10px;">
								<a href="/notifce/get?nno=${notice3.nno}"style="color: black;">
									<c:out value="${notice3.title}"></c:out>
								</a>
							</li>
						</ul>
						<a class="more" href="/notice/list?pageNum=1&amount=10" style="display: inline-block; color: silver; font-size: 14px; padding: 10px 0 8px;">more</a>
					</div>
				</div>
				<div class="banner_sponsor">
					<img alt="sponsor" src="/resources/image/Logo/logo_s.png">
				</div>
			</div>
		</div>
		<div class="quick_menu">
			<ul>
				<li class="quick1" style="float: left; margin-left: 0px;">
					<a href="/sub/Franchise">
						<div class="icon" style="background-position: 0px 0px;"></div> 
						<strong>프랜차이즈</strong>
						<span>개설절차/투자비용 정보</span>
					</a>
				</li>
				<li class="quick2" style="float: left; margin-left: 80px;">
					<a href="#">
						<div class="icon" style="background-position: -70px 0px;"></div> 
						<strong>지사안내</strong>
						<span>수도권/지방 지사정보</span>
					</a>
				</li>
				<li class="quick3" style="float: left; margin-left: 80px;">
					<a href="#">
						<div class="icon" style="background-position: -140px 0px;"></div>
						<strong>광고영상</strong> 
						<span>TV광고/동영상</span>
					</a>
				</li>
				<li class="quick4" style="float: left; margin-left: 80px;">
					<a href="#">
						<div class="icon" style="background-position: -210px 0px;"></div>
						<strong>1:1 문의</strong> 
						<span>개선/문의사항</span>
				</a></li>
			</ul>
		</div>
	</div>
	
<%@ include file="include/footer.jsp" %>
