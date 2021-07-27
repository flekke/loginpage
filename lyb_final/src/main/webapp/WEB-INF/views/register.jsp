<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>


<html>
<head>
	<title>Home</title>
	<link type="text/css" rel="stylesheet" href="./resources/css/common.css"/>
	<script src="https://kit.fontawesome.com/7047342423.js" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="cm-center-body">
		<img src="./resources/image/logo.png" style="width:130px;margin-bottom:30px;"/>
		<input id="id" class="cm-inp" placeholder="아이디"/>
		<input id="pw" type="password" class="cm-inp" placeholder="패스워드"/>
		<input id="pw1" type="password" class="cm-inp" placeholder="패스워드 확인"/>
		<input id="nickname" class="cm-inp" placeholder="닉네임"/>
		<input id="intro" class="cm-inp" placeholder="자기소개"/>
		
		<div class="cm-radio-group">
			<input  id="gd-m"type="radio" value="m" name="gender"/>
			<label for="gd-m">남자</label>
			<input id="gd-w" type="radio" value="w" name="gender" style="margin-left:50px;" />
			<label for="gd-w">여자</label>
		</div>
		
		<div id="submit-btn" class="cm-main-btn">
			회원가입하기
		</div>
		
	</div>
	
	

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous"></script>


<script type="text/javascript" src="./resources/js/register.js"></script>
</html>
