
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>관리자 - 회원관리</title>
<style>
#manager_table{
 	text-align : center;
 	width: 80%;

}

</style>


	<h2> **  - 전체 회원 관리 ** </h2>

<table border="" id="manager_table" class="table table-bordered">

	<tr>
		<td >
			<form action="/admin/customer_manager/listBe?grade=${grade}">
				<input type="submit" value="활성" name="grade"
					class="btn btn-sm btn-primary">
			</form>
		</td>
		<td>
			<form action="/admin/customer_manager/listNotBe?grade=${grade}">
				<input type="submit" value="비활성" name="grade"
					class="btn btn-sm btn-primary">
			</form>
		</td>
		<td>
			<form action="/admin/customer_manager/listAdmin?grade=${grade}">
				<input type="submit" value="관리자" name="grade"
					class="btn btn-sm btn-primary">
			</form>
		</td>
		<td>
			<form action="/admin/customer_manager/listSch?name=${name }">
				<input name="name" /><input type="submit" value="검색"
					placeholder="이름으로 검색">
			</form>
		</td>
	</tr>
	
	</table>
	<table border="" id="manager_table" class="table table-bordered">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>비밀번호</th>
		<th>이메일</th>
		<th>휴대폰</th>
		<th>등급</th>
		<th>비고</th>

	</tr>
	<c:forEach items="${data }" varStatus="no" var="vo">
		<tr>
			<th>${no.index }</th>
			<td><a href="customerDetail?no=${vo.no }">${vo.id }</a></td>
			<td>${vo.name }</td>
			<td>${vo.pw }</td>
			<td>${vo.mail}</td>
			<td>${vo.tel }</td>
			<td>${vo.grade}</td>
			<td><a href="customerDeleteChk?no=${vo.no}"><input
					type="submit" name="${vo.no }" value="삭제"
					class="btn btn-sm btn-secondary" /></a></td>

			<%-- 	<input type="submit" name="${vo.no }" value="삭제"/> --%>
		</tr>
	</c:forEach>

	<tr>
		<td colspan="8" align="center"><c:if test="${startPage>1 }">
				<a href="?nowPage=${startPage-1 }"> < </a>
			</c:if> <c:forEach begin="${startPage }" end="${endPage}" step="1" var="i">
				<c:choose>
					<c:when test="${nowPage==i }">
						<a href="?nowPage=${i }">[${i }]</a>
					</c:when>
					<c:otherwise>
						<a href="?nowPage=${i }">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach> <c:if test="${endPage<lastPage }">
				<a href="?nowPage=${endPage+1 }"> > </a>
			</c:if></td>
	</tr>



	<tr>
		<td colspan="8" align="right"><a href="adminInsertForm">관리자추가</a>
			&nbsp;</td>
	</tr>

</table>

