<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice/list 페이지</title>
</head>
<body>
<h2>공지사항</h2>
<table border="" width="100%">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>조회수</td>
		<td>작성일</td>
	</tr>
	<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.n_code }</td>
		<td><a href="detail?n_code=${vo.n_code }">${vo.n_title }</a></td>
		<td>${vo.n_name }</td>
		<td>${vo.n_cnt }</td>
		<td><fmt:formatDate value="${vo.n_regdate }" pattern="yy-MM-dd HH:mm"/></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5" align="center">
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
		<td colspan="5" align="right">
			<form action="/admin/notice/listSch?n_title=${n_title }">
				<input name="n_title"/><input type="submit" value="검색">
			<a href="insertForm"><input type="button" value="등록"/></a>
			</form>
		</td>
	</tr>
</table>

</body>
</html>