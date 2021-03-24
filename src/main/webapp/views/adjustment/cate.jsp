<%@page import="com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	Date now = new Date();
	Date sch = new Date();
	int month = 0;
	if(request.getParameter("month")!=null){
	month = Integer.parseInt(request.getParameter("month"));
	}

	switch(month){
	case 1 :
		sch.setMonth(sch.getMonth()-1);
		break;
	case 3 :
		sch.setMonth(sch.getMonth()-3);
		break;
	case 6 :
		sch.setMonth(sch.getMonth()-6);
		break;
	case 0 :
		sch = null;
		break;
		
	default :
		break;
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adj_cate</title>
</head>
<body>
<table border="" width="100%" >
	<tr>
		<td width="160px">검색기간</td>
		<td colspan="3" style="font-size: 25px">
			<fmt:formatDate value="<%=sch %>" pattern="yyyy-MM-dd"/> ~
			<fmt:formatDate value="<%=now %>" pattern="yyyy-MM-dd"/>까지
		</td>
	</tr>
	<tr>
		<td>카테고리</td>
		<td>세부카테고리</td>
		<td>총판매수량</td>
		<td>총판매금액</td>
	</tr>
	<script type="text/javascript">
 		var tot = 0;
	</script>
	<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.adj_cate }</td>
		<td>${vo.adj_cate_d }</td>
		<td>${vo.total_amount }</td>
		<td>${vo.total_price }</td>
		<script type="text/javascript">
 			tot += ${vo.total_price };
		</script>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="4" align="right">
			<script type="text/javascript">
				document.write("*****총합산금액 : "+tot+" 원*****");
			</script>
		</td>
	</tr>
	<tr>
		
	
		<td colspan="4" align="right">

			<a href="?month=1"><input type="button" value="1개월"/></a>
			<a href="?month=3"><input type="button" value="3개월"/></a>
			<a href="?month=6"><input type="button" value="6개월"/></a>
			<a href="?month=0"><input type="button" value="전체"/></a>
		</td>
	</tr>

</table>
</body>
</html>