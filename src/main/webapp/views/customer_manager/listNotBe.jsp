
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


	<h2> ** 비활성 검색결과** </h2>

		<table border="" id="manager_table" class="table table-bordered" >
		
			
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
		<td>${no.index }</td>
		<td><a href="customerDetail?no=${vo.no }">${vo.id }</a></td>
		<td>${vo.name }</td>
		<td>${vo.pw }</td>
		<td>${vo.mail}</td>
		<td>${vo.tel }</td>
		<td>${vo.grade}</td>
		<td>
		<a href="customerDeleteChk?no=${vo.no}"><input type="submit" name="${vo.no }" value="삭제" class="btn btn-sm btn-secondary" /></a>
		</td>
	</tr>
	</c:forEach>
	<tr>
					<td  colspan="8" align="right">
						
				<a href="customerList"><input type="button" value="리스트로"/></a>			
					</td>
			</tr>

		</table>	

