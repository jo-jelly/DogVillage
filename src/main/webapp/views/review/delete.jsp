<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>리뷰상세삭제</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script>


</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<script type="text/javascript">
	alert("삭제되었습니다.")
	location.href="../review/list?p_code=<%=p_code%>&p_name=<%=p_name%>";
</script>

</body>
</html>