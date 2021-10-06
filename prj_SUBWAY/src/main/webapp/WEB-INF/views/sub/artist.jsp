<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
//슬라이드 스크립

var slideIndex = 1;
showSlides(slideIndex);
function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

</script>

<style type="text/css">

.next{
position: absolute;
top: 85%;
right: 15%;
}

.prev{
position: absolute;
top: 85%;
left: 15%;
}

.sandwich_artist_wrapper {
    padding-top: 1%;
}
.sandwich_artist_wrapper .hd {
    text-align: center;
}
.sandwich_artist_wrapper .now_subway {
    text-align: center;
    background: url("/resources/image/Background/img_sw_artist_point.png");
    height: 400px;
}
.sandwich_artist_wrapper .now_subway_h3 {
    padding: 30px;
    color: white;
    font-weight: bolder;
}
.sandwich_artist_wrapper .now_subway_li {
    float: left;
    width: 25%;
    height: 200px;
}

.artist{
	max-width: 90px;
	overflow: hidden;
}
.artist1{
	max-width: 90px;
	overflow: hidden;
}
.artist1 img{
	margin-left: -90px
}
.artist2{
	max-width: 90px;
	overflow: hidden;
}
.artist2 img{
	margin-left: -180px
}

.divdiv{
float: left; width: 33%; text-align: -webkit-right;
}

.artist_innerborder:hover {
	border: 5px solid green;
}
</style>


