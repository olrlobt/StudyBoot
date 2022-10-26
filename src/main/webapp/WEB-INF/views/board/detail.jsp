<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../temp/boot.jsp"></c:import>
</head>
<body>
<section class="container-fluid col-lg-8 mt-5">


	<h1> qna detail page</h1>
	
	
	
	<table class="table">
  
  <tbody>
  
    <tr>
    	<th>제목</th>
    	<td>${qna.title }</td>
    	
    	
     
      
    </tr>
     <tr>
    	<th>제작자</th>
    	<td>${qna.writer }</td>
    </tr>
     <tr>
    	<th>내용</th>
    	<td>${qna.contents }</td>
    </tr>
    
    
    
    <tr>
    <th>파일</th>
	     <c:forEach items="${qna.qnaFileVOs }" var="file">
	     
	     	<td><img  src="/file/qna/${file.fileName }"></td>
			 <td><a href="/fileDown/qna?fileNum=${file.fileNum}"> ${file.fileName }</a></td>
		
		
		</c:forEach>
    </tr>
    
  </tbody>
</table>
	
</section>
	
	
	
	
	
	
	
</body>
</html>