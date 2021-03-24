<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
<!-- <link rel="stylesheet" href="../bootstrap-4.5.3-dist/css/bootstrap.min.css"> -->
<!-- <script type="text/javascript" src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script> -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script>

 
function button_event1(){
	var check_count = document.getElementsByName("chk").length;
			
	if (confirm("정말 구매하시겠습니까??")){    //확인
	    var uuu = "../payment/payment_P?";

		$(".cBox").each(function(i,e){

			if($(this).is(':checked')){
				uuu+="c_code="+$(this).val()+"&"
			}
		})
		if($("input:checkbox[name=c_code]:checked").length==0){
			alert(" 구매할것을 선택해주세요")	
		    uuu = "../cart/list";
			}
		
			    location.href = uuu;
	}
}

 
function button_event2(){
	var check_count = document.getElementsByName("chk").length;
			
	if (confirm("정말 삭제하시겠습니까??")){    //확인
	    var uuu = "../cart/delete?";

		$(".cBox").each(function(i,e){

			if($(this).is(':checked')){
				uuu+="c_code="+$(this).val()+"&"
			}
		})
		if($("input:checkbox[name=c_code]:checked").length==0){
			alert(" 삭제할것을 선택해주세요")	
		    uuu = "../cart/list";
			}
		
			    location.href = uuu;
	}
}



function checkAll(){
      if( $("#allCheck").is(':checked') ){
        $("input[name=c_code]").prop("checked", true);
      }else{
        $("input[name=c_code]").prop("checked", false);
      }
}






function gogo1(){
     alert( "최대수량초과" );

 }
function gogo2(){
     alert( "최소수량입니다" );

 }




function keyq(test,danga,jaego){

	/* var danga =danga;// 갯수한개 가격
	//alert("danga"+danga);
	var jaego  = jaego; //재고량
	//alert("jaego"+jaego); */
	var inp  = parseInt(test.value); // 입력값
	//alert("inp"+inp);
	if(inp > jaego){
		alert("재고량을 초과하였습니다");
		$(test).parents(".tr").find(".money").html('0'); //머니클래스(총금액)에 0들어감.
		$(test).val('0'); //구매수량에 빈칸처리
	}else{
		$(test).parents(".tr").find(".money").html(danga*inp); //재고량 초과하면 않으면 다 곱한 금액이 보여주기들어감   
	}
	
}

/* 
function value_check() {
    var check_count = document.getElementsByName("(NAME명)").length;

    for (var i=0; i<check_count; i++) {
        if (document.getElementsByName("(NAME명)")[i].checked == true) {
            alert(document.getElementsByName("(NAME명)")[i].value);
        }
    }
}
 */

function cntChange(c_code, orders){
	 location.href="../cart/modify?c_code="+c_code+"&p_amount="+orders;
 }



</script>
<style>
.p_amount{width:100px}
</style>



</head>
<body>

<h1>장바구니</h1>

<form id="form1" name="form1" method="post" >
<table class="table table-striped"> <!-- 가독성좋아짐 -->
	<tr>
		<td>상품이름</td>
		<td>상품가격</td>
		<td width="200">구매수량</td>
 		<td>이미지</td>
		<td>
			<input type="checkbox" style="zoom:3.0" id="allCheck" name="allCheck" value="모두 체크" onclick="checkAll();" />
		</td>
		<td colspan="2">금액</td>
	</tr>
	
<c:choose>
    <c:when test="${cnt == 0}">
       <tr><td colspan="6"><h1>장바구니가 비었습니다.</h1><td></tr>
    </c:when>
	 <c:otherwise>
	 
	<c:forEach items="${data }" varStatus="no" var="vo" >
	
	
	<input type="hidden" value="${vo.p_amount }" class="aaa">
	<input type="hidden" value="${vo.p_price }" class="ppp"/>
		<tr class="tr">
			<td width="180"><a href="../product/detail?p_code=${vo.p_code }">${vo.p_name }</a></td>
			<td>${vo.p_price }</td>
			<td>
				<input style="width:50px;" type="number" name="p_amount" class="p_amount" value="${vo.orders }" readonly="readonly"/>개
				<c:choose>
					<c:when test="${vo.orders<vo.p_amount }">
						<button type="button" onclick="cntChange(${vo.c_code }, ${vo.orders+1 })"/><img src="/img/위.jpg" height="50" alt=""></button>
					</c:when>
					<c:otherwise>
						<button type="button" onclick="gogo1();"/><img src="/img/위.jpg" height="50" alt=""></button>
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${vo.orders>1 }">
						<button type="button" onclick="cntChange(${vo.c_code }, ${vo.orders-1 })"/><img src="/img/아래.jpg" height="50" alt=""></button>
					</c:when>
					<c:otherwise>
						<button type="button" onclick="gogo2();"/><img src="/img/아래.jpg" height="50" alt=""></button>
					</c:otherwise>
				</c:choose>
				
				
				 <br/>최대주문량:${vo.p_amount } 
			</td>

 			<td><img src="/img/${vo.p_image }" width="150" height="200" alt=""></td>
			<td class="custom-control custom-switch">
			    <input class="cBox" type="checkbox" style="zoom:3.0"  name="c_code" value="${vo.c_code }"> 
			</td>	
			
			<td><span class="money">${vo.money }</span> &nbsp; 원</td> 
			<td><a href="../cart/delete?c_code=${vo.c_code }">상품삭제</a>
			
</tr>
	 </c:forEach>
	 
</c:otherwise>
</c:choose>

</table>
<input type="button" value="상품구매" onclick="button_event1();"/> 
<input type="button" value="선택한 상품 삭제" onclick="button_event2();"/> 
</form>

</body>
</html>