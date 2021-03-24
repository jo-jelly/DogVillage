<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tms/list 페이지</title>
<style>
.tms_T{
	width : 1000px;
	display: block;
 	overflow-x: auto; 
 	text-align : center;
 	white-space: nowrap;
}
table{
 	
}

</style>
</head>
<body>
<h2>총주문목록</h2>
<form action="" method="post">
	<div class="tms_T">
	<table border="">
		<tr>
			<td>주문번호</td>
			<td>구매자ID</td>
			<td>주문일자</td>
			<td>배송일자</td>
			<td>상태</td>
			<td>수취인명</td>
			<td>수취인연락처</td>
			<td>배송지</td>
			<td>상세주소</td>
			<td>상품명</td>
			<td>수량</td>
			<td>총금액</td>
			<td>결제수단</td>
			<td>배송메세지</td>
			<td>송장번호</td>
			<td>배송비</td>
		</tr>
<c:set var="vo" value="${data }"></c:set>
		<tr>
			<td>${vo.t_no }</td>
			<td>${vo.t_pid }</td>
			<td><fmt:formatDate value="${vo.t_bdate }" pattern="yy-MM-dd HH:mm"/></td>
			<td><fmt:formatDate value="${vo.t_date }" pattern="yy-MM-dd HH:mm"/></td>
			<td>${vo.t_status }</td>
			<td>${vo.t_recipient }</td>
			<td>${vo.t_r_phone }</td>
			<td>${vo.t_r_zipcode }</td>
			<td>${vo.t_r_adress }</td>
			<td>${vo.t_pname }</td>
			<td>${vo.t_amount }</td>
			<td>${vo.t_totalprice }</td>
			<td>${vo.t_payment }</td>
			<td>${vo.t_msg }</td>
			<td>${vo.t_invoicen }</td>
			<td>${vo.t_fee }</td>
		</tr>
	</table>
	</div>
</form>
<div style="float:right;">
	<a href="/admin/tms/list"><input type="button" value="뒤로"/></a>
</div>
</body>
</html>