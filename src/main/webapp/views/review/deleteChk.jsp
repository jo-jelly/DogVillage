<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String r_code = request.getParameter("r_code");
System.out.println("r_code : "+r_code);
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
if(confirm("삭제하시겠습니까?")) {
    window.location.href = "../review/delete?r_code=<%=r_code %>&p_name=<%=p_name%>";
}else{
   window.location.href = "../review/detail?r_code=<%=r_code %>&p_name=<%=p_name%>";
   
}
</script>
</body>
</html>