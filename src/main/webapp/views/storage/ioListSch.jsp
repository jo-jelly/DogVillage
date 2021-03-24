<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage/list 페이지</title>
</head>
<body>
<table border="" width="100%">
	<tr>
		<td>상품코드</td>
		<td>상품명</td>
		<td>변경전고량</td>
		<td>변경후재고량</td>
		<td>변동사유</td>
		<td>수정일</td>
	</tr>
	<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.io_code }</td>
		<td>${vo.io_name }</td>
		<td>${vo.io_before_amount }</td>
		<td>${vo.io_amount }</td>
		<td>${vo.io_content }</td>
		<td><fmt:formatDate value="${vo.io_regdate }" pattern="yy-MM-dd HH:mm"/></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="7" align="right">
			<a href="ioList"><input type="button" value="리스트로"/></a>
		</td>
	</tr>
</table>

</body>
</html>