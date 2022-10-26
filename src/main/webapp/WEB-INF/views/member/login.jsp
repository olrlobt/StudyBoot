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
<body class="text-center">
    
<main class="form-signin w-100 m-auto">
  <form action="./login" method="post">
    <img class="mb-4" src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">LOGIN</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" name ="id" placeholder="name@example.com">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" name ="pw"  placeholder="Password">
      <label for="floatingPassword">PW</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">LOGIN</button>
    <p class="mt-5 mb-3 text-muted">© 2017–2022</p>
  </form>
</main>


    
  

</body>
</html>