<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String no = request.getParameter("no");
System.out.println("no : "+no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
if(confirm("회원탈퇴를 하시겠습니까? ")) {
    window.location.href = "mypage_deadReg?no=<%=no %>";
}else{
   window.location.href = "mypage_dead?no=<%=no %>";
   
}
</script>
</body>
</html>