<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice/listSch 페이지</title>
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
		<td colspan="5" align="right">
		
			<a href="adminList"><input type="button" value="뒤로"/></a>
			<a href="insertForm"><input type="button" value="등록"/></a>
		</td>
	</tr>
</table>

</body>
</html>