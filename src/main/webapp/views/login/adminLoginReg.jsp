<%@ page import="team.join.AdminJoinVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
<c:set var="vo" value="${data }"/>
</head>

<body>

<%
//post로 받을때 한글이 깨지지 않도록 해준다. 
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
System.out.println("id :"+id);
String pw = request.getParameter("pw");
System.out.println("pw :"+pw);
/* 
HttpSession session2 = request.getSession();
session.getAttribute("id"); */


%>

<!-- 로그인한 사용자 정보가 들어오지 않았다면 -->


<c:if test="${vo.id == null }">
      <script type="text/javascript">
          alert('로그인 실패.');
          location.href="../login/adminLoginForm";
      </script>
</c:if>

   
   
  <c:if test="${msg_ad_pw == false }">
   <p style="color:#f00;">로그인에 실패하였습니다 . 비밀번호를 다시 입력해주세요.</p>
</c:if> 

 <c:if test="${msg_ad_idpw == false }">
   <p style="color:#f00;">로그인에 실패하였습니다 . 존재하지 않는 아이디입니다.</p>
</c:if> 
 

<!-- 로그인한 사용자의 정보가 들어왓다면 -->
<c:if test="${vo.id != null }">

   <% session.setAttribute("id", id); 
      session.setAttribute("status","admin");
   %>
<!--    setAttribute 메소드는 세션에 속성을 생성하여 저장하는 메소드이며,위와 같은 경우 "id"라는 이름에다 
sessionLogin.jsp에서 입력한 id 값을 값으로 세션에 저장
 -->
<script type="text/javascript">
    alert('관리자 로그인되었습니다.');
    location.href="../storage/list";
</script>

</c:if>

</body>

</html>