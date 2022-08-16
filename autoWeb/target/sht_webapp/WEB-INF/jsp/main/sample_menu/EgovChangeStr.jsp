<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>문자변환</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
</head>
<body>
<!-- 전체 레이어 시작 -->
<div id="wrap">
<!-- header 시작 -->
    <div id="header_mainsize">
        <c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />
    </div>
    <div id="topnavi">
        <c:import url="/EgovPageLink.do?link=main/inc/EgovIncTopnav" />
    </div>
    <!-- //header 끝 -->
    <!-- container 시작 -->
	<div id="container">
		<!-- 좌측메뉴 시작 -->
		<div id="leftmenu"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncLeftmenu" /></div>
		<!-- //좌측메뉴 끝 -->
			<!-- content 시작 -->
			<div id="content">
				<!-- 현재위치 네비게이션 시작 -->
				<div id="cur_loc">
					<div id="cur_loc_align">
						<ul>
							<li>HOME</li>
							<li>&gt;</li>
							<li><strong>문자변환</strong></li>
						</ul>
					</div>
				</div>
				<h3>문자변환</h3>
				<!-- //현재위치 네비게이션 끝 -->				
				<!-- main content 시작 -->
				<div class="content_field">
					<div><h2>snake case ==> camel case</h2></div>
					    <textarea name="" id="before" cols="30" rows="10"></textarea>
					    <button id="change" class="buttons">변환</button>
					    <textarea name="" id="after" cols="30" rows="10"></textarea>
					    <br><br>
					<div><h2>camel case ==> snake case</h2></div>
					    <textarea name="" id="before1" cols="30" rows="10"></textarea>
					    <button id="change1">변환</button>
					    <textarea name="" id="after1" cols="30" rows="10"></textarea>
				</div>
				<br>
				<!-- //main content 끝 -->
			</div>
			<!-- //content 끝 -->
	</div>	
	<!-- //container 끝 -->
	<!-- footer 시작 -->
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
	<!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
<script src="/js/camelChange.js"></script>
<script src="/js/snakeChange.js"></script>
</html>