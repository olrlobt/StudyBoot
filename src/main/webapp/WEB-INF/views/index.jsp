<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="/css/test.css" rel="stylesheet">
	
	<c:import url="./temp/boot.jsp"></c:import>
</head>
<body>
	<h1>index page</h1>
	
	<img alt="" src="/images/구디 정면.png">
	<a href="./qna/list">QNA</a>
	<img src="/file/qna/83219722-0c1e-4acc-9198-b1caf4d6dcda_한글아이유.jpg">
	<img src="/file/notice/iu4.jpg">
	
	<a href="/fileDown/qna?fileNum=2">qna</a>	
	<a href="/fileDown/notice?fileNum=2">notice</a>	
	<c:if test="${empty member }"><a href="/member/login">LOGIN</a>	</c:if>
	<c:if test="${not empty member }"><a href="/member/logout">LOGOUT</a></c:if>
	<a href="/member/join">JOIN</a>	
	
	
</body>
</html>