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
      <h3 >비밀번호 찾기</h3>
     </div>
  <div class="card" >

    <div class="main">

     

      <form method="post" action="/projectMenu/login/findPwReg"  enctype="multipart/form-data">
        <div class="form-group">
          <label for="inputid">아이디</label>
          <input type="text" class="form-control"  name="id">
        </div>
        <div class="form-group">

          <label for="inputPassword">이메일(모두 입력하세요)</label>
          <input type="text" class="form-control"  name="mail">
        </div>
	        
        <input id="login_button" type="submit" class="btn btn btn-primary" value="비밀번호 찾기">
         
      </form>    
    </div>
  </div>


<!--  <script>
        $(function() {
            $('#login_button').mouseenter(function() {
                $(this).css('cursor','pointer') ;
            }).mouseout(function() {
                $(this).css('cursor','normal') ;
            }).click(function() {
                loginCheck() ;
            }) ;
        }) ;
        
        function loginCheck() {
            var id  = $('#id' ).val() ;
            var pw = $('pw').val() ;
            $.ajax({
                type : "POST",
                url: 'loginMainReg',
                data: {id:id, pw:pw},
                success: function(USER) {
                    if(USER == "false")
                        alert('잘못된 아이디이거나, 비밀번호가 틀렸습니다.') ;
                    else
                        location.href="projectMenu/main/main" ; // home.do로 돌아가시면 됩니다.
                }
            }) ;
        }
        
        $('.loginInput').keydown(function(key) {
            if(key.keyCode == 13) {
                $('#login_button').click() ;
            }
        }) ;
    </script>  -->
</body>
</html>