</head>
<body>
<!-- 아티스트 지원 -->
<div class="sandwich_artist_wrapper">
	<!-- 샌드위치 아티스트 지원 -->
	<div style="text-align: center; padding: 5%;">
		<h2 style="font-size: xx-large;">
			<span>GREAT PEOPLE, GREAT BRAND</span><br>
			"GREAT OPPORTUNITY"
		</h2>
		<p>
		"샌드위치 아티스트는 고객에게 최고의 경험을 제공하기 위해"<br>
		"써브웨이 NOW 핵심요소를 실행합니다."
		</p>
	</div>
	<!-- slider -->
	<div>
		<div>
			<div style="text-align: center;">
				<ul>
					<li class="mySlides">
						<div>
							<img alt="" src="/resources/image/Background/img_sandwich_artist_slider01.png">
						</div>
						<div style="padding: 4%;">
							<strong style="color: #292929; font-size: 22px;">Best Fresh Keeper</strong>
							<p style="margin-top: 10px;">샌드위치 아티스트™는 각종 재료의 신선함과
							<br>
								매장의 청결을 철저하게 관리합니다.</p>
						</div>
					</li>
					<li class="mySlides" style="display: none;">
						<div>
							<img alt="" src="/resources/image/Background/img_sandwich_artist_slider02.png">
						</div>
						<div style="padding: 4%;">
							<strong style="color: #292929; font-size: 22px;">Best Service Professional</strong>
							<p style="margin-top: 10px;">샌드위치 아티스트™는 항상 고객을 우선으로 생각하며
							<br>
								고객이 무엇을 원하는지 경청합니다.</p>
						</div>
					</li>
					<li class="mySlides" style="display: none;">
						<div>
							<img alt="" src="/resources/image/Background/img_sandwich_artist_slider03.png">
						</div>
						<div style="padding: 4%;">
							<strong style="color: #292929; font-size: 22px;">Best Team Member</strong>
							<p style="margin-top: 10px;">샌드위치 아티스트™는 최고의 팀원으로서 고객에게 최고의 경험을<br>
								제공하기 위해 다른 팀원들과 함께 노력합니다.</p>
						</div>
					</li>
					<li class="mySlides" style="display: none;">
						<div>
							<img alt="" src="/resources/image/Background/img_sandwich_artist_slider04.png">
						</div>
						<div style="padding: 4%;">
							<strong style="color: #292929; font-size: 22px;">Best Artist</strong>
							<p style="margin-top: 10px;">샌드위치 아티스트™는<br>
							언제나 완벽한 샌드위치를 만듭니다.</p>
						</div>
					</li>
				</ul>
			<a class="prev" onclick="plusSlides(-1)"><img alt="" src="/resources/image/ETC_icon/icon_play 01.png"></a>
			<a class="next"onclick="plusSlides(1)"><img alt="" src="/resources/image/ETC_icon/icon_play.png"></a>
			</div>
		</div>
	</div>
	<!-- 써브웨이 핵심요소 -->
	<div class="now_subway">
		<h3 class="now_subway_h3">"써브웨이"<span>NOW</span>"핵심 요소"</h3>
		<ul style="padding: 5%">
			<li class="now_subway_li">
				<div>
					<img alt="" src="/resources/image/ETC_icon/icon_sw_artist_point01.png">
				</div>
				<span class="now_subway_h3">Guest First</span>
			</li>
			<li class="now_subway_li">
				<div>
					<img alt="" src="/resources/image/ETC_icon/icon_sw_artist_point02.png">
				</div>
				<span class="now_subway_h3">Great Food</span>
			</li>
			<li class="now_subway_li">
				<div>
					<img alt="" src="/resources/image/ETC_icon/icon_sw_artist_point03.png">
				</div>
				<span class="now_subway_h3">Great Store</span>
			</li>
			<li>
				<div>
					<img alt="" src="/resources/image/ETC_icon/icon_sw_artist_point04.png">
				</div>
				<span class="now_subway_h3">Great Team</span>
			</li>
		</ul>
	</div>
	<!-- career path -->
	
	<!-- 채용지원 -->
	<div style="height: 400px; background-color: #f2f2f2;">
		<div class="hd">
			<h3 style="padding: 3%">채용지원</h3>
			<p>최고의 샌드위치 아티스트에 도전하세요</p>
		</div>
		<div style="text-align: center; padding: 3% ">
		<div style="float: left; width: 33%; text-align: -webkit-center; padding-left: 15%">
			<div class="artist_innerborder" style="background-color: white;  height: 150px; width: 200px;">
			<div>
				<div class="artist1">
						<img alt="" src="/resources/image/Logo/img_recruit_logo.png"><br>
				</div>
			</div>	
				<div style="text-align: center;">
					<a href="https://www.albamon.com/search?Keyword=%EC%8D%A8%EB%B8%8C%EC%9B%A8%EC%9D%B4" target="">
						<strong>알바몬 채용지원</strong><br>
						<span>바로가기</span>
					</a>
				</div>
				
			</div>
		</div>
		<div style="float: left; width: 33%; text-align: -webkit-center;">
			<div class="artist_innerborder" style="background-color: white;  height: 150px; width: 200px;">
			<div style="text-align: -webkit-center;">
				<div class="artist">
						<img alt="" src="/resources/image/Logo/img_recruit_logo.png"><br>
				</div>
			</div>	
				<div>
					<a href="https://www.albamon.com/search?Keyword=%EC%8D%A8%EB%B8%8C%EC%9B%A8%EC%9D%B4" target="">
						<strong>알바천국 채용지원</strong><br>
						<span>바로가기</span>
					</a>
				</div>
				
			</div>
		</div>
		<div style="float: right; width: 33%;">
			<div class="artist_innerborder" style="background-color: white;  height: 150px; width: 200px;">
			<div style="text-align: -webkit-center; ">
				<div class="artist2">
						<img alt="" src="/resources/image/Logo/img_recruit_logo.png"><br>
				</div>
			</div>	
				<div>
					<a  href="https://www.albamon.com/search?Keyword=%EC%8D%A8%EB%B8%8C%EC%9B%A8%EC%9D%B4" target="">
						<strong>홈페이지 채용지원</strong><br>
						<span>바로가기</span>
					</a>
				</div>
				
			</div>
		</div>
	</div>
</div>
</div>



</body>
</html>

<%@ include file="../include/footer.jsp" %>
