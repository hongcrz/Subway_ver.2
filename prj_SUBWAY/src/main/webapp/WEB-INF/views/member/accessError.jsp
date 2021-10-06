<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../include/header.jsp" %>


	<!-- 여기서부터 에러페이지 영역입니다  -->
	<div class="container">
		<div class="row text-center" style="width:100%;">
			<div class="form-box form-box-B">
				<div class="txt-box">
					<h5> <c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage() }"/>  </h5>
					<h5> 관리자에게 문의하세요.</h5>
				</div>
			</div>
		</div> <!-- .row End -->
	</div> <!-- .container End -->
	
	
<%@ include file="../include/footer.jsp" %>