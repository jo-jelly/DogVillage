<%@page import="team.join.JoinVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
<c:set var="vo" value="${data }"/>
</head>

<body>



<!-- 로그인한 사용자 정보가 들어오지 않았다면 -->


<c:if test="${vo.pw == null }">
		<script type="text/javascript">
			 alert('일치하는 정보가 없습니다.');
			 location.href="findPw";
		</script>
</c:if>

	

 

<!-- 로그인한 사용자의 정보가 들어왓다면 -->
<c:if test="${vo.pw != null }">

<script type="text/javascript">
	 alert('비밀번호는 ${vo.pw}입니다.');
	 location.href="../main/main";
</script>

</c:if>

</body>

</html>
