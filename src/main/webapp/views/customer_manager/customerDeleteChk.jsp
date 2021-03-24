<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String no = request.getParameter("no");
System.out.println("no :"+no);
%>
<script type="text/javascript">
 if(confirm("회원정보를 삭제하시겠습니까?")) {
	 window.confirm("삭제되었습니다");
    window.location.href = "/admin/customer_manager/customerDelete?no=<%=no %>";
}else{
	window.location.href = "/admin/customer_manager/customerList"
	
} 

/* var result = confirm("?");
if(result){
    alert("화이팅!!");
}else{
    alert("저런");
} */

</script>
</body>
</html>