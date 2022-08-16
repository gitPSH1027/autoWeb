<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>표준프레임워크 경량환경 홈페이지 템플릿</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
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
							<li><strong>SQL문 생성</strong></li>
						</ul>
					</div>
				</div>
				<h3>간단한 select 문 생성</h3>
				<!-- //현재위치 네비게이션 끝 -->				
				<!-- main content 시작 -->
				<div class="content_field">
					<div><h2>테이블</h2></div>
					    <input id="table" type="text"> 
					    <div class="wrapper"> 
        					<input id="tableAuto" type="text"><br><br>
    					</div>	
					    <button id="change" class="buttons">변환</button>
					    <br><br>
					<div><h2>컬럼</h2></div>
					    <select id="field"></select> 
					<div><h2>변수</h2></div>
						<input id="valu" type="text"> 
    				<button id="change">변경</button><br>
					<div class="wrapper"> 
       					<textarea id="zone1" cols="100" rows="15" style="font-size:20px"></textarea>
    				</div>
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
<script src="/js/selectSql.js"></script>
<script src="/js/textAuto.js"></script>
</html>

