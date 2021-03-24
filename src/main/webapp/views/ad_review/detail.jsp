<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
<h1>리뷰상세</h1>
<c:set var="vo" value="${data}"/> <!-- 필수 -->
<input type="hidden" name="r_code" value="${vo.r_code }">    

<table border="1" style="margin: auto;">

		<table border="1" style="height: 400px; width: 600px;">

		<tr align="center">
			<td>이미지</td> <!-- 이미지 -->
			<td><img src="/img/${vo.r_image }" alt="" width="300"/></td>
		</tr>
		<tr align="center">
			<td> 제목</td>
			<td>${vo.r_title }</td>
		</tr>	
		<tr align="center">
			<td>내용</td> <!-- 내용 -->
			<td>${vo.r_content }</td>
		</tr>
	
		</table>
	<tr>   
		<td>   
			<a href="../ad_review/deleteChk?r_code=${vo.r_code }"> 삭제하기</a>
            <a href="../ad_review/list">리뷰목록</a>
        </td>
	</tr>
</table>

</body>
</html>