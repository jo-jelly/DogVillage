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
<title>수정</title>

</head>
<body>
<script type="text/javascript">
if(confirm("수정 하시겠습니까? ")) {
    window.location.href = "mypage_inforReg?no=<%=no %>";
    alert('수정이 완료되었습니다.');
	location.href="mypage_infor";
}else{
   window.location.href = "mypage_inforForm?no=<%=no %>";
   
}

</script>
</body>
</html>