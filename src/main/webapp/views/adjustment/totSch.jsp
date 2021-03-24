<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adj_tot</title>
</head>
<body>
<table border="" width="100%">


	<tr>
		<td>상품코드</td>
		<td>상품명</td>
		<td>판매가격</td>
		<td>카테고리</td>
		<td>세부카테고리</td>
		<td>판매수량</td>
		<td>총금액</td>
		<td>결산일</td>
		<td>구매자ID</td>
	</tr>
	<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.adj_code }</td>
		<td>${vo.adj_name }</td>
		<td>${vo.adj_price }</td>
		<td>${vo.adj_cate }</td>
		<td>${vo.adj_cate_d }</td>
		<td>${vo.adj_amount }</td>
		<td>${vo.adj_totalprice }</td>
		<td><fmt:formatDate value="${vo.adj_sdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		<td>${vo.adj_pid }</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="9" align="right">
			<a href="/admin/adjustment/tot" title="Link"><input type="button" value="전체목록"/></a>
		</td>
	</tr>

</table>
</body>
</html>