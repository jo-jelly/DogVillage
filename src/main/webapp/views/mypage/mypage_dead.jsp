<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/배송조회</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>

</head>
<script type="text/javascript">



	$(document).ready(function(){
		//상품명체크후에는 readonly로 바껴야함 그리고 상품명체크후 체크성공시엔 disabled가 해제되게하면됨
 	
		
		$("#sub1").prop('disabled', true); // 전체선택하기
		$("#exampleCheck1").change(function(){
			 if($("#exampleCheck1").is(":checked")){
				$("#sub1").prop('disabled', false);
				 
		        }else{
		        	$("#sub1").prop('disabled', true);
		        }
		})
		$("#sub1").click(function(){
			frm.submit()
		})
	})
</script>
<style>

aside{

	width:200px;
	height:1000px;
	float: left;
	margin: 30px;
	padding:5px;
	margin-top: 65px;

}
	
aside > div{
	width:200px;
	height: 100%;
} 

section{
	width:670px;
	float: left;
	margin: 0px;
}

article{
	width:100%;
	margin: 20px;
	padding:5px;
	
	border 1px solid black;
}

article > h1 {
	text-align: center;
}


hr {
	margin-top: 10px;
	margin-bottom: 10px;
}

#first_hr {
	margin-top: 30px;
}

article > div {
	height:100%;
	border:1px solid black;
	padding:20px;
}

.list-group {
	margin-top: 80px;
}

.list-group > li{
	width:200px;
	height:50px;

}

.btn-group {
	height:50px;
	
}

.a_detail{
	float:right;
	margin-bottom: 100px;
}

#group1 {
	background-color: #F5F5F5;
}


</style>

<body>

 <aside>
	<div class="list-group">
	  <a href="mypage_order" class="list-group-item list-group-item-action" id="group1">
	  <%= session.getAttribute("id")%>님<br>
	  반갑습니다!
	  </a>
	  <a href="mypage_order" class="list-group-item list-group-item-action">주문/배송 조회</a>
	  <a href="../cart/list" class="list-group-item list-group-item-action">장바구니</a>
	  <a href="mypage_infor" class="list-group-item list-group-item-action">회원정보 수정</a>	
	  <a href="mypage_dead?no=${vo.no }" class="list-group-item list-group-item-action">회원탈퇴</a>
	</div>
</aside>

<section>
	<article>
			<h4>회원탈퇴</h4>

			<hr id="first_hr"/>
	</article>

	<!-- 회원탈퇴양식 -->
<c:forEach items="${data }" var="vo">
<form action="/projectMenu/mypage/mypage_deadChk?no=${vo.no }" name="frm" id="frm" method="post">

<article>
	<br>
	<div>
	<h4>회원탈퇴 안내</h4></br>
	
		<p>고객님께서 회원 탈퇴를 원하신다니 저희 도그마을의 서비스가 많이 부족하고 미흡했나 봅니다.</br>
				불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.</br>
				회원탈퇴 시 도그마을 서비스 이용이 불가합니다.</br>
				거래정보가 있는 경우, 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 계약 또는 청약철회에 관한 기록, 대금결제 및 재화 등의 공급에 관한 기록은 5년동안 보존됩니다.</br>
				회원탈퇴 후 등록하신 1:1문의 및 후기는 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없어 편집 및 삭제처리가 원천적으로 불가능 합니다.</br>
				이미 결제가 완료된 건은 탈퇴로 취소되지 않습니다.
		</p>
		</br>
		
		<!-- 
		비밀번호 :
		<input type="password" name="passwd" id="passwd"/><br>
		비밀번호 재입력 :
		<input type="password" name="passwdCheck" id="passwdCheck"/>
		 -->
		
		  <div class="form-group form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1">
		    <label class="form-check-label" for="exampleCheck1">회원탈퇴 시 유의사항 안내를 확인하였으며 이에 동의합니다.</label>
		  </div>
		  
		<input type="button" value="회원탈퇴" id="sub1"/>	
	</div>
</article>
</form>
</c:forEach>

</section>
</body>

</html>