<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script>


/* function ppp(){ 
    if(!document.frm1.p_amount.value){
    //폼의 엘리먼트중 name이 'p_amount'인 객체에 값이 입력되어 있지 않으면 실행

   alert("갯수를 입력하세요"); //메시지 표시
   //문제가 발생한 객체인 'p_amount'에 포커스를 설정=>쉽게 수정할 수 있도록 배려
	return false;
   }else
	   location.href='../login/loginMainForm'
    
} */
 function ppp(){ //로그인안하고 구매하거나 담기할떄

   alert("로그인을 해주세요"); //메시지 표시
	   location.href='../login/loginMainForm'

}
 function ppp3(add){ //로그인안하고 구매하거나 담기할떄

   alert("이미 장바구니에 있는 상품 입니다"); //메시지 표시
	   location.href='../product/detail?p_code='+add;

}



function ppp1(add,ppp,max){  //장바구니담기

/*     alert("주문량	:"+eval(ppp)+"재고량:"+eval(max)+"입력하세요"); //메시지 표시
 */
    if(!document.frm1.p_amount.value){

	    alert("갯수를 입력하세요"); //메시지 표시
		return false;

		//(if 0<ppp && ppp<888)
    }else if(0<eval(ppp) && eval(ppp)<=eval(max)){
	   location.href="../cart/insert?p_code="+add+"&p_amount="+ppp+"&max="+max;

	}else{
		alert("잘못된 수량입니다 다시 입력하세요"); //메시지 표시
		return false;	
	} 
}

function ppp2(add,ppp,max){  //구매하기
    if(!document.frm1.p_amount.value){

    alert("갯수를 입력하세요"); //메시지 표시
	return false;
	
   }else if(0<eval(ppp) && eval(ppp)<=eval(max)){
	   location.href="../payment/payment_Direct?p_code="+add+"&p_amount="+ppp;

	}else{
		alert("잘못된 수량입니다 다시 입력하세요"); //메시지 표시
		return false;	
	}    
}

    
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<form name="frm1" method="get">

<c:set var="vo" value="${ data}"/> <!-- 필수 -->

<!--     <h2>상품 상세정보</h2>
 -->    <table border="1" style="margin: auto;">
        <tr>		
            <td>
            <img style="height: 300px; width: 600px;" class="card-img-top" src="/img/${vo.p_image }" alt="">
            
                <table border="1" style="height: 400px; width: 600px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>${vo.p_name }</td>
                    </tr>
                    <tr align="center">
                        <td>카테고리1</td>
                        <td>${vo.p_cate }</td>
                    </tr>
                    <tr align="center">
                        <td>카테고리2</td>
                        <td>${vo.p_cate_d }</td>
                    </tr>

                    <tr align="center">    
                        <td>상품가격</td>
                        <td>${vo.p_price }</td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.p_contentBr }</td>
                    </tr>
					<tr align="center">    
                        <td>등록날짜</td>
                        <td><fmt:formatDate value="${vo.p_regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
                    </tr>
                    <tr align="center">    
                        <td>최종수정일</td>
                        <td><fmt:formatDate value="${vo.p_mdate }" pattern="yyyy-MM-dd HH:mm"/></td>
                    </tr>
                    
                    <tr align="center">
                        <td colspan="2">
			                       <input type="hidden" name="p_code" value="${vo.p_code }" />
			                       <input type="hidden" name="p_price" value="${vo.p_price }" />
			                      
			                       	<input style="width:150px;" type="number" min="1" max="${vo.p_amount }" name="p_amount"  placeholder="재고량 : ${vo.p_amount }" />개
                        
	<c:choose>
		<c:when test="${id eq null }"> <!-- 회원아닐경우(아이디가널일경우) -->
                  <input type="button" onclick="ppp();" value="로그인 후 구매하기" >

		</c:when>
		<c:otherwise>
		           <input type="button" onclick="ppp2(p_code.value,p_amount.value,${vo.p_amount} );" value="구매하기" >
		
		</c:otherwise>
	</c:choose>
                        
	<c:choose>
		<c:when test="${id eq null }">
                  <input type="button" onclick="ppp();" value="로그인 후 담기" >

		</c:when>
		<c:otherwise>
 					<input type="button" onclick="ppp1(p_code.value,p_amount.value,${vo.p_amount} );" value="장바구니담기" >
		
 
<%--  			<c:choose>
				<c:when test="${chk==0 }">
				  <input type="button" onclick="ppp1(p_code.value,p_amount.value,${vo.p_amount} );" value="장바구니담기" >				
				
				</c:when>
				<c:otherwise>
				  <input type="button" onclick="ppp3(p_code.value);" value="장바구니담기" >				
				</c:otherwise>
			</c:choose>  --%>

		</c:otherwise>
	</c:choose>

		
<%--            				  <input type="button" onclick="ppp1(p_code.value,p_amount.value,${vo.p_amount} );" value="장바구니담기" >
 --%>           
                  
                  
                                <a href="../review/list?p_code=${vo.p_code }&p_name=${vo.p_name}">리뷰보기</a>
                            <a href="../product/list?p_cate_d=${vo.p_cate_d}">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <img style=" width: 900px;" src="/img//${vo.p_image_d }" alt="">
</form>
</body>
</html>