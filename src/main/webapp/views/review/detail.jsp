<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String p_name = request.getParameter("p_name");
System.out.println("p_name : "+p_name);

/* String pid = (String)session.getAttribute("id"); //세션아이디 불러오가 */
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>

<script>


</script>


</head>
<body>
<%-- <h1>리뷰디테일페이지입니다${chk }</h1>
 --%>
<c:set var="vo" value="${data}"/> <!-- 필수 -->
<table border="1" style="margin: auto;">
	<tr>
		<td>
    	<table border="1" style="height: 400px; width: 600px;">

		<tr align="center">
			<td>이미지</td> <!-- 이미지 -->
			<td><img src="/img/${vo.r_image }" alt="" width="300"/></td>
		</tr>
		<tr align="center">
			<td>등록일</td>
        	<td><fmt:formatDate value="${vo.r_regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		<tr align="center">
			<td> 제목</td>
			<td>${vo.r_title }</td>
		</tr>	
		<tr align="center">
			<td>내용</td> <!-- 내용 -->
			<td>${vo.r_content }</td>
		</tr>
		<tr align="center">
			<td>조회수</td> <!-- 내용 -->
			<td>${vo.cnt }</td>
		</tr>
		</td>
	</tr>
		</table>
	<tr>   
		<td>   
		
<%-- 			<a href="../review/modify?r_code=${vo.r_code }&p_code=${vo.p_code}&p_name=<%=p_name%>">수정하기</a>
            <a href="../review/delete?r_code=${vo.r_code }&p_code=${vo.p_code}&p_name=<%=p_name%>">삭제하기</a>
 --%> 	
 	
		<c:if test="${chk == 1 }">
			<a href="../review/modify?r_code=${vo.r_code }&p_code=${vo.p_code}&p_name=<%=p_name%>">수정하기</a>
		</c:if>
		<c:if test="${chk == 1 }">
            <a href="../review/delete?r_code=${vo.r_code }&p_code=${vo.p_code}&p_name=<%=p_name%>">삭제하기</a>
		</c:if>

            <a href="../review/list?p_code=${vo.p_code}&p_name=<%=p_name%>">리뷰목록</a>

<%--  					<td><jsp:include page="../comment/read.jsp"/></td>
 --%> 			
 </td>
	</tr>
</table>

</body>
</html>