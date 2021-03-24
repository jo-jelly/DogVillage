<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(document).ready(function(){

		$("#submitChk").click(function(){
			
			if( !/^[0-9]{1,7}$/.test( $("#p_amount").val() )){
				alert("재고입력 에러")
				return
			}
			
			if( !/[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{1,90}$/.test( $("#p_content").val() )){
				alert("변동사항 입력 에러 \n 사용가능특수문자(!@#$%^&*.)\n 최대 90자까지 입력가능합니다.")
				return
			}
			
			alert("작성완료")
			frm.submit()
		})
	})
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage/detail 페이지</title>
</head>
<body>
<c:set var="vo" value="${data }"></c:set>
<form action="/admin/storage/ioModifyReg?p_code=${vo.p_code }&io_code=${vo.p_code }" method="post" enctype="multipart/form-data" name="frm">
<input type="hidden" name="p_code" value="${vo.p_code }">
<input type="hidden" name="p_name" value="${vo.p_name }">
<input type="hidden" name="io_before_amount" value="<%=request.getParameter("p_amount") %>">

	<table border="" width="100%">
		<tr>
			<td>상품명</td>
			<td>${vo.p_name }</td>
		</tr>
		<tr>
			<td>상품수량</td>
			<td><input type="text" name="p_amount" value="${vo.p_amount }" id="p_amount" /></td>
		</tr>
		<tr>
			<td>변동사유</td>
			<td><input type="text" name="p_content" id="p_content"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="수정" id="submitChk"/>
				<input type="reset" value="초기화" />
				<a href="/admin/storage/iList">목록으로</a>
			</td>
		</tr>
	</table>
</form>

</body>
</html>