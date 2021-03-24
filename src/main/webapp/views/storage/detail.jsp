<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage/detail 페이지</title>
</head>
<body>
<c:set var="vo" value="${data }"></c:set>
<input type="hidden" name="p_code" value="${vo.p_code }">
	<table border="" width="1000px">
		<tr>
			<td width="30%">상품코드</td>
			<td>${vo.p_code }</td>
		</tr>
		<tr>
			<td>상품명</td>
			<td>${vo.p_name }</td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td>${vo.p_cate }</td>
		</tr>
		<tr>
			<td>세부카테고리</td>
			<td>${vo.p_cate_d }</td>
		</tr>
		<tr>
			<td>상품가격</td>
			<td>${vo.p_price }</td>
		</tr>
		<tr>
			<td>재고</td>
			<td>${vo.p_amount }</td>
		</tr>
		<tr>
			<td>상품정보</td>
			<td>${vo.p_contentBr }</td>
		</tr>
		<tr>
			<td>등록일</td>
			<td><fmt:formatDate value="${vo.p_regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		<tr>
			<td>최종수정일</td>
			<td><fmt:formatDate value="${vo.p_mdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		<tr>
			<td>상품 사진</td>
			<td><img src="/img/${vo.p_image }" alt="" width="700"/></td>
		</tr>
		<tr>
			<td>상품 내용 사진</td>
			<td><img src="/img//${vo.p_image_d }" alt="" width="700"/></td>
		</tr>
		<tr>
			<td>상품 메인페이지용 사진</td>
			<td><img src="/img/${vo.p_image_m }" alt="" width="700"/></td>
		</tr>

		<tr>
			<td colspan="10" align="right">
				<a href="/admin/storage/modifyForm?p_code=${vo.p_code }">수정</a> 
				<a href="/admin/storage/deleteChk?p_code=${vo.p_code }">삭제</a> 
				<a href="/admin/storage/list">목록으로</a>
			</td>
		</tr>
	</table>

</body>
</html>