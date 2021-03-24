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
<c:set var="vo" value="${data }"></c:set>
<script type="text/javascript">
	 location.href="modifyForm?p_code=${vo.p_code}";
</script>
</body>
</html>