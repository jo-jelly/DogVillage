<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<style type="text/css">

body{
    margin-top:20px;
}

.card{
    background-color: #f2f3f8;
}

</style>

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
               $("#submitChk").prop('disabled', true);
               $("#id").prop('readonly', false);
            } 
       },
       error: function (){        
                         
       }
     });
}
</script>

<script type="text/javascript">

   //load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
   function exePostCode(){
       new daum.Postcode({
           oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
               
               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if(fullRoadAddr !== ''){
                   fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               /* document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용 */
               document.getElementById('zipcode').value = fullRoadAddr;
               $("#zipcode").prop('readonly', true);
               document.getElementById('address').focus();
           }

       }).open();
   }
      

   


</script>

<script type="text/javascript">
 
$(document).ready(function(){
    //id중복확인 후에는 readonly로 바껴야함 그리고 체크후 체크성공시엔 disabled가 해제되게하면됨
    $("#submitChk").prop('disabled', true); // 전체선택하기
    $("#submitChk").click(function(){
        
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
   
   if($("#mail").val()==""){
      alert("이메일을 입력하세요");
      $("#mail").focus();
      return ;
   }
     if(!/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/.test( $("#mail").val() ) ){
      alert("이메일 형식을 확인해주세요")
      $("#mail").focus();
       return
      }

   
   if($("#pw").val()==""){
      alert("비밀번호를 입력해주세요.");
      $("#pw").focus();
      return ;
   }
   if($("#pwChk").val()==""){
      alert("비밀번호 확인을 입력해주세요.");
      $("#pwChk").focus();
      return ;
   }
      if($("#pw").val() != "" && $("#pw").val() != null){
           if( !/[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{4,15}$/.test( $("#pw").val() )){
              alert("비밀번호 입력 에러 \n 사용가능특수문자(!@#$%^&*.)\n 최소4~15자까지 입력")
                    $("#pw").focus();
              return
           }
        }
   if($("#pw").val()!=$("#pwChk").val()){
      alert("비밀번호와 비밀번호 확인이 다릅니다.");
      $("#pwChk").focus();
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

   
   if($("#zipcode").val()==""){
      alert("주소를 입력하세요");
      $("#zipcode").focus();
      return ;
   }
       if($("#zipcode").val() != "" && $("#zipcode").val() != null){
           if( !/[ㄱ-ㅎ가-힣0-9a-zA-Z_!()@#$%^&*.\s]{1,4000}$/.test( $("#zipcode").val() )){
              alert("주소 입력 에러 ")
                    $("#zipcode").focus();
              return
           }
        } 

    if($("#address").val()==""){
      alert("상세주소를 입력하세요");
      $("#address").focus();
      return ;
   }
      if($("#address").val() != "" && $("#address").val() != null){
           if( !/[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{1,50}$/.test( $("#address").val() )){
              alert("상세주소 입력 에러 \n 최대 50자")
                    $("#address").focus();
              return
           }
        } 

       frm.submit();
    })
})
</script>
<div class="container h-100">
          <div class="row h-100">
            <div class="col-md-8  d-table ">
               <div class="d-table-cell align-middle">

                  <div class="text-center mt-4">
                     <h1 class="h2">회원가입</h1>
                     
                  </div>

                  <div class="card">
                     <div class="card-body">
                        <div class="m-sm-4">
                        
               <form action="/projectMenu/join/joinMainReg" method="post" enctype="multipart/form-data" name="frm">
                              
                              <div class="form-group">
                                 <label>이름</label>
                                 <input class="form-control form-control-sm" type="text" id="name" name="name"  maxlength="20" placeholder="성명을 입력하세요">
                              </div>
                              <div class="form-group">
                                 <label>아이디</label>
                                    <input type="text" class="form-control" id="id" name="id" placeholder="영문입력(4자 이상)" required>
                                    <div ><button class="btn btn-sm btn-secondary" type="button" id="idChk" onclick="fn_idChk();" >중복확인 필수 </button>
                                    </div>
                              </div>
   <!--  value="N" -->                            
                              <div class="result">
                                 
                              </div>
                              
                              <div class="form-group">
                                 <label>이메일</label>
                                 <input class="form-control form-control-sm" type="text" id="mail" name="mail" size="20" placeholder="ex)wjdxo513@naver.com">
                              </div>
                              <div class="form-group">
                                 <label>비밀번호</label>
                                 <input class="form-control form-control-sm" type="password" id="pw" name="pw" placeholder="최소4자 이상"
                                   maxlength="20">
                              </div>
                              <div class="form-group">
                                 <label>비밀번호 확인</label>
                                 <input class="form-control form-control-sm" type="password" id="pwChk" name="pwChk" placeholder="비밀번호 확인입력"
                                  maxlength="20" >
                              </div>
                              <div class="form-group">
                                 <label>전화번호</label>
                                 <input class="form-control form-control-sm" type="tel" id="tel" name="tel" placeholder="전화번호입력(-)제외"  maxlength="20">
                              </div>
                              <div class="form-group">
                                 <label>주소</label>
                                 <input class="form-control form-control-sm" type="text" id="zipcode" name="zipcode" size="20" placeholder="Enter zipcode"> 
                                 <input type="button" value="우편번호찾기" onclick="exePostCode();" class="btn btn-sm btn-secondary">
                              </div>
                              <div class="form-group">
                                 <label>상세주소</label>
                                 <input class="form-control form-control-sm" type="text" name="address" id="address"  maxlength="20" placeholder="상세주소 입력">
                              </div>
                              <div class="form-group">
                                 <label>반려견 사이즈</label>
                                 <select class="form-control form-control-sm" id="dog_size" name=dog_size>      
                                       <option value="소형견" selected="selected">소형견
                                       <option value="중형견">중형견
                                       <option value="대형견">대형견
                                 </select>
                              </div>
                              <div class="form-group">
                                 <label>반려견 나이</label> &nbsp;&nbsp;
                                 <input type="radio" name="dog_age"  value="퍼피" />퍼피 &nbsp;&nbsp;
                                 <input type="radio" name="dog_age"  value="성견" checked="checked"/>성견 &nbsp;&nbsp;
                                 <input type="radio" name="dog_age"  value="노견"/>노견
                                 </div>
                              <!-- 가입자에게 보여주지 않고 등급 값 처리 -->   
                              <div><input type="hidden" name="grade" value="활성"></div>                           
                           
                              <div class="text-center mt-3">
                                  <input type="button" class="btn btn-lg btn-primary" id="submitChk" value="회원가입" > 
                                 <!-- <button class="btn btn-lg btn-primary" type="button" id="submit">회원가입</button> -->
                                 &nbsp;&nbsp;&nbsp;&nbsp;
                                 <!-- <input type="reset" class="btn btn-lg btn-primary" value="초기화"> -->
                                 <a href="joinMainForm" class="btn btn-lg btn-primary">초기화</a>
                              </div>
            </form>
                        </div>
                     </div>
                  </div>

               </div>
            </div>
         </div>
      </div>

</body>
</html>