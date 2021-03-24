<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문취소폼</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
</head></head>
<script>

	$(document).ready(function(){

		$("#sub1").prop('disabled', true); // 전체선택하기
		$("#exampleCheck1").change(function(){
			 if($("#exampleCheck1").is(":checked")){
				$("#sub1").prop('disabled', false);
				 
		        }else{
		        	$("#sub1").prop('disabled', true);
		        }
		})
		$("#sub1").click(function(){
			alert('주문취소가 완료되었습니다.')
			frm.submit()
		})
		
	})
</script>
<style>

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
	height:200px;
	border:1px solid black;
}

article > div > div {
	height:100px;
	margin:20px;
}





</style>

<body>
<c:set var="vo" value="${data }"></c:set>
<form action="/projectMenu/mypage/mypage_order_cancelReg?t_no=${vo.t_no }" method="post" enctype="multipart/form-data" name="frm">
<input type="hidden" name="t_status" value="${vo.t_status }"/>

<section>
	<!-- 주문취소 -->
	<article>
			<h4>주문취소</h4>
			<h6>맛있는 강아지 사료 상품의 주문을 취소합니다.</h6>

			<hr id="first_hr"/>
	</article>

	<!-- 환불정보 -->
	<article>
			<h4>환불정보</h4>

			<hr id="first_hr"/>
	</article>
	<!-- 환불데이터 -->
	<article>
			<div>
				결제금액:${vo.t_totalprice}원<br><br>
				총 환불금액:${vo.t_totalprice}원<br><br>
			</div>
	</article>
	
	<article>
		
		  <div class="form-group form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1">
		    <label class="form-check-label" for="exampleCheck1">주문취소 내역에 동의합니다.(전자상거래법 제8조 제2항)(필수)</label>
		  </div>
		  <button type="button" class="btn btn-primary" id="sub1">주문 취소하기</button>
		
	</article>
	
</section>

</form>
</body>
</html>	