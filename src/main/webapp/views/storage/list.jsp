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
<h2>물품관리</h2>
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
		<td><a href="detail?p_code=${vo.p_code }">${vo.p_name }</a></td>
		<td>${vo.p_cate }</td>
		<td>${vo.p_cate_d }</td>
		<td>${vo.p_price }</td>
		<td>${vo.p_amount }</td>
		<td><fmt:formatDate value="${vo.p_mdate }" pattern="yy-MM-dd HH:mm"/></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="7" align="center">
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
		<td colspan="7" align="right">
			<form action="/admin/storage/listSch?p_name=${p_name }">
				<input name="p_name"/><input type="submit" value="검색">
			<a href="insertForm"><input type="button" value="등록"/></a>
			</form>
		</td>
	</tr>
</table>

</body>
</html>