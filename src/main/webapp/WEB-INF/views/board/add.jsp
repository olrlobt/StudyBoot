<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Summernote</title>


	<c:import url="../temp/boot.jsp"></c:import>


  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
	
	
	<section class="container-fluid col-lg-8 mt-5">

	<form action="./add" method="post" enctype="multipart/form-data">
	
		
	<div class="align-items-center">
	
	
	 	<div class="col-auto">
		    <label for="title"  class="col-form-label">title</label>
		  </div>
		  <div class="col-auto">
		    <input type="text" id="title" name ="title" class="form-control">
		  </div>
		  <div class="col-auto">
		    <label for="writer"class="col-form-label">writer</label>
		  </div>
		  <div class="col-auto">
		    <input type="text" id="writer"  name ="writer"  class="form-control">
		  </div>
		  
		
		
		  
		 <div class="col-auto">
		    <label for="writer" class="col-form-label">contents</label>
		  </div>
		  <div class="col-auto">
		     <textarea id="summernote" name="contents"></textarea>
		  </div>
		  
		  
		   <div class="col-auto">
		    <label for="file"class="col-form-label">file</label>
		  </div>
		  <div class="col-auto">
		    <input type="file" id="file"  name ="files"  class="form-control">
		  </div>
		 <div class="col-auto">
		    <label for="file"class="col-form-label">file</label>
		  </div>
		  <div class="col-auto">
		    <input type="file" id="file"  name ="files"  class="form-control">
		  </div>
	  	<button type="submit" class="btn btn-primary">버튼 </button>
	</div>
	</form>

</section>




  <script>
  $(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			  height: 300,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
	          
		});
	});
  </script>
</body>
</html>