<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>customer_manager/customerInsertForm 페이지</title>
<style>
.manager_insert{
    text-align : center;
    width:100%;

}
</style>
</head>
<body>
<script type="text/javascript">

function fn_idChk(){

   $.ajax({
       url: '/aajjj/join/ID_Check',
       type: 'POST',
       dataType: 'json', //서버로부터 내가 받는 데이터의 타입
       data: {"id" : $("#id").val()},
       success: function(data){
          console.log(data)
            if(data.rrr == 0){
            console.log("아이디 없음");

            if($("#id").val()==""){
              alert("아이디를 입력해주세요.");
              $("#id").focus();
              return ;
           }
             if(/[/,\\]/.test( $("#id").val() )){
                alert("아이디 에러 영문과 숫자로만 작성해주세요")
                $("#id").focus();
               return
              }
            if(!/^[a-zA-Z0-9]{3,15}$/.test( $("#id").val() ) ){
                 alert("아이디 에러 \n 3~15자 미만 영문,숫자입력")
                 $("#id").focus();
                 return
              }
            
            alert("사용하실 수 있는 아이디입니다.");
            $("#submitChk").prop('disabled', false);
            $("#id").prop('readonly', true);
            }else{
               console.log("아이디 있음");
               alert("중복된 아이디가 존재합니다.");
             
               $("#id").prop('readonly', false);
            } 
       },
       error: function (){        
                         
       }
     });
}
</script>


<script type="text/javascript">
 
$(document).ready(function(){
    $("#submitChk").prop('disabled', true); // 전체선택하기
    $("#submitChk").click(function(){
        
   if($("#id").val()==""){
      alert("아이디를 입력해주세요.");
      $("#id").focus();
      return ;
   }
     if(/[/,\\]/.test( $("#id").val() )){
        alert("아이디 에러 영문과 숫자로만 작성해주세요")
       return
      }
    if(!/^[a-zA-Z0-9]{3,15}$/.test( $("#id").val() ) ){
         alert("아이디 에러 \n 3~15자 미만 영문,숫자입력")
         return
      }
    
   if($("#name").val()==""){
      alert("성명을 입력해주세요.");
      $("#name").focus();
      return ;
   }
     if(!/^[ㄱ-ㅎ가-힣]{1,15}$/.test( $("#name").val() ) ){
        alert("한글로 작성된 성명을 입력해주세요")
      $("#name").focus();
         return
         }
      if($("#pw").val()==""){
         alert("비밀번호를 입력해주세요.");
         $("#pw").focus();
         return ;
      }
      if($("#tel").val()==""){
         alert("전화번호를 입력하세요");
         $("#tel").focus();
         return ;
      }
        if(!/^[0-9]{11,11}$/.test( $("#tel").val() ) ){
         alert("전화번호입력오류 \n (11자리 숫자 입력 \n (-)제외)")
         $("#tel").focus();
          return
         }

    frm.submit();
    })
})
</script>

<h1>customerInsert 페이지</h1>
<form action="/admin/customer_manager/adminInsertReg" method="post" enctype="multipart/form-data" name="frm">
<table border=""id="manager_insert">
      <tr>
         <th width="30%">아이디</th>   
         <td><input type="text" class="form-control" id="id" name="id" placeholder="영문입력(4자 이상)" required>
            <input type="button" value="ID중복확인" id="id" onclick="fn_idChk();" class="btn btn-sm btn-secondary">
         </td>
      </tr>
      <tr>
         <th>이름</th>
         <td><input type="text" name="name" id="name" size="20" class="form-control"></td>
      </tr>
      <tr>
         <th>패스워드</th>
         <td><input type="password" name="pw" id="pw" class="form-control"></td>
      </tr>
      <tr>
         <th>전화번호</th>
         <td><input type="text" name="tel" id="tel" size="20" class="form-control"></td>
      </tr>
         <tr>
         <td><input type="hidden" name="mail" value="관리자 비입력"></td>
         <td><input type="hidden" name="zipcode" value="관리자 비입력"></td> 
         <td><input type="hidden" name="address" value="관리자 비입력"></td>
         <td><input type="hidden" name="dog_size" value="관리자 비입력"></td>
         <td><input type="hidden" name="dog_age" value="관리자 비입력"></td>
         <td><input type="hidden" name="grade" value="관리자"></td>
      </tr>
         
      <tr>
            <td colspan="2" align="right">
            <input type="button" class="btn btn-sm btn-secondary" id="submitChk" value="관리자 추가" > 
               
                  <a href="customerList" class="btn btn-sm btn-secondary">목록으로</a>
         
         </td>
      </tr>
               
</table>
</form>
</body>
</html>