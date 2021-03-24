<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${cart.count == 0 or empty cart}">
    <script>
            alert("주문하실  상품이 없습니다.");
            location.href="/oraclejava/index.jsp";
    </script>       
</c:if>
</body>
</html>