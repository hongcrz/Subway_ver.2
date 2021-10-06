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
.wrap{ position:relative; /*감싸는 레이어에 포지션 속성을 잡아주는 게 필수!(relative, absolute, fixed 중 택1*/  }
.over:hover { position:absolute; bottom: 1px;  /*위에 올라가는 레이어의 포지션은 top, bottom 둘 중 하나, left, right 둘 중 하나의 속성을 선택하여 잡아준다.*/ }

/*게시판*/
.franchise_boder_table{
    border-top: 5px solid #444444;
    border-color: green;
}

.franchise_boder_table > th, td, tr {
    border-bottom: 1px solid #444444;
    padding: 25px;
    text-align: center;
    
  }

.franchise_boder_table span {
    font-weight: 300;
    color: #666;
    border-color: #666;
    display: inline-block;
    font-size: 13px;
    color: black;
    border: 1px solid #bbb;
    border-radius: 30px;
    height: 23px;
    line-height: 23px;
    padding: 0 8px;
}

/*신규 매장*/
.new_store{
	    overflow: hidden;
    margin: -30px 0 0 -30px;
}
.new_store li{
    width: 270px;
    height: 172px;
    background-color: #fff;
    float: left;
    position: relative;
    margin: 30px 0 0 30px;
}

.new_store li .region{
   text-align: center;
    color: #292929;
    font-size: 18px;
    padding-top: 32px;
}

.new_store li .region strong{
  font-weight: bold;
    color: #292929;
    font-size: 22px;
    text-align: center;
    display: block;
    margin-top: 12px;
}
.new_store li .state_coming{
   background-color: #ffce32;
    color: #009223;
    height: 50px;
    position: absolute;
    left: 0;
    width: 100%;
    bottom: 0;
    text-align: center;
    line-height: 50px;
    font-weight: bold;
    font-size: 18px;
    font-family: font_sw;
}
.new_store li .state_open{
   background-color: #009223;
    color: #ffce32;
    height: 50px;
    position: absolute;
    left: 0;
    width: 100%;
    bottom: 0;
    text-align: center;
    line-height: 50px;
    font-weight: bold;
    font-size: 18px;
    font-family: font_sw;
}

.dot {
  
  cursor:pointer;
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}


</style>
</head>


<body>
	<div>
		<!-- 구글 지도 api 이용 -->
		<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	0f4205413e8f4e071ae06aa634538074"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.564634513708114, 126.97721540556087), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>
			
	<!-- 검색기능 미구현 
	<div>
		<h2>매장찾기</h2>
		<form>
			<input type="text" placeholder="지역 또는 매장명 입력">
			<a class="" href="#" onclick=""></a>
		</form>		
	</div>
	-->
</div>


<!-- 신규매장 -->
<div style="padding: 0%; background-color: #f6f6f6;">
	<div>
		<h3 style="text-align: center; padding: 3%">신규 매장 안내</h3>
		<div>
			<div>
				<div style="text-align: center;">
					<div>
					<div>
						<ul style="padding-left: 5%;">
							<li class="mySlides">
								<ul class="new_store">
									<li>
										<div class="region">
											"대구광역시"
											<strong>대구율하롯대몰</strong>
										</div>
										<div class="state_coming">
											"coming soon"
										</div>
									</li>
									<li>
										<div class="region">
											"부산광역시"
											<strong>부산롯데백화점광복</strong>
										</div>
										<div class="state_coming">
											"coming soon"
										</div>
									</li>
									<li>
										<div class="region">
											"광주광역시"
											<strong>광주신용</strong>
										</div>
										<div class="state_coming">
											"coming soon"
										</div>
									</li>
									<li>
										<div class="region">
											"서울특별시"
											<strong>신정네거리역</strong>
										</div>
										<div class="state_coming">
											"coming soon"
										</div>
									</li>
									<li>
										<div class="region">
											"서울특별시"
											<strong>상봉역</strong>
										</div>
										<div class="state_open">
											"OPEN 2021-06-02"
										</div>
									</li>
									<li>
										<div class="region">
											"광주광역시"
											<strong>광주신창</strong>
										</div>
										<div class="state_open">
											"OPEN 2021-05-31"
										</div>
									</li>
									<li>
										<div class="region">
											"경기도"
											<strong>고양원흥역</strong>
										</div>
										<div class="state_open">
											"OPEN 2021-05-31"
										</div>
									</li>
								</ul>
							</li>
							<li class="mySlides" style="display: none;">
								<ul class="new_store">
									<li>
										<div class="region">
											"대구광역시"
											<strong>대구평리DT</strong>
										</div>
										<div class="state_open">
											"OPEN 2021-05-27"
										</div>
									</li>
									<li>
										<div class="region">
											"부산광역시"
											<strong>부산하단아트몰링</strong>
										</div>
										<div class="state_open">
											"OPEN 2021-05-24"
										</div>
									</li>
									<li>
										<div class="region">
											"서울특별시"
											<strong>강남역</strong>
										</div>
										<div class="state_open">
											"Remodeling 2021-05-20"
										</div>
									</li>
									<li>
										<div class="region">
											"서울특별시"
											<strong>대청</strong>
										</div>
										<div class="state_open">
											"Remodeling 2021-05-08"
										</div>
									</li>
									<li>
										<div class="region">
											"경기도"
											<strong>안양범계</strong>
										</div>
										<div class="state_open">
											"Remodeling 2021-05-07"
										</div>
									</li>			
								</ul>
							</li>
						</ul>
					</div>
					<div style="text-align: center; padding: 5%; margin-right: 2%;">
					<span class="dot" onclick="currentSlide(1)"></span> 
					<span class="dot" onclick="currentSlide(2)"></span>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>	
<!-- 전체매장 -->
<div style="padding: 8%;">
	<div>
		<h3 style="text-align: center;">전체매장</h3>
		<div>
			<div>
				<p style="float: left; text-align: left;">"총<strong>5</strong>개 매장이 있습니다."</p>
				<form>
					<div style="float: right;">
						<select>
							<option value="">시/도</option>
							<option value="">서울특별시</option>
							<option value="">경기도</option>
							<option value="">인청광역시</option>
							<option value="">대전광역시</option>
							<option value="">세종특별자치시</option>
							<option value="">충청남도</option>
							<option value="">경상남도</option>
							<option value="">울산광역시</option>
							<option value="">부산광역시</option>
							<option value="">대구광역시</option>
							<option value="">제주특별자치도</option>
							<option value="">전라북도</option>
							<option value="">충청북도</option>
							<option value="">광주광역시</option>
							<option value="">전라남도</option>
							<option value="">경상북도</option>
						</select>
					</div>
					<div style="float: right;">
						<select>
							<option value="">시/군/구</option>
						</select>
					</div>
				</form>
				<table class="franchise_boder_table">
					<caption>전체 매장 목록 테이블</caption>
					<colgroup>
					<thead>
						<tr>
							<th>NO</th>
							<th>매장명</th>
							<th>매장주소</th>
							<th>주요 서비스</th>
							<th>연락처</th>
							<th>자세히보기</th>
						</tr>
					</thead>
					<tbody>
							<c:forEach var="vo" items="${list }">
								 <tr>
								  <td>${vo.sno}</td>
								  <td>${vo.sname}</td>
								  <td>${vo.sadress}</td>
								  <td>
								  	
								  		<span id="output">아침메뉴</span>
								  		<span>24시간</span>								  		
								  	
								  </td>
								  <td>${vo.stel}</td>
								  <td><a target="_blank" href="storeSearchMap?x='${vo.latitude}'&y='${vo.hardness}'">
								  	<img alt="자세히" src="/resources/image/ETC_icon/icon_detail_view.png">	
								  	</a>
								  </td>
								 </tr>
							</c:forEach>
					</tbody>
				</table>
			</div>
			<div>${vo.name}</div>
		</div>
	</div>
</div>	

<script type="text/javascript">
		var output = document.getElementById('output');
		var x = 2;
		if (x == 2) {
		  output.style.color = "red";
		} 
	</script>



</body>
</html>

<%@ include file="../include/footer.jsp" %>
