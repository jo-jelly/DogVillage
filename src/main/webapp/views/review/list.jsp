<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<title>review</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>

<script>
function ppp(){ //중복됏을떄

      alert("이미 작성하신 리뷰입니다"); //메시지 표시
         location.href='#'

   }
function ppp2(){ //
         location.href="../review/insert?p_code=<%=p_code %>&p_name=<%=p_name %>"

   }
/* <input type="button" onclick="ppp();" value="로그인 후 구매하기" >
 */
</script>


</head>
<body>

<h1><%=p_name %> 리뷰</h1>
<table class="table table-striped"> <!-- 가독성좋아짐 -->
   <tr>      
      <td>리뷰번호</td>
      <td>id</td>
      <td>제목</td>
      <td>등록날짜</td>
      <td>조회수</td>
   </tr>
   
<c:choose>
    <c:when test="${chk == 0}">
       <tr><td colspan="5"><h1>리뷰가 없습니다</h1><td></tr>
    </c:when>
    <c:otherwise>
       
<c:forEach items="${data }" varStatus="no" var="vo" >
   <tr>
      <td>${vo.r_code }</td>

       <td>${vo.id }</td>
      <td><a href="detail?r_code=${vo.r_code }&p_code=<%=p_code %>&p_name=<%=p_name%>&id=${vo.id }">${vo.r_title }</a></td>
        <td><fmt:formatDate value="${vo.r_regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
      <td>${vo.cnt }</td>
      
   </tr>
 </c:forEach>
 
</c:otherwise>
</c:choose>

</table>
       <%-- <c:if test="${ch == 1 }">
         <a href="../review/insert?p_code=<%=p_code %>&p_name=<%=p_name %>">리뷰쓰기</a>
      </c:if>  --%>
<c:if test="${ch == 1}">

     <c:choose>
      <c:when test="${rtest == 1}">
<%--          <a href="../review/insert?p_code=<%=p_code %>&p_name=<%=p_name %>">리뷰쓰기</a>
 --%>         <input type="button" onclick="ppp2();" value="리뷰쓰기" >
         
      </c:when>
      <c:otherwise>
         <input type="button" onclick="ppp();" value="리뷰쓰기" >
         
      </c:otherwise>
   </c:choose> 

</c:if>


<%-- <a href="../review/insert?p_code=<%=p_code %>&p_name=<%=p_name %>">리뷰쓰기</a>
 --%><a href="../product/detail?p_code=<%=p_code %>">상품상세</a>
   <tr>
      <td colspan="7" align="center">
         <c:if test="${startPage>1 }">
            <a href="?nowPage=${startPage-1 }&p_code=<%=p_code %>&p_name=<%=p_name%>"> < </a>
         </c:if>
         <c:forEach begin="${startPage }" end="${endPage}" step="1" var="i">
            <c:choose>
               <c:when test="${nowPage==i }">
               <a href="?nowPage=${i }&p_code=<%=p_code %>&p_name=<%=p_name%>">[${i }]</a>   
               </c:when>
               <c:otherwise>
                  <a href="?nowPage=${i }&p_code=<%=p_code %>&p_name=<%=p_name%>">${i }</a>
               </c:otherwise>
            </c:choose>      
         </c:forEach>
         <c:if test="${endPage<lastPage }">
            <a href="?nowPage=${endPage+1 }&p_code=<%=p_code %>&p_name=<%=p_name%>"> > </a>
         </c:if>
      </td>
   </tr>
</body>
</html>