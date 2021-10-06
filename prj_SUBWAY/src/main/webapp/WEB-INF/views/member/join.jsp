<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>


	<script type="text/javascript">

		$(function(){
			// id 자동 영소문자 처리 
			$("input[name='userid']").bind("keyup", function(){
				$(this).val($(this).val().toLowerCase());
			});
			
			// id값이 변경되면 중복확인여부를 무효화 처리함
			$("#userid").on("keyup",function(){ 
				$("#img-checked").hide();		// checked img 비활성화 
				$(".btn-overlap").show();		// check btn 활성화 
				$("input[name='isIDchecked']").val("unchecked");	// check 여부 초기화 
			});
			
		})
		
		
		// 필수 정보 확인 
		function checkInfo(){
			
			if($("#userid").val() == ''){
				alert("아이디를 입력하세요.");
				$("#userid").focus();
				return false;
			}
			
			if($("input[name='isIDchecked']").val() == 'unchecked'){
				alert("아이디 중복확인을 진행해주세요.");
				return false;
			}
			
			if($("#userpw").val() == ''){
				alert("비밀번호를 입력하세요.");
				$("#userpw").focus();
				return false;
			}
			/* 
			// TEST_REG(BEFORE)																	
			var reg_num = $("#userpw").val().search(/[0-9]/g); 		// regex number
			var reg_eng = $("#userpw").val().search(/[a-z]/ig);		// regex english
			var reg_spe = $("#userpw").val().search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
			if($("#userpw").val().length < 8 || $("#userpw").val().length > 16) {
				alert("비밀번호는 8~16자리 이내로 입력하세요.");
				return false;
 			} else if(reg_num < 0 || reg_eng < 0 || reg_spe) {
				alert("비밀번호는 영문자, 숫자, 특수문자를 혼합하여 입력하세요.");
				return false;
			} 
			 */
/* 													
			// TEST_REG(AFTER2) : 2개 이상 포함의 경우 
			var reg_ch1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.test($("#userpw").val());  			//영문,숫자
			var reg_ch2 = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}$/.test($("#userpw").val());  	//영문,특수문자
			var reg_ch3 = /^(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,16}$/.test($("#userpw").val());  		//특수문자, 숫자
 */
			// TEST_REG(AFTER1)
			var reg_all = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[`~!@@#$%^&*|₩₩₩'₩";:₩/?])
								[A-Za-z\d`~!@@#$%^&*|₩₩₩'₩";:₩/?]{8,16}$/.test($("#userpw").val());	
																	// regex eng/num/spe/len										
																	// .test() >> T/F 반환
			if(!reg_all) {
				alert("비밀번호는 영문자, 숫자, 특수기호를 혼합하여\n8~16자리 이내로 입력하세요.");
				return false;
			}
			// COMMON
			if($("#userpw").val().search(/\s/) != -1) { 		// -1 : 부합하지 않음  
				alert("비밀번호는 공백 없이 입력하세요.");
				return false;
			} else if(/(\w)\1\1/.test($("#userpw").val())){
 				alert("같은 문자를 3번 이상 사용하실 수 없습니다.");
 				return false;
			} else if($("#userpw").val().search($("#userid").val()) != -1 ) {
				alert("아이디와 동일한 문자열은 사용하실 수 없습니다.");
				return false;
			}
			
			if($("#userpw").val() != $("input[name='userpw2']").val()){
				alert("비밀번호가 같지 않습니다.");
				$("input[name='userpw2']").focus();
				return false;
			}
			
			
			//mergeData
			var useremail;
			var useraddress;
				
			if(($("#uemail").val() != '')){
				useremail = $("#uemail").val() + "@"+ $("input[name='domains']").val();
				$("#useremail").val(useremail)
			}
			
			if($("#postcode").val() != ''){
				useraddress = $("#postcode").val()
					+ "/" + $("#roadAddress").val()
					+ "/" + $("#jibunAddress").val();
				
				if($("#detailAddress").val() != '') {
					useraddress += "/" + $("#detailAddress").val();
				}
				
				useraddress += "/" + $("#extraAddress").val()
				
				$("#useraddress").val(useraddress);
			}
			
			alert("써브웨이 멤버십 가입이 완료되었습니다.\n메인화면으로 이동합니다.");
		}
		

		// ID 중복확인 
		function checkID(){
			
			var userid = $("#userid").val();
			
			// id를 입력하지 않았을 경우  
			if(userid == ''){
				alert("아이디를 입력하세요.");
				return;
			}
		
			// ajax를 이용하여 아이디 중복여부 판별 
			$.ajax({
				type: "POST",
				url: "/member/checkID",
				data:  {
					"userid" : userid
				}
				,
//				contentType: "application/json",
//				async: false,
				success: function(result){
//					alert("type : " + typeof result);
//					alert("result : " + result);
				
					if(result == "1") {
						alert("아이디가 존재합니다. 다른 아이디를 입력하세요.");
						$("#userid").focus();
					} else if(result == "0") {
						alert("사용 가능한 아이디입니다.");
						$("input[name='userpw']").focus();
						
						$(".btn-overlap").hide();		// check btn 비활성화 
						$("#img-checked").show();		// checked img 활성화 
						$("input[name='isIDchecked']").val("checked");
					} else {
						alert("Error: " + result);
					}
				},
				error: function(result){
					log.info("error : " + result);
				}
			});
		}
		

	</script>
	
	
	<!-- 여기서부터 회원가입 영역입니다  -->
	<div class="container">
		<div class="row text-center" style="width:100%;">
			<div class="form-box form-box-A">
				<form action="/member/join" method="post" onsubmit="return checkInfo()">
					<div class="txt-box">
						<h1> Join </h1>
						<h6> 써브웨이 멤버십에 가입하시면 <br/> 다양한 서비스를 이용할 수 있습니다. </h6>
					</div>
					<div class="tbl-box">
						<!-- step2 -->
						<p><strong> 필수 정보 </strong></p>
						<table class="tbl tbl-step2">
							<tr>
								<th><label for="userid"> <strong>아이디</strong></label></th>
								<td><input type="text" name="userid" id="userid" size="30"/> </td>
								<!-- style="text-transform: lowercase;" -->
								<td>
									<input type="button" value="ID check" class="btn-overlap" onclick="checkID()"/>
									<img src="/resources/image/ETC_icon/check.png" id="img-checked" style="display:none; width: 10px; height: 10px;" />
									<input type="hidden" name="isIDchecked" value="unchecked"/>
								</td> 
							</tr>
							<tr>
								<th><label for="userpw"> <strong>비밀번호</strong></label></th>
								<td><input type="password" name="userpw" id="userpw" size="30" placeholder="8~16자 이내 (영문자,숫자,특수문자)"></td>
								<td></td>
							</tr>
							<tr>
								<th><label for="userpw2"> <strong>비밀번호 확인</strong></label></th>
								<td><input type="password" name="userpw2" id="userpw2" size="30"></td>
								<td></td>
							</tr>
						</table>
						
						<br/>
						
						<!-- step3  -->
						<p><strong> 선택 정보 </strong></p>
						<table class="tbl tbl-step3">
							<tr>
								<th><label for="uname"> <strong>이름</strong></label></th>
								<td><input type="text" name="uname" id="uname" size="30"></td>
								<td></td>
							</tr>
							<tr>
								<th><label for="uemail"> <strong>이메일 주소</strong></label></th>
								<td>
									<input type="text" name="uemail" id="uemail" size="8" >
									@
									<input placeholder="select domains" list="domains" size="17" name="domains">
									<datalist id="domains">
										<option value="naver.com">naver.com</option>
										<option value="daum.net">daum.net</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="gmail.com">gmail.com</option>
									</datalist>
									<input type="hidden" name="useremail" id="useremail" />
								</td>
								<td></td>
							</tr>
							<tr>
								<th rowspan="3"><strong>주소 </strong></th>
								<td colspan="2">
									<input type="text" id="postcode" placeholder="우편번호" size="20">
									<input type="button" onclick="getDaumPostcode()" value="우편번호 찾기">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" id="roadAddress" placeholder="도로명주소" size="20">
									<input type="text" id="jibunAddress" placeholder="지번주소" size="20">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<span id="guide" style="color:#999;display:none"></span>
									<input type="text" id="detailAddress" placeholder="상세주소" size="20">
									<input type="text" id="extraAddress" placeholder="참고항목" size="20">
								</td>
							<tr>
							<tr> <!-- 왜..넣어야만 하는걸까..? -->
								<td colspan="3">
									<input type="hidden" name="useraddress" id="useraddress"/>
								</td>
							</tr>
						</table>
					</div> <!-- .tbl-box End -->

					<input class="btn-submit" type="submit" value="Join"/>
				</form>
			</div>
		</div> <!-- .row End -->
	</div> <!-- .container End -->

	
<%@ include file="../include/footer.jsp" %>