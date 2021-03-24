<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage/listSch 페이지</title>
</head>
<body>
<h2>재고관리</h2>
<table border="" width="100%">
	<tr>
		<td>상품코드</td>
		<td>상품명</td>
		<td>카테고리</td>
		<td>세부카테고리</td>
		<td>판매가격</td>
		<td>재고</td>
		<td>최종수정일</td>
	</tr>
	<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.p_code }</td>
		<td><a href="ioModifyForm?p_code=${vo.p_code }&p_amount=${vo.p_amount }">${vo.p_name }</a></td>
		<td>${vo.p_cate }</td>
		<td>${vo.p_cate_d }</td>
		<td>${vo.p_price }</td>
		<td>${vo.p_amount }</td>
		<td><fmt:formatDate value="${vo.p_mdate }" pattern="yy-MM-dd HH:mm"/></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="7" align="right">
			<a href="iList"><input type="button" value="목록으로"/></a>
			<a href="/admin/storage/ioList"><input type="button" value="수정내역"/></a>
			
		</td>
	</tr>
</table>

</body>
</html>