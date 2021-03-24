<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>joinMainForm</title>

<style type="text/css">

 .card{
	  
	  width: 500px;
	  margin: 0 auto;
	  background: #f4f6f9;
}
 
  .main {
    max-width: 320px;
    

  }
.form-group{
	font-size: 14px;
}

#login_button{
	margin-bottom: 30%
}
</style>
</head>
<body>


	<div class="text-center mt-4">
      <h3 > 관리자 로그인 </h3>
     </div>
  <div class="card" >

    <div class="main">
      <form method="post" action="/admin/login/adminLoginReg"  enctype="multipart/form-data">
        <div class="form-group">
          <label for="inputid">관리자 아이디</label>
          <input type="text" class="form-control"  name="id">
        </div>
        <div class="form-group">

          <label for="inputPassword">관리자 패스워드</label>
          <input type="password" class="form-control"  name="pw">
        </div>       
        <input id="login_button" type="submit" class="btn btn btn-primary" value="로그인">
         
      </form>    
    </div>
  </div>


</body>
</html>