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
	<header class="header">
		<img src="./resources/image/logo.png"/>
		<div>
			<i class="fas fa-bell"></i>
			<span>지원 문의</span>
		
		</div>
		
	</header>
	<main>
		<%@ include file="./include/left-menu.jsp" %>
		<div class="right-body">
			<div>${one.id}</div>
			<div>${one.nickname}</div>
			<div>${one.intro}</div>
			<div>${one.gender}</div>
			<div>${one.reg_date}</div>
			

		</div>
		
	</main>



</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous"></script>

<script type="text/javascript" src="./resources/js/home.js">
</script>
</html>
