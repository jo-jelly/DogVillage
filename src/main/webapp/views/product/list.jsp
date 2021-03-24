<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록들</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>

</head>

<body>

<!-- <h1>상품목록들</h1>
 --><div class="row">


<c:forEach items="${data }" varStatus="no" var="vo" >
 
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">					<!-- 밑에 이미지 -->
              <a href="detail?p_code=${vo.p_code }"><img src="/img/${vo.p_image }" alt="" width="300"/></a>
              <div>상품번호.${vo.p_code }</div>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="detail?p_code=${vo.p_code }">${vo.p_name }</a> <!-- 상품이름 -->
                </h4>
                <h5>가격 : ${vo.p_price }</h5> <!-- 가격 -->
              </div>
            </div>
          </div>
 </c:forEach>
 </div>
 <c:set var="vo" value="${data }"></c:set>
 <table>
	<tr>
		<td colspan="7" align="center">
			<c:if test="${startPage>1 }">
				<a href="?nowPage=${startPage-1 }&p_cate_d=${p_cate_d}"> < </a>
			</c:if>
			<c:forEach begin="${startPage }" end="${endPage}" step="1" var="i">
				<c:choose>
					<c:when test="${nowPage==i }">
					<a href="?nowPage=${i }&p_cate_d=${p_cate_d}">[${i }]</a>	
					</c:when>
					<c:otherwise>
						<a href="?nowPage=${i }&p_cate_d=${p_cate_d}">${i }</a>
					</c:otherwise>
				</c:choose>		
			</c:forEach>
			<c:if test="${endPage<lastPage }">
				<a href="?nowPage=${endPage+1 }&p_cate_d=${p_cate_d}"> > </a>
			</c:if>
		</td>
	</tr>
</table>


</body>

</html>
