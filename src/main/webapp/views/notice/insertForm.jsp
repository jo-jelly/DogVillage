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

<form action="/admin/notice/insertReg" method="post" enctype="multipart/form-data" name="frm">
	<table border="" width="100%">
		<tr>
			<td>공지제목</td>
			<td>
				<input type="text" name="n_title" id="n_title"/>
			</td>
		</tr>
		<tr>
			<td>공지내용</td>
			<td><textarea name="n_content" cols="50" rows="5" id="n_content" style="overflow: scroll;"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="작성" id="submitChk"  />
				<input type="reset" value="초기화" id="reset"  />
				<a href="/admin/notice/adminList">목록으로</a>
			</td>
		</tr>
	</table>
</form>