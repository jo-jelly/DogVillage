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
String n_code = request.getParameter("n_code");
System.out.println("n_code : "+n_code);
%>
<script type="text/javascript">

if(confirm("삭제하시겠습니까?")) {
    window.location.href = "/admin/notice/delete?n_code=<%=n_code %>";
}else{
	window.location.href = "/admin/notice/detail?n_code=<%=n_code %>";
}
</script>

</body>
</html>