<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">



	$(document).ready(function(){

		document.addEventListener('keydown', function(event) {
			  if (event.keyCode === 13) {
			    event.preventDefault();
			  };
			}, true);
		
		$("#schChk").click(function(){
			frm.action=""
			if( !/^[0-9]{1,7}$/.test( $("#t_no").val() )){
				
				alert("주문번호 입력에러 숫자만 입력가능합니다.")
				return
			}else{
				frm.action="/admin/tms/listSch?t_no=${t_no }"
				frm.submit()
			}
		})
	})
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tms/list 페이지</title>
<style>
.tms_T{
	width : 1000px;
	display: block;
 	overflow-x: auto; 
 	text-align : center;
 	white-space: nowrap;
}
table{
 	
}

</style>
</head>
<body>
<h2>총주문목록</h2>
<form action="" method="post">
	<div class="tms_T">
	<table border="">
		<tr>
			<td>주문번호</td>
			<td>구매자ID</td>
			<td>주문일자</td>
			<td>배송일자</td>
			<td>상태</td>
			<td>수취인명</td>
			<td>수취인연락처</td>
			<td>배송지</td>
			<td>상세주소</td>
			<td>상품명</td>
			<td>수량</td>
			<td>총금액</td>
			<td>결제수단</td>
			<td>배송메세지</td>
			<td>송장번호</td>
			<td>배송비</td>
		</tr>
		<c:forEach items="${data }" var="vo">
		<tr>
			<td>${vo.t_no }</td>
			<td>${vo.t_pid }</td>
			<td><fmt:formatDate value="${vo.t_bdate }" pattern="yy-MM-dd HH:mm"/></td>
			<td><fmt:formatDate value="${vo.t_date }" pattern="yy-MM-dd HH:mm"/></td>
			<td>${vo.t_status }</td>
			<td>${vo.t_recipient }</td>
			<td>${vo.t_r_phone }</td>
			<td>${vo.t_r_zipcode }</td>
			<td>${vo.t_r_adress }</td>
			<td>${vo.t_pname }</td>
			<td>${vo.t_amount }</td>
			<td>${vo.t_totalprice }</td>
			<td>${vo.t_payment }</td>
			<td>${vo.t_msg }</td>
			<td>${vo.t_invoicen }</td>
			<td>${vo.t_fee }</td>
		</tr>
		</c:forEach>
	</table>
	</div>
</form>
	
	<table>
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
	</table>
<div style="float:right;">
	<form  name="frm">
		<input name="t_no" id="t_no"/><input type="button" value="주문번호검색" id="schChk">
	</form>
</div>
</body>
</html>