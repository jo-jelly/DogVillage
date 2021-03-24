<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>onDelivery</title>
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
<h2>배송중</h2>

<div class="tms_T">
<table border="">
	<tr>
		<td>주문번호</td>
		<td>송장발급</td>
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
	<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.t_no }</td>
		<td>
		<form action="/admin/tms/delivery?t_no=${vo.t_no }">
				<input type="hidden" name="t_pid" value="${vo.t_pid }"/>
				<input type="hidden" name="t_pname" value="${vo.t_pname }"/>
				<input type="hidden" name="t_no" value="${vo.t_no }"/>
			
				<input type="submit" value="배송완료"/>
		</form>
		</td>
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
	</c:forEach>
</table>
</div>

</body>
</html>