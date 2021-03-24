<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<body>
		<!-- id세션 삭제 -->
		<% session.removeAttribute("id");%>
	
		<script type="text/javascript">

			alert('회원탈퇴가 완료되었습니다.');

			location.href="../main/main";
		</script>


</body>


</body>
</html>