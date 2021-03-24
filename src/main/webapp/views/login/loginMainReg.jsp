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

<script type="text/javascript">
			 alert('${data.msg}');
			 location.href='${data.url}';
		</script>

</body>

</html>
