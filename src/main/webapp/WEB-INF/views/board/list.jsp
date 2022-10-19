<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot.jsp"></c:import>
</head>
<body>
<section class="container-fluid col-lg-8 mt-5">

	<h1>list page</h1>
	
	
	<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">title</th>
      <th scope="col">contents</th>
      <th scope="col">writer</th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${list }" var="ar">
  	
  	 	<tr>
	      <th scope="row">${ar.num }</th>
	      <td><a href="./detail?num=${ar.num}">${ar.title }</a></td>
	      <td>${ar.contents }</td>
	      <td>${ar.writer }</td>
	    </tr>
  	
  	
  	</c:forEach>
  
   
   
  </tbody>
</table>
	
	
	
	<a href="./add">글을 쓰자</a>
	
	
</section>
	
	<script type="text/javascript">
	let result = '${param.result}'
	console.log(result + "ggg")
	
	if(result != ""){
		if(result == "1"){
			Swal.fire({
		        title: "저장 성공",  // title, text , html  로 글 작성
		        icon: "success",    //상황에 맞는 아이콘

		        showCancelButton: true,
		        confirmButtonColor: '#3085d6',
		        confirmButtonText: '삭제',
		        cancelButtonText: '취소',
		        reverseButtons: true   // 버튼 순서 변경
		    } )
			
			
		}else {
			
			Swal.fire({
		        title: "저장 실패",  // title, text , html  로 글 작성
		        icon: "error",    //상황에 맞는 아이콘

		        showCancelButton: true,
		        confirmButtonColor: '#3085d6',
		        confirmButtonText: '삭제',
		        cancelButtonText: '취소',
		        reverseButtons: true   // 버튼 순서 변경
		    } )
			
		}
		
		
	}
	
	
	</script>
	
	
	
	
	
	
</body>
</html>