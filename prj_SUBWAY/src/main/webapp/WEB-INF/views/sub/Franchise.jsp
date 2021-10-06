<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	/*프랜차이즈 시작*/
	h2.subTitle{text-align:center; padding: 2%;}
	.summary{font-size:16px; text-align:center; padding: 2%;}
 	
 	/*전세계 매장수*/
 	.Franchise_div1{
 	height: 100px;
    width: 100%;
    padding-bottom: 4%;
    padding-top: 4%;
 	}
 	.nation {
    background: white;
        width: 50%;
    height: 100px;
    float: left;
 	}
  
 	.nation:hover {
    background: url("/resources/image/Background/bg_nation.png");
    color: green;
 	}

 	.store {
    background: white;
        width: 50%;
    height: 100px;
   	float: right;
 	}
  
 	.store:hover {
    background: url("/resources/image/Background/bg_store.png");
    color: orange;
 	}
	
.h_title{
	text-align: center;
}

.inner{
padding: 2%;
    font-size: 200%;
    text-align: center;
}

/*예상 투자 비용*/

.franchise_boder_table{
    border-top: 5px solid #444444;
    border-color: green;
}

.franchise_boder_table > th, td, tr {
    border-bottom: 1px solid #444444;
    padding: 25px;
    text-align: center;
    
  }



/*써브웨이 브랜드 경쟁력*/

.barnd_comp{width:1170px; margin:0 auto 48px;}
 .barnd_comp h3{text-align:center; margin:96px 0 0 0;}
 .barnd_comp >ul{overflow:hidden; margin-left:-30px;}
.barnd_comp >ul >li{height:460px; float:left; width:570px; position:relative; margin-left:30px;}
.barnd_comp >ul >li h4{background-color:#ffce32; width:170px; height:150px; padding-top:41px; box-sizing:border-box; text-align:center; line-height:30px; color:#009223; font-size:22px; font-weight:bold; position:absolute; left:0; top:215px; font-family:font_sw;}
.barnd_comp >ul >li ul{margin:19px 0 0 192px;}
.barnd_comp >ul >li ul li{font-size:16px; color:#666666; line-height:26px; letter-spacing:-0.055em; text-indent:-12px; margin-left:12px;}

/*가맹점 개설 절차*/

.franchise_process {
    height: 710px;
    text-align: center;
    background: url("/resources/image/Background/bg_franchise_process.png") 50% 0 no-repeat;
}

.franchise_process h3 {
    font-size: 28px;
    font-weight: bold;
    padding-top: 95px;
    letter-spacing: -0.04em;
    text-align: center;
    color: wheat;
}

.franchise_process .summary {
    font-size: 16px;
    line-height: 26px;
    margin-top: 22px;
    color: wheat;
}

.franchise_process .step_wrapper {
    margin-top: 65px;
}

.franchise_process .step_wrapper >ol {
    overflow: hidden;
    display: inline-block;
}

.franchise_process .step_wrapper >ol >li {
    float: left;
    width: 200px;
    padding: 0 22px;
    position: relative;
}


.franchise_process .step_wrapper >ol >li .step {
    width: 192px;
    height: 98px;
    font-size: 22px;
    line-height: 26px;
    margin: 0 auto 16px;
}

.franchise_process .step_wrapper >ol >li .step strong {
    font-weight: 300;
    letter-spacing: -0.02em;
    color: wheat;
}

.franchise_process .step_wrapper >ol >li .step em {
    color: #ffd800;
}

/*버튼*/
.franchise_btn{
	width:130px;
    background-color: orange;
    border: none;
    color:white;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px 10px 10px 10px;
	position: absolute;
	left: 45%;
}

</style>

</head>
<body>


<!-- 써브웨이 프렌차이즈 시작 -->
					<div>
						<h2 class="subTitle">써브웨이 프랜차이즈</h2>
						<div>
							<p class="summary">"미국 프랜차이즈 1위! 써브웨이는 매장수 및 분포지역 기준,"
							<br>
							"Quick Service Restaurant(QSR) 부분 No.1프랜차이즈입니다."
							</p>
				
					
	
	<!-- 전세계 매장수 -->
						<div class="Franchise_div">
							<div class="nation" >
								<div class="inner">
									<p>
										<span>
											"전세계"
										</span>
									</p>
									<strong>106</strong>
									"개국"
								</div>
							</div>
							<div class="store">
								<div class="inner">
									<p>
										<span>
											"매장수"
										</span>
									</p>
									<strong>40,906</strong>
									"개"
								</div>
							</div>
						</div>
	<!-- 써브웨이 브랜드 경쟁력 -->
					<div class="barnd_comp">
						<h3 style="padding-bottom: 5%" >써브웨이 브랜드 경쟁력</h3>
						<ul>
							<li>
								<div class="img">
									<img alt=">BRAND POWER" src="/resources/image/Background/img_barnd_comp01.png">
								</div>
								<h4>
								"BRAND"
								<br>
								"POWER"
								</h4>
								<ul>
									<li>. 세계 1위 프랜차이즈로서의 브랜드가치</li>
									<li>. 전세계 4만 1천여 개 매장으로 검증된 안정성</li>
									<li>". 글로벌 브랜드 관리 및 지원 - 신제품 개발, 브랜드 가치"
									<br>
									"향상,그탠더드 관리"
									</li>
								</ul>
							</li>
							<li>
								<div class="img">
									<img alt=">WELL-BEING" src="/resources/image/Background/img_barnd_comp02.png">
								</div>
								<h4>
								"WELL"
								<br>
								"-BEING"
								</h4>
								<ul>
									<li>. 건강한 식재료 공급을 통한 균형잡힌 메뉴 제공</li>
									<li>. 아이들에게도 안심하고 먹을 수 있는 영양식</li>
									<li>. 신뢰할 수 있는 영양정보 제공
									</li>
								</ul>
							</li>
							<li>
								<div class="img">
									<img alt="MADE FRESH" src="/resources/image/Background/img_barnd_comp03.png">
								</div>
								<h4>
								"MADE"
								<br>
								"FRESH"
								</h4>
								<ul>
									<li>. Fresh Baked Bread - 매장에서 매일 갓 구워낸 빵 제공</li>
									<li>. Made To Order - 취향대로 재료 선택 가능</li>
									<li>. Fresh Vegetable - 매장에서 매일 준비되는 신선한 야채
									</li>
								</ul>
							</li>
							<li>
								<div class="img">
									<img alt="SMART INVESTMENT" src="/resources/image/Background/img_barnd_comp04.png">
								</div>
								<h4>
								"SMART"
								<br>
								"INVESTMENT"
								</h4>
								<ul>
									<li>. 빠른 ROI - 최적의 비지니스 모델 제공</li>
									<li>. 체계적인 오퍼레이션 - 용이한 직원 교육 가능</li>
									<li>. 효율적인 인력 운영 - 인력 운영 시스템 및 체계적인 교육 제공
									<li>. · 빠른 테이블 회전율과 엄격한 재고 관리
									</li>
								</ul>
							</li>
						</ul>
					</div>				
				<!-- 가맹점 개설 절차 -->
				<div class="franchise_process">
					<h3 class="h_title">가맹점 개설 절차</h3>
					<p class="summary">
					"높은 수익성과 탁월한 안정성이 전세계 106개국, 41,000여개 매장으로 검증된 글로벌 No.1 프랜차이즈 써브웨이"
					<br>
					"체계화된 성공 노하우와 함께 새로운 비즈니스의 시작을 준비하십시오."
					</p>
					<div class="step_wrapper">
						<ol>
							<li>
								<div class="step">
								<em>STEP1</em>
								<strong>신청서 작성 및 상담</strong>
								</div>
								<ul style="color:wheat;">
									<li>
									"· 가맹과 경영에 대한"
									<br>
									"정보 상담"
									</li>
								</ul>
							</li>
							<li>
								<div class="step">
								<em>STEP2</em>
								<strong>가맹계약 체결</strong>
								</div>
								<ul style="color:wheat;">
									<li>
									"· 계약서 작성"
									<br>
									"· 가맹비 입금"
									</li>
								</ul>
							</li>
							<li>
								<div class="step">
								<em>STEP3</em>
								<strong>상권분석 및 선정</strong>
								</div>
								<ul style="color:wheat;">
									<li>
									"· 상권조사 / 입지분석"
									<br>
									"· 매장 결정"
									<br>
									"· 공사일정 협의"
									</li>
								</ul>
							</li>
							<li>
								<div class="step">
								<em>STEP4</em>
								<strong>오픈 준비</strong>
								</div>
								<ul style="color:wheat;">
									<li>
									"· 설계도 확정 / 장비주문"
									<br>
									"· 인테리어 공사"
									<br>
									"· 가맹교육 / 매장 실습"
									</li>
								</ul>
							</li>
							<li>
								<div class="step">
								<em>STEP5</em>
								<strong>매장 오픈</strong>
								</div>
								<ul style="color:wheat;">
									<li>
									"· 직원교육"
									<br>
									"· 운영테스트"
									<br>
									"· 그랜드오픈"
									</li>
								</ul>
							</li>
						</ol>
						<p style="padding: 5%;">※ 가맹 신청부터 매장 오픈까지 최소 2달 이상 소요됩니다.</p>
					</div>
				</div>
				
				<!-- 예상 투자비용 -->
				<div style="padding-bottom: 5%; margin: 12%" >
					<h3 class="h_title" style="padding: 5%">예상 투자비용</h3>
					<div>
						<div style="margin-bottom: 5%;">
							<div style="float: right;">
								<p>VAT 별도, 25평 기준</p>
							</div>
							<table class="franchise_boder_table">
								<caption>예상 투자비용 테이블</caption>
								<colgroup>
									<col width="135px" >
									<col width="135px">
									<col width="270px">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" >항목</th>
										<th scope="col">금액</th>
										<th scope="col" style="text-align: center;">내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">가맹비</th>
										<td>14,889,000원</td>
										<td>소멸성</td>
									</tr>
									<tr>
										<th scope="row">교육비</th>
										<td>없음</td>
										<td>교육에 대한 추가 비용 없음</td>
									</tr>
									<tr>
										<th scope="row">장비 및 기자재</th>
										<td>12,000만원</td>
										<td>샌드위치 유니트, 브래드 오븐, 스피드 오븐, 전자레인지, 냉장냉동시설, 주방설비 및 집기, 커피머신, CCTV, 음향장비, 가구 및 인테리어 소품 등</td>
									</tr>
									<tr>
										<th scope="row">인테리어<br> (간판 및 철거비용 제외)</th>
										<td>200만원~210만원/평당</td>
										<td>가설, 전기, 바닥, 벽체, 천정, 설비, 출입문 철거 및 조성, 장비세팅, 기본덕트, 스프링쿨러 등</td>
									</tr>
									<tr>
										<th scope="row">간판</th>
										<td>410만원</td>
										<td>H:450mm / 1면 기준, 어닝 포함</td>
									</tr>
									<tr>
										<th scope="row">전기증설</th>
										<td>150만원</td>
										<td>10KW증설</td>
									</tr>
									<tr>
										<th scope="row">냉난방</th>
										<td>450만원</td>
										<td>32평형 시스템1, 벽걸이(냉난방)1, 배관비</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th scope="row">합계</th>
										<td>약 2억 원~2억 1천만원</td>
										<td>총 비용은 경우에 따라 변동 될 수 있습니다.</td>
									</tr>
								</tfoot>
							</table>
							<ul>
								<li>※ 일반 매장 최소 전용면적은 25평이며, 공항, 백화점, 병원 등 특수상권 매장은 25평 이하로 선택적 입점 가능</li>
								<li>※ 별도 비용 : 외부공사(갈바, 데크 등), 추가공사(철거, 자동문 등), 전기 간선작업, 건물의 공사 준수사항에 따른 비용 등 매장 여건에 따라 투자비용이 달라질 수 있습니다</li>
							</ul>
						</div>
							<div class="franchise_btn"  ><a  href="#">
							<span>가맹신청/문의</span>
							</a>
							</div>
					</div>
				</div>
				<!-- 예상 투자비용 -->
				
						</div>
						</div>
</body>
</html>

<%@ include file="../include/footer.jsp" %>
