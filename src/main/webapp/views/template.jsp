<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
*{
	margin:0px auto;
	padding: 0px;
}
</style>
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
</head>
<body>
<table border="">
	<tr>
		<td width="1000px"><jsp:include page="inc/header.jsp"/></td>
	</tr>
	<tr>
		<td width="1000px"><jsp:include page="${kind.serviceUrl }"></jsp:include></td>
	</tr>
	<tr>
		<td><jsp:include page="inc/footer.jsp"/></td>
	</tr>
</table>
</body>
</html>
		
	