<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ad review</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>

</head>
<body>
<h1>리뷰관리리스트</h1>

<table class="table table-striped"> <!-- 가독성좋아짐 -->
	<tr>		
		<td>리뷰 번호</td>
		<td>상품 번호</td>
		<td></td>
 		<td>상품 이름</td>
 		<td>id</td>
		<td>리뷰 제목</td>
		<td>날짜</td>
	</tr>
<c:forEach items="${data }" varStatus="no" var="vo" >
	<tr>
		<td>${vo.r_code }</td>
		<td>${vo.p_code }<td>
  		<td>${vo.p_name }</td>
 		<td>${vo.id }</td>
		<td><a href="detail?r_code=${vo.r_code }">${vo.r_title }</a></td>
		<td><fmt:formatDate value="${vo.r_regdate }" pattern="yy-MM-dd HH:mm"/></td>
	</tr>
 </c:forEach>
</table>
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
	<tr><td></td></tr>
</body>
</html>