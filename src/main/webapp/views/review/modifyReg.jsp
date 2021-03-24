<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String p_code = request.getParameter("p_code");
System.out.println("p_code : "+p_code);
%>
<%
String p_name = request.getParameter("p_name");
System.out.println("p_name : "+p_name);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert("수정되었습니다.")
	location.href="../review/list?p_code=<%=p_code%>&p_name=<%=p_name %>";
</script>
</body>
</html>