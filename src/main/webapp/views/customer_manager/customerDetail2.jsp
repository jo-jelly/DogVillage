<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<title>customer_manager/customeDetail 페이지</title>
<c:set var="vo" value="${data }"/>
<style>
.manager_table{
 	text-align : center;
 	width:100%;

}
</style>

	<table border="" id="manager_table">
		<tr >
			<th>번호</th>
			<td>${vo.no }</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${vo.id }</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${vo.name }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${vo.mail}</td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td>${vo.pw }</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${vo.tel }</td>
		</tr>
		<tr>
			<th>우편번호</th>
			<td>${vo.zipcode }</td>
		</tr>
		<tr>
			<th>상세주소</th>
			<td>${vo.address }</td>
		</tr>
		<tr>
			<th>반려견 사이즈</th>
			<td>${vo.dog_size }</td>
		</tr>
		<tr>
			<th>반려견 나이</th>
			<td>${vo.dog_age }</td>
		</tr>
		<tr>
			<th>등급</th>
			<td>${vo.grade }</td>
		</tr>

		<tr>
			<td colspan="2" align="right"><a
				href="customerModifyForm?no=${vo.no}">수정</a> 
				<a href="customerList">목록으로</a>
			</td>
		</tr>
	</table>

</body>
</html>