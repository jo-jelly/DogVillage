<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/배송조회</title>
<link rel="stylesheet"
	href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<style>
aside {
	width: 200px;
	height: 1000px;
	float: left;
	margin: 30px;
	padding: 5px;
	margin-top: 65px;
}

aside>div {
	width: 200px;
	height: 100%;
}

section { `
	width: 670px;
	float: left;
	margin: 0px;
}

article {
	width: 100%;
	margin: 20px;
	padding: 5px;
	border
	1px
	solid
	black;
}

article>h1 {
	text-align: center;
}

hr {
	margin-top: 10px;
	margin-bottom: 10px;
}

#first_hr {
	margin-top: 30px;
}

article>div {
	height: 100%;
	border: 1px solid black;
	padding: 20px;
}

.list-group {
	margin-top: 80px;
}

.list-group>li {
	width: 200px;
	height: 50px;
}

.btn-group {
	height: 50px;
}

.a_detail {
	float: right;
	margin-bottom: 100px;
}

#group1 {
	background-color: #F5F5F5;
}

.mm {
	float: right;
}
</style>



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
    //상품명체크후에는 readonly로 바껴야함 그리고 상품명체크후 체크성공시엔 disabled가 해제되게하면됨

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
        if($("#pw").val() != "" && $("#pw").val() != null){
             if( !/[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{4,15}$/.test( $("#pw").val() )){
                alert("비밀번호 입력 에러 \n 사용가능특수문자(!@#$%^&*.)\n 최소4~15자까지 입력")
                   $("#pw").focus();
                return
               }
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

	<aside>
		<div class="list-group">
			<a href="mypage_order" class="list-group-item list-group-item-action"
				id="group1"> <%= session.getAttribute("id")%>님<br> 반갑습니다!
			</a> <a href="mypage_order"
				class="list-group-item list-group-item-action">주문/배송 조회</a> <a
				href="../cart/list" class="list-group-item list-group-item-action">장바구니</a>
			<a href="mypage_infor" class="list-group-item list-group-item-action">회원정보
				수정</a> <a href="mypage_qna"
				class="list-group-item list-group-item-action">1:1문의</a> <a
				href="mypage_dead" class="list-group-item list-group-item-action">회원탈퇴</a>
		</div>
	</aside>

	<section>
		<article>

			<h4>개인정보 수정</h4>

			<hr id="first_hr" />
		</article>

		<article>
			<br>


			<c:set var="vo" value="${data }"></c:set>
			<form action="/projectMenu/mypage/mypage_inforReg?no=${no }"
				method="post" enctype="multipart/form-data" name="frm">

				<input type="hidden" name="no" value="${vo.no }">
				<table border="" id="manager_table" class="table table-bordered">

					<tr>
						<th>아이디 (수정불가)</th>
						<td>${vo.id}</td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" id="name"
							value="${vo.name }" style="width: 300px" /></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="mail" id="mail"
							value="${vo.mail }" style="width: 300px" /></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="text" name="pw" id="pw" value="${vo.pw }"
							style="width: 300px" /></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="tel" id="tel" value="${vo.tel}"
							style="width: 300px" /></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="zipcode" id="zipcode"
							value="${vo.zipcode}" style="width: 300px" /> <input
							type="button" value="우편번호찾기" onclick="exePostCode();"
							class="btn btn-sm btn-secondary"></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input type="text" name="address" id="address"
							value="${vo.address }" style="width: 300px" /></td>
					</tr>
					<tr>
						<th>반려견 사이즈</th>
						<td><select name=dog_size style="width: 300px">


								<option value="소형견"
									<c:if test="${vo.dog_size=='소형견' }">selected</c:if>>소형견</option>
								<option value="중형견"
									<c:if test="${vo.dog_size=='중형견' }">selected</c:if>>중형견</option>
								<option value="대형견"
									<c:if test="${vo.dog_size=='대형견' }">selected</c:if>>대형견</option>

						</select></td>
					</tr>
					<tr>
						<th>반려견 나이</th>
						<!-- db에 저장되어 있는 데이터값과 c:if문에서 일치하면 체크해준다. -->
						<td class="form-check form-check-inline">
							<%-- <input type="radio" name="dog_age" value="${vo.dog_age }" class="form-check-input"/>${vo.dog_age } --%>
							<input type="radio" name="dog_age" value="퍼피"
							<c:if test="${vo.dog_age=='퍼피' }">checked</c:if>
							class="form-check-input" />퍼피 <input type="radio" name="dog_age"
							value="성견" <c:if test="${vo.dog_age=='성견' }">checked</c:if>
							class="form-check-input" />성견 <input type="radio" name="dog_age"
							value="노견" <c:if test="${vo.dog_age=='노견' }">checked</c:if>
							class="form-check-input" />노견
						</td>
					</tr>

					<tr>
						<td colspan="2" align="right"><input type="button" value="수정"
							id="submitChk" class="btn btn-sm btn-primary" /> <!-- <input type="reset" value="초기화" id="reset" class="btn btn-sm btn-primary"/> -->
							<a href="/projectMenu/mypage/mypage_infor">돌아가기</a></td>
					</tr>
				</table>
			</form>
		</article>




	</section>






</body>
</html>