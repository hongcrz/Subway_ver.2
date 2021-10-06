<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	<footer class="ftco-footer ftco-bg-dark ftco-section"
		style="padding: 20px 0 10px 0;">
		<div class="container">
			<div class="row mb-5" style="height: 1px;">
				<ul
					style="list-style: none; font-size: 14px; padding-left: 15px; bottom: 1px; margin-bottom: 0.5%">
					<li style="float: left; margin-right: 29px;"><a href="">이용약관</a></li>
					<li style="float: left; margin-right: 29px;"><a href="">개인정보처리방침</a></li>
					<li style="float: left; margin-right: 29px;"><a href="">써브카드</a></li>
					<li style="float: left; margin-right: 29px;"><a href="">점주관리자</a></li>
					<li style="float: left;"><a href="">Subway Listens</a></li>
				</ul>
			</div>
		</div>
		<div style="height: 20px;">
			<hr color="gray;" style="padding: 0; background-color: gray">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-left"
					style="font-size: small;  float: left;">
					<span style="width: 85%; height: 58px; float: left;"> 서울시
						서초구 강남대로 535 프린스빌딩 15층 | 대표 : 콜린클락 전화 : 02-797-5036 | 사업자등록번호 :
						101-84-04143 <br> SUBWAY® is a Registered Trademark of Subway
						IP LLC. &copy;<script>
							document.write(new Date().getFullYear());
						</script> Subway IP LLC. All Rights Reserved. <br>
					</span>
					<div class="ftco-footer-widget"
						style="float: left; padding: 0; height: 58px; width: 15%;">
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft"
							style="height: 58px; margin-top: 0;">
							<li class="ftco-animate"><a href="https://ko-kr.facebook.com/Subwaykr/"><span class="icon-facebook"></span></a></li>
                     		<li class="ftco-animate"><a href="https://www.instagram.com/subwaykorea/?hl=ko"><span class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<!--  bootstrap script -->
  <script src="/resources/bootstrap/js/popper.min.js"></script>
  <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
  <script src="/resources/bootstrap/js/jquery.easing.1.3.js"></script>
  <script src="/resources/bootstrap/js/jquery.waypoints.min.js"></script>
  <script src="/resources/bootstrap/js/jquery.stellar.min.js"></script>
  <script src="/resources/bootstrap/js/owl.carousel.min.js"></script>
  <script src="/resources/bootstrap/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/bootstrap/js/scrollax.min.js"></script>
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
  <script src="/resources/bootstrap/js/google-map.js"></script>
  <script src="/resources/bootstrap/js/main.js"></script>

 <!-- option script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


   <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
 </script>
 
<script>
	$(document).ready(function() {
		$('.slider').bxSlider();
	});
	$(document).ready(function() {
		$(".tab_btn li").click(function() {
			var list = $(this).index();
			$(".tab_btn li").removeClass("on");
			$(this).addClass("on");

			$(".tab_cont > li").hide();
			$(".tab_cont > li").eq(list).show();
		});
	});
</script>
 
<!-- kakao 우편번호 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function getDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

</body>
</html>