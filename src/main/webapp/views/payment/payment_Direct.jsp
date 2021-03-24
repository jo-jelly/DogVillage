<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment_P</title>


<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 더 어두운 느낌ㄴ-->

<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
<%--전체 --%>
#wrap{
   width: 1000px;
   margin-top:20px;
    color: #8e9194;
}

.cart-item-thumb {
    display: block;
    width: 10rem
}

.card{
   background: #f4f6f9;
}

.row{
   padding-top: 20px;
   padding-bottom: 20px;
}

<%-- 상품사진 --%>
.cart-item-thumb>img { 
    display: block;
    width: 100%
}

<%-- 상품명에 <a> --%>
.product-card-title>a {
    color: #222;
}

<%-- 상품명과 결제부분 메인글씨 --%>
.font-weight-semibold {
    font-weight: 600 !important;
}

<%-- 상품명과 결제부분 메인글씨 --%>
.product-card-title {
    display: block;
    margin-bottom: .75rem;
    padding-bottom: .875rem;
    border-bottom: 1px dashed #e2e2e2;
    font-size: 1rem;
    font-weight: normal;
}

.text-muted1 {
 color: #888 !important;
}

<%-- 상품 대 타이틀 부분 --%>

.bg-secondary {

    background-color: #f7f7f7 !important;
}

<%-- 결제부분 선택 타이틀 --%>
.accordion .accordion-heading {
    margin-bottom: 0;
    font-size: 1rem;
    font-weight: bold;
}

.text-muted {
    color: #aeb0b4 !important;
    font-weight: 300;
}
.form-control-p {
    display: block;
    width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 0.875rem;
    font-weight: 400;
    line-height: 1.5;
    color: #4d5154;
    background-color: #ffffff;
    background-clip: padding-box;
    border: 1px solid #eef0f3;
    border-radius: 0.25rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

</style>
</head>
<body>

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

   // btn click

   $("#submitChk").click(function(){

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
              
       if ($('#card1').val()=="") {
          alert("카드번호1을 입력해주세요"); //메시지 표시
         $("#card1").focus();
         return
          }
         if($("#card1").val() != "" && $("#card1").val() != null){
              if( !/[0-9]{4,4}$/.test( $("#card1").val() )){
                 alert("card1 입력오류 \n 숫자 4자리 입력하세요")
                       $("#card1").focus();
                 return
              }
           }
       
       if ($('#card2').val()=="") {
          alert("카드번호2를 입력해주세요"); //메시지 표시
         $("#card2").focus();
         return
          }
         if($("#card2").val() != "" && $("#card2").val() != null){
              if( !/[0-9]{4,4}$/.test( $("#card2").val() )){
                 alert("card2 입력오류 \n 숫자 4자리 입력하세요")
                       $("#card2").focus();
                 return
              }
           }
           
       if ($('#card3').val()=="") {         
          alert("카드번호3을 입력해주세요"); //메시지 표시
         $("#card3").focus();
         return
          }
         if($("#card3").val() != "" && $("#card3").val() != null){
              if( !/[0-9]{4,4}$/.test( $("#card3").val() )){
                 alert("card3 입력오류 \n 숫자 4자리 입력하세요")
                       $("#card1").focus();
                 return
              }
           }
           
       if ($('#card4').val()=="") {      
          alert("카드번호4를 입력해주세요"); //메시지 표시
         $("#card4").focus();
         return
          }
         if($("#card4").val() != "" && $("#card4").val() != null){
              if( !/[0-9]{4,4}$/.test( $("#card4").val() )){
                 alert("card4 입력오류 \n 숫자 4자리 입력하세요")
                       $("#card4").focus();
                 return
              }
           }
         if(!$("#consent").is(":checked")){

            alert("동의하기를 체크해주세요");
            $("#consent").focus();
             return
            } 
           
        frm.submit();   
      })
})


</script>

<form action="/projectMenu/payment/paymentDirectReg" name="frm">
<div id = wrap>
<div class="container pb-5 mt-n2 mt-md-n3">
        <div class="card col-xl-9 col-md-8">
    <div class="row">
       <div class="col-xl-9 col-md-8">
          <h2 class="h3 mb-4 page-title">결제화면</h2>
   <c:set var="vo" value="${data.productvo }"/>  
            <h2 class="h5 "> <a class="font-size-sm" href="../product/detail?p_code=${vo.p_code }">
            <%-- 장바구니옆 <모양 --%>
           
            <svg  width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
             stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left" style="width: 1rem; 
             height: 1rem;"><polyline points="15 18 9 12 15 6"></polyline></svg>상품디테일로</a>
             </h2>
   
    <!-- 상품-->
               <div class=" justify-content-between my-4 pb-4 border-bottom">
                   <div class="media d-block d-sm-flex text-center text-sm-left">
                       <!--  <a class="cart-item-thumb mx-auto mr-sm-4" href="#"><img src="../../img/ring.jpeg" alt="Product"></a>  -->
                       <div class="media-body pt-3"> <!-- 상품명 -->
                           <h3 class="product-card-title font-weight-semibold border-0 pb-0" ><a href="#" >${vo.p_name}</a></h3>        
                          <!--  <div class="font-size-sm"><span class="text-muted1 mr-2">옵션:</span>3M 레몬컬러</div> -->
                           <div class="font-size-sm"><span class="text-muted1 mr-2">가격:</span>${vo.p_price }</div>
                           <div class="font-size-sm"><span class="text-muted1 mr-2">수량:</span>${vo.p_amount }</div>                  
                           <div class="font-size-lg text-primary pt-2" > 가격 : ${(vo.p_price) * (vo.p_amount)}</div>   
                       </div>
                      </div>
                  </div>        
<%--        <c:set var="t_totalprice" value="${t_totalprice+ vo.money}"/>    <!-- 총가격 누적 -->  
       <c:set var="t_amount" value="${t_amount+ vo.p_amount}"/>    --%>
       <c:set var="t_pname" value="${vo.p_name},${vo.p_amount}/"/>   

    
       
      
             <div class=" col-md-6 ">
                <h2 class="h6 px-4 bg-secondary text-center">총 결제금액</h2>
                <h2 class="h6 px-4 bg-secondary text-center">+ 배송비 3000</h2>
                  <!-- 가격 -->
            
                  <div class="h3 font-weight-semibold text-center py-3">  ${((vo.p_price) * (vo.p_amount) + 3000)}원   
                  
                     <input type="hidden" name="t_totalprice" value="${((vo.p_price) * (vo.p_amount) + 3000)}">
                     <input type="hidden" name="t_amount" value="${vo.p_amount}">
                     <input type="hidden" name="t_pname" value="${t_pname}">   
                                                                    
                     <input type="hidden" name="t_fee" value="3000">
              
                  </div>
                  <hr>
            </div>



 <!-- 주소등의 입력 칸 -->
<c:set var="co" value="${data.customervo }"/>  
        <div class="container">
<div class="row justify-content-center">
    <div class="col-12 col-lg-10 col-xl-8 mx-auto">
        <h2 class="h3 mb-4 page-title">배송</h2>
        <div class="my-4">
                <hr class="my-4" />
                <div class="form-row">
                         <input type="hidden" name="t_pid" value="${co.id}">
                    <div class="form-group col-md-6">
                        <label for="firstname">주문자명</label>
                        <input type="text" id="name" class="form-control-p" name="t_recipient" value="${co.name}"  />
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lastname">연락처</label>
                        <input type="tel" id="tel" class="form-control-p" name="t_r_phone" value="${co.tel}"  />
                    </div>
                </div>
             
                <div class="form-group">
                    <label for="inputAddress5">주소</label>
                    <input type="text" class="form-control-p" id="zipcode" name="t_r_zipcode" value="${co.zipcode}"  />
                     <input type="button" value="우편번호찾기" onclick="exePostCode();" class="btn btn-sm btn-secondary">
                </div>
                    <div class="form-group ">
                        <label for="inputCompany5">상세주소</label>
                        <input type="text" class="form-control-p" id="address" name="t_r_adress" value="${co.address}" />
                    </div>
                    <div class="form-group">
                        <label for="inputState5">배송메세지</label>
                        <select id="inputState5" class="form-control-p" name="t_msg" >
                            <option selected="">선택하기...</option>
                            <option>도착전 문자 부탁드립니다</option>
                            <option>문앞에 보관후 전화주세요</option>
                            <option>꼭 직접배달 받겠습니다</option>
    
                        </select>
                    </div>
                 <!-- 배송메세지   <div class="form-group col-md-4">
                        <label for="inputZip5">배송메모</label>
                        <input type="text" class="form-control-p" id="inputZip5" placeholder="..." />
                    </div> -->
             
                      <div class="form-group col-md-12">
                        <label for="inputState5">결제수단  &nbsp;</label>
            <input type="radio" name="t_payment" value="card" checked="checked"/>카드결제
                    </div>
                    
                    
               <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="firstname">카드번호</label>
                        <input type="text" id="card1"  class="form-control-p" name="card1" placeholder="4자리입력"/>
                    </div> 
                    <div class="form-group col-md-3">
                       <label>입력</label>
                        <input type="text" id="card2" class="form-control-p" name="card2" placeholder="4자리입력"/>
                    </div> 
                    <div class="form-group col-md-3">
                          <label>&nbsp;_</label>
                        <input type="text" id="card3" class="form-control-p" name="card3" placeholder="4자리입력"/>
                    </div> 
                    <div class="form-group col-md-3">
                       <label>&nbsp;_</label>
                        <input type="text" id="card4" class="form-control-p" name="card4" placeholder="4자리입력"/>
                    </div>
                </div>
                  

<!--                 <button type="submit" class="btn btn-primary">배송사항 변경</button> -->
                
                <!-- 여기부터 결제수단 동의확인 -->
                <hr class="my-4" />
                <div class="row mb-4">
                    <div class="col-md-6">             
                        <div class="form-group">
                            <label for="consent">동의하고 가입하기 </label>
                            <input type="checkbox" id="consent" name="consent" checked="checked"/>
                        </div>
                        
                       </div>
                       <div class="col-md-6">
                           <p class="mb-2">결제 동의사항</p>
                           <p class="small text-muted mb-2">위 상품의 구매조건 확인 및 결제진행 동의</p>
                      
                       </div>
                   </div> 
                  
         
           </div>
       </div>
   </div>
</div>
<!-- onclick="sb(card1.value,card2.value,card3.value,card4.value);" -->
        <!-- 결제 부분-->
        <div class=" col-md-6 ">
         <!-- 제출버튼 -->
         <input type="button"   value="결제하기" id="submitChk" <a class="btn btn-primary btn-block" >
                <svg  width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card mr-2">
                   
                   <!-- 안에 카드그림 -->
                    <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                    <line x1="1" y1="10" x2="23" y2="10"></line>
                </svg></a>>

        </div>
        </div>
    </div>
</div>
</div>
</div>
</form>

</body>
</html>