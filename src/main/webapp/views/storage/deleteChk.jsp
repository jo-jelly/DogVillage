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
<%
String p_code = request.getParameter("p_code");
System.out.println("p_code : "+p_code);
%>
<script type="text/javascript">

if(confirm("삭제하시겠습니까?")) {
    window.location.href = "/admin/storage/delete?p_code=<%=p_code %>";
}else{
	window.location.href = "/admin/storage/detail?p_code=<%=p_code %>";
}
</script>

</body>
</html>