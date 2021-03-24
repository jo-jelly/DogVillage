<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%
String p_name = request.getParameter("p_name");
System.out.println("p_name : "+p_name);
%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="vo" value="${data }"></c:set>
<script type="text/javascript">
	 location.href="modify?r_code=${vo.r_code }&p_code=${vo.p_code}&p_name=<%=p_name%>";
</script>
</body>
</html>