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
		<td colspan="6" align="center">
			<c:if test="${startPage>1 }">
				<a href="?nowPage=${startPage-1 }"> < </a>
			</c:if>
			<c:forEach begin="${startPage }" end="${endPage}" step="1" var="i">
				<c:choose>
					<c:when test="${nowPage==i }">
					<a href="?nowPage=${i }">[${i }]</a>	
					</c:when>
					<c:otherwise>
						<a href="?nowPage=${i }">${i }</a>
					</c:otherwise>
				</c:choose>		
			</c:forEach>
			<c:if test="${endPage<lastPage }">
				<a href="?nowPage=${endPage+1 }"> > </a>
			</c:if>
		</td>
	</tr>
	
	<tr>
		<td colspan="6" align="right">
			<form action="/admin/storage/ioListSch?io_name=${io_name }">
				<input name="io_name"/><input type="submit" value="검색">
			</form>
		</td>
	</tr>
</table>

</body>
</html>