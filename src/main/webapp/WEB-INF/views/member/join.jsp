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
<div class="container">
  <main>
    <div class="py-5 text-center">
      <h2>JOIN</h2>
       </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
       

      </div>
      <div class="col-md-7 col-lg-8">
        <form action="./join" method="post" class="needs-validation" >
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">ID</label>
              <input type="text" class="form-control" id="firstName" name="id" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">PW</label>
              <input type="text" class="form-control" id="lastName"  name="pw" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">Name</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="username"  name="name" placeholder="Username" required="">
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>

           
            
	</div>
     

      

         



          <button class="w-100 btn btn-primary btn-lg" type="submit">JOIN</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">© 2017–2022 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>
</body>
</html>