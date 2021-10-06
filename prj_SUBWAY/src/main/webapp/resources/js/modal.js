/* /order/step1 에 대한 script 영역입니다 */
$(function(){
	// 이전 버튼 클릭 이벤트 
	$("#modalPrevBtn").on("click", function(){
		
	});


	// 다음 버튼 클릭 이벤트  
	$("#modalNextBtn").on("click", function(){
		
		// step1
		if ( $("#modalNextBtn").hasClass("btn-1") ) {
			if ($("input[name='size']").is(":checked") ) {
					$(".step1").css("display", "none");
				$(".step2").css("display", "block");
				
				$("#modalPrevBtn").show();
				
				$(this).removeClass("btn-1");
				$(this).addClass("btn-2");
				
			} else {
				alert("select size!");
			}
		} else if ( $("#modalNextBtn").hasClass("btn-2")) {
			// step2 
			if($(".bread-li").hasClass("selected") === true ) {
				$(".step2").css("display", "none");
				$(".step3").css("display", "block");
					
				$("#modalNextBtn").removeClass("btn-2");
				$("#modalNextBtn").addClass("btn-3")
			} else {
				alert("select bread!");
			}
			
		} else if ($("#modalNextBtn").hasClass("btn-3")) {
			// step3
			if ($("input[name='toasting']").is(":checked") ) {
					$(".step3").css("display", "none");
				$(".step4").css("display", "block");
				
				$("#modalNextBtn").removeClass("btn-3");
				$("#modalNextBtn").addClass("btn-4")
			} else {
				alert("select toasting!");
			}
		} else if ($("#modalNextBtn").hasClass("btn-4")) {
			// step4
			if($(".cheese-li").hasClass("selected") === true ) {
				$(".step4").css("display", "none");
				$(".step5").css("display", "block");
					
				$("#modalNextBtn").removeClass("btn-4");
				$("#modalNextBtn").addClass("btn-5")
			} else {
				alert("select cheese!");
			}
		} else if ($("#modalNextBtn").hasClass("btn-5")) {
			// step5 
			if($(".vege-li").hasClass("selected") === true ) {
				$(".step5").css("display", "none");
				$(".step6").css("display", "block");
					
				$("#modalNextBtn").removeClass("btn-5");
				$("#modalNextBtn").addClass("btn-6")
			} else {
				alert("select vege!");
			}
		} else if ($("#modalNextBtn").hasClass("btn-6")) {
			// step6 
			if($(".ss-li").hasClass("selected") === true ) {
				$(".step6").css("display", "none");
				$(".step7").css("display", "block");
					
				$("#modalNextBtn").removeClass("btn-6");
				$("#modalNextBtn").addClass("btn-7")
			} else {
				alert("select sauce!");
			}
		} else if ($("#modalNextBtn").hasClass("btn-7")) {
			// step7 
			$(".step7").css("display", "none");
			$(".step8").css("display", "block");
					
			$("#modalNextBtn").removeClass("btn-7");
			$("#modalNextBtn").addClass("btn-8")
		} else if ($("#modalNextBtn").hasClass("btn-8")) {
			// step8 
			$(".step8").css("display", "none");
			$(".step9").css("display", "block");
					
			$("#modalNextBtn").removeClass("btn-8");
			$("#modalNextBtn").addClass("btn-9")
			
			$("#modalNextBtn").hide();
			$("#modalOrderBtn").show();
		} 
		
	});
	
	// 주문 버튼 클릭 이벤트  
	$("#modalOrderBtn").on("click", function(){
		$("#customMenu").attr("method", "get");
		
		$("#customMenu").submit();
	});
	
	
	$("#set-wrapper").css("display", "none");
	$("#coo-wrapper").css("display", "none");
	// step9: set 선택 시, 옵션 선택창 활성화 이벤트 
	$("#set-type").change(function(){    
		if ( $("#set-type option:selected").val() > 710) {  
			$("#set-wrapper").css("display", "block");
		} else {
			$("#set-wrapper").css("display", "none");
		}
		
		if ( $("#set-type option:selected").val() == 711 ||  $("#set-type option:selected").val() == 712) {
			$("#coo-wrapper").css("display", "block");
		} else {
			$("#coo-wrapper").css("display", "none");
		}
	});
	
});