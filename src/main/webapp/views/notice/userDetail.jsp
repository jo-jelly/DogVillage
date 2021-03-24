<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice/detail 페이지</title>
</head>
<body>
<c:set var="vo" value="${data }"></c:set>
<input type="hidden" name="n_code" value="${vo.n_code }">
	<table border="" width="1000px">
		<tr>
			<td width="15%">번호</td>
			<td>${vo.n_code }</td>
		</tr>
		<tr>
			<td>공지제목</td>
			<td>${vo.n_title }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${vo.n_name }</td>
		</tr>
		<tr>
			<td colspan="2">내용</td>
		</tr>
		<tr>
			<td colspan="2" height="400px">${vo.n_contentBr }</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${vo.n_cnt }</td>
		</tr>
		<tr>
			<td>등록일</td>
			<td><fmt:formatDate value="${vo.n_regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>

		<tr>
			<td colspan="6" align="right">
				<a href="/projectMenu/notice/userList">목록으로</a>
			</td>
		</tr>
	</table>

</body>
</html>