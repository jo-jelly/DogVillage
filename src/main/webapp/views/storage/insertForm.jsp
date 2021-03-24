<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<script>


function fn_nameChk(){
//	$("#nameChk").click(function(){
		$.ajax({
		       url: '/aajjj/storage/insertChk',
		       type: 'POST',
		       dataType: 'json', //서버로부터 내가 받는 데이터의 타입
		       data: {"name" : $("#p_name").val()},
		       success: function(data){
		          console.log(data)
		            if(data.rrr == 0){
		            console.log("중복된 상품명 없음");
		            alert("중복된 상품명이 없음.");
		            $("#submitChk").prop('disabled', false);
		            $("#p_name").prop('readonly', true);
		            }else if(data.rrr == 1){
		               console.log("상품명 있음");
		               alert("중복된 상품명이 존재합니다.");
		               $("#submitChk").prop('disabled', true);
		           	 $("#p_name").prop('readonly', false);
		            }else{
		               alert("상품명이 비어있습니다.");
		               $("#submitChk").prop('disabled', true);
		           	 $("#p_name").prop('readonly', false);

			         }
		       },
		       error: function (){        
		                         
		       }
		     });

}



</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#nameChange").click(function(){
		 $("#p_name").prop('readonly', false);
		 $("#submitChk").prop('disabled', true);
		 alert("이름변경")
	}) 
})
</script>
  
<script type="text/javascript">



	$(document).ready(function(){
		//상품명체크후에는 readonly로 바껴야함 그리고 상품명체크후 체크성공시엔 disabled가 해제되게하면됨
 	
		
		$("#submitChk").prop('disabled', true); // 전체선택하기
		$("#submitChk").click(function(){
		     
			if(/[/,\\]/.test( $("#p_name").val() )){
				alert("상품명 에러")
				return
			}
			if(!/^[ㄱ-ㅎ가-힣0-9a-zA-Z_!@#$%^&*.\s]{1,33}$/.test( $("#p_name").val() ) ){
				alert("상품명 에러")
				return
			}

			if($("#p_imageFF").val() != "" && $("#p_imageFF").val() != null){
				var img = document.getElementById('p_imageFF').value; 
				img = img.slice(img.indexOf(".") + 1).toLowerCase();
				if(img != "jpg" && img != "png" &&  img != "gif" &&  img != "bmp" &&  img != "jpeg"){
					alert("이미지파일 에러 \n확장자명은 jpg, jpeg, png, gif, bmp만 가능합니다.");
					return
				}
			}
			if($("#p_imageFF_d").val() != "" && $("#p_imageFF_d").val() != null){
				var img = document.getElementById('p_imageFF_d').value; 
				img = img.slice(img.indexOf(".") + 1).toLowerCase();
				if(img != "jpg" && img != "png" &&  img != "gif" &&  img != "bmp" &&  img != "jpeg"){
					alert("상세 이미지파일 에러 \n확장자명은 jpg, jpeg, png, gif, bmp만 가능합니다.");
					return
				}
			}
			if($("#p_imageFF_d").val() != "" && $("#p_imageFF_d").val() != null){
				var img = document.getElementById('p_imageFF_d').value; 
				img = img.slice(img.indexOf(".") + 1).toLowerCase();
				if(img != "jpg" && img != "png" &&  img != "gif" &&  img != "bmp" &&  img != "jpeg"){
					alert("메인 페이지용 이미지파일 에러 \n확장자명은 jpg, jpeg, png, gif, bmp만 가능합니다.");
					return
				}
			}
			if( !/^[가-힣/]{1,20}$/.test( $("#p_cate").val() )){
				alert("카테고리 에러")
				return
			}
			if( !/^[가-힣/]{1,20}$/.test( $("#p_cate_d").val() )){
				alert("상세카테고리 에러")
				return
			}
			
			if( !/^[0-9]{1,7}$/.test( $("#p_price").val() )){
				alert("가격입력 에러")
				return
			}
			
			if( !/^[0-9]{1,7}$/.test( $("#p_amount").val() )){
				alert("재고입력 에러")
				return
			}
			if($("#p_content").val() != "" && $("#p_content").val() != null){
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

<form action="/admin/storage/insertReg" method="post" enctype="multipart/form-data" name="frm">
	<table border="" width="100%">
		<tr>
			<td>상품명</td>
			<td>
				<input type="text" name="p_name" id="p_name"/>
				<button class="nameChk" type="button" id="nameChk" onclick="fn_nameChk();">중복확인</button>
				<input type="button" value="상품명변경" id="nameChange"  />
			
			</td>
		</tr>
		<tr>
			<td>상품 사진</td>
			<td><input type="file" name="p_imageFF" id="p_imageFF"/></td>
		</tr>
		<tr>
			<td>상품 내용 사진</td>
			<td><input type="file" name="p_imageFF_d" id="p_imageFF_d"/></td>
		</tr>
		<tr>
			<td>상품 메인페이지용 사진</td>
			<td><input type="file" name="p_imageFF_m" id="p_imageFF_m"/></td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td><input type="text" name="p_cate" id="p_cate"/></td>
		</tr>
		<tr>
			<td>세부카테고리</td>
			<td><input type="text" name="p_cate_d" id="p_cate_d"/></td>
		</tr>
		<tr>
			<td>상품가격</td>
			<td><input type="text" name="p_price" id="p_price"/></td>
		</tr>
		<tr>
			<td>재고</td>
			<td><input type="text" name="p_amount" id="p_amount"/></td>
		</tr>
		<tr>
			<td>상품정보</td>
			<td><textarea name="p_content" cols="50" rows="5" id="p_content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="작성" id="submitChk"  />
				<input type="reset" value="초기화" id="reset"  />
				<a href="/admin/storage/list">목록으로</a>
			</td>
		</tr>
	</table>
</form>