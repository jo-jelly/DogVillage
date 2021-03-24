
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>관리자 - 회원관리</title>
<style>
.manager_table{
 	text-align : center;
 	width: 100%;

}

</style>


	<h2> ** 관리자 - 전체 회원 관리 ** </h2>

		<table border="" id="manager_table" >
		
			<tr>
		<td colspan="7" align="right">
			<form action="/admin/customer_manager/listSch?name=${name }">
				<input name="name"/><input type="submit" value="검색">
			</form>
		</td>
		</tr>
	<tr style="background-color: #ffc">
		<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>휴대폰</th>
				<th>비고</th>

	</tr>
	<c:forEach items="${data }" varStatus="no" var="vo">
	<tr>
		<td>${no.index }</td>
		<td><a href="customerDetail?no=${vo.no }">${vo.id }</a></td>
		<td>${vo.name }</td>
		<td>${vo.pw }</td>
		<td>${vo.mail}</td>
		<td>${vo.tel }</td>
		<td>
			<a href="customerDeleteChk?no=${vo.no}"><input type="submit" name="${vo.no }" value="삭제"/></a>
		</td>
	
	<%-- 	<input type="submit" name="${vo.no }" value="삭제"/> --%>
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
					<td  colspan="7" align="right">
						
					<a href="customerInsertForm" >회원추가</a>	
						&nbsp; 
				
					</td>
			</tr>

		</table>	

