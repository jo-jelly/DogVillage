<%@page import="team.login.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order/list</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
</head>

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
	height:290px;
	border:1px solid black;
}

article > div > div {
	height:150px;
	margin:20px;
}

.order_data{
	width:60%;
	height:90px;
	float:left;
}

.list-group {
	margin-top: 80px;
}

.list-group > li{
	width:200px;
	height:50px;

}

.a_detail{
	float:right;
	margin-bottom: 100px;
}

#group1 {
	background-color: #F5F5F5;
}

a:hover {
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
	  <a href="mypage_dead" class="list-group-item list-group-item-action">회원탈퇴</a>
	</div>
</aside>

<section>
	<article>

			<h4>주문/배송 조회</h4>
			
			<hr id="first_hr"/>
	</article>

	<!-- 주문 데이터 !-->
	<article>
			
			<c:forEach items="${data }" var="vo">
			<br>
		   		  <h6><fmt:formatDate value="${vo.t_bdate }" pattern="yy-MM-dd HH:mm"/></h6> 
			
			<div>
				<div>
					 	${vo.t_pid }님의 주문정보
						<a href="mypage_order_detail?t_no=${vo.t_no }" class="a_detail">상세</a>
						
						<c:if test="${vo.t_status == '신규'}">
						<a href="mypage_order_cancelForm?t_no=${vo.t_no }" class="a_detail">취소&nbsp;&nbsp;</a>
						</c:if>
					<hr/>
					
					<div class="order_data">
						<h6><br>
							상품명  : ${vo.t_pname }<br><br>
							주문번호 : ${vo.t_no }<br><br>
							상품수량 : ${vo.t_amount }<br><br>
							결제금액 : ${vo.t_totalprice}원<br><br>
							주문상태 : ${vo.t_status }<br><br>
						</h6>
					</div>
				</div>	
			</div>
			</c:forEach>
	
	</article>


</section>


</body>
</html>