<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../include/header.jsp" %>
	
	
	<!-- 여기서부터 로그인 영역입니다  -->
	<div class="container">
		<div class="row text-center" style="width:100%;">
			<div class="form-box form-box-B">
				<form action="/login" method="post">
					<div class="txt-box">
						<h1> Login </h1>
						<h6> 써브웨이 회원으로 로그인하시면 <br/> 다양한 서비스를 이용할 수 있습니다. </h6>
					</div>
					<div>
						<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
							<font color="red">
								로그인 실패 <br>
								 ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} 
								<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
							</font>
						</c:if>
					</div> 
					<div class="dl-box">
						<dl>
							<dt><label for="userid"> <strong>아이디</strong></label></dt>
							<dd><input type="text" name="userid" id="userid" size="30"></dd>
						</dl>
					</div>
					<div class="dl-box">
						<dl>
							<dt><label for="userpw"> <b>비밀번호</b> </label></dt>
							<dd><input type="password" name="userpw" id="userpw" size="30"></dd>
						</dl>
					</div>
					<div class="input-box">
						<input type="checkbox" name="remember-me"/> <label for="rem">로그인 정보 저장</label>
					</div>
					
					<input class="btn-submit" type="submit" value="Login"/>
					
					<!--  csrf 공격 방어를 위해 동적 생성 -->
		        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
		        	
				</form>
			</div>
		</div> <!-- .row End -->
	</div> <!-- .container End -->


<%@ include file="../include/footer.jsp" %>