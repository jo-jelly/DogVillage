<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
  
<script type="text/javascript">
	$(document).ready(function(){
 	
		$("#submitChk").click(function(){
		     

			if(!/^[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{1,33}$/.test( $("#n_title").val() ) ){
				alert("상품명 에러")
				return
			}

			if($("#n_content").val() != "" && $("#n_content").val() != null){
				if( !/[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{1,90}$/.test( $("#p_content").val() )){
					alert("상품정보 입력 에러 \n 사용가능특수문자(!@#$%^&*.)\n 최대 90자까지 입력가능합니다.")
					return
				}
			}
			alert("작성완료")
			frm.submit()
		})
	})
</script>
<c:set var="vo" value="${data }"></c:set>
<form action="/admin/notice/modifyReg?n_code=${vo.n_code }" method="post" enctype="multipart/form-data" name="frm">
<input type="hidden" name="n_code" value="${vo.n_code }">
	<table border="" width="100%">
		<tr>
			<td>공지제목</td>
			<td>
				<input type="text" name="n_title" id="n_title" value="${vo.n_title }"/>
			</td>
		</tr>
		<tr>
			<td>공지내용</td>
			<td><textarea name="n_content" cols="50" rows="5" id="n_content" style="overflow: scroll;" >${vo.n_content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="수정" id="submitChk"/>
				<input type="reset" value="초기화" />
				<a href="/admin/notice/detail?n_code=${vo.n_code }">뒤로</a>
			</td>
		</tr>
	</table>
</form>