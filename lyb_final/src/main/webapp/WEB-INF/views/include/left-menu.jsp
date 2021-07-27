<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>


<div class="left-menu-container">
			
	<div class="user-info-div">
		
		
		<c:if test="${not empty loginUser}">
			<span style="color:#222; font-weight:700;">${loginUser.id}</span>
			<span style="color:#999; font-weight:500;">${loginUser.nickname}</span>
			<span style="color:#999; font-weight:500;">${loginUser.intro}</span>
			
			<div class="cm-btn-group">
				<span id="logout-btn">로그아웃</span>
			</div>
			
		</c:if>
		
		<c:if test="${empty loginUser}">
			<div class="cm-btn-group">
			<span id="go-login-page-btn">로그인</span>
			<span> | </span>
			<span id="go-register-page-btn">회원가입</span>
		</div>
		
		</c:if>
		
		
	</div>
	
	
	
	<div class="nav-menu-container">
		<div class="one-menu <c:if test="${menu eq 'home'}">selected</c:if>" data-page="">
			<span class="i">
				<i class="fas fa-user-friends"></i>
			</span>
			
			<span class="t">회원리스트</span>
		</div>
		<div class="one-menu <c:if test="${menu eq 'product'}">selected</c:if>" data-page="product">
			<span class="i">
				<i class="fas fa-list"></i>
			</span>
			<span class="t">상품리스트</span>
		</div>
		
		<div class="one-menu <c:if test="${menu eq 'review'}">selected</c:if>" data-page="review">
			<span class="i">
				<i class="fas fa-file-medical-alt"></i>
			</span>
			
			<span class="t">구매후기</span>
		</div>
		
		<div class="one-menu <c:if test="${menu eq 'cs'}">selected</c:if>" data-page="cs">
			<span class="i">
				<i class="fas fa-phone-alt"></i>
			</span>
			
			<span class="t">고객센터</span>
		</div>
	</div>
	


</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous"></script>

<script type="text/javascript" src="./resources/js/left-menu.js"></script>