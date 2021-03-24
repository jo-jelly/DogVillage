<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String r_code = request.getParameter("r_code");
System.out.println("r_code : "+r_code);
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
    window.location.href = "../ad_review/delete?r_code=<%=r_code %>";
}else{
   window.location.href = "../ad_review/detail?r_code=<%=r_code %>";
   
}
</script>
</body>
</html>