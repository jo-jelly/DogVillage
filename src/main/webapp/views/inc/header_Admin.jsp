 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">    
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%

   String adminid = (String)session.getAttribute("id");

   String login_check = "";

   String join_check = "";

   

   if(adminid == null){
      

   } else { 

	   login_check = "<a href='/projectMenu/login/logout'>로그아웃</a>";

      join_check = "<a href='/projectMenu/main/main'>쇼핑몰로 이동하기</a>";
	
      adminid = (String)session.getAttribute("id") + "관리자님 접속";
   }

%>
<title>Show/Hide Toggle Menu Demo</title>
<style>
html {
  font-family: sans-serif;
  color: #4b5f65;
  background: #f5f7fa;
}

body { overflow-x:hidden}

nav { width: 100%; }

.nav_wrapper {
  position: fixed;
  margin:0px auto;
  top: 0;
  width: 1000px;
  z-index : 999;
  background: #2f3b3f;
}

.menu {
  width: 100%;
  height: auto;
  background: #2f3b3f;
}

.menu ul {
  padding: 0px;
  margin: 0px;
  list-style: none;
  position: relative;
  display: inline-block;
}

.menu > li > ul.sub_menu {
  min-width: 10em;
  padding: 4px 0;
  background-color: #f4f4f4;
  border: 1px solid #fff;
}

.menu ul li { padding: 0px; }

.menu > ul > li { display: inline-block; }

.menu ul li a {
  display: block;
  text-decoration: none;
  color: #fff;
  font-size: 14px;
}

.menu ul li a:hover {
  background: #efa666;
  color: #fff;
  transition: all .5s ease-out;
}

.menu ul li.hover > a {
  background: #efa666;
  color: #fff;
}

.menu ul li > a { padding: 15px; }

.menu ul ul {
  display: none;
  position: absolute;
  top: 100%;
  min-width: 160px;
  background: #39484d;
}

.menu ul li:hover > ul { display: block;}

.menu ul ul > li { position: relative; }

.menu ul ul > li a {
  padding: 10px 15px;
  height: auto;
  background: #39484d;
}

.menu ul ul > li a:hover {
  background: #efa666;
  color: #fff;
}

.menu ul ul ul {
  position: absolute;
  left: 100%;
  top: 0;
}
.header_wrrapper{
   padding-top : 50px;
   width: 100%;
   float: left;
}
.main_header_logo{
   
}
.main_header > li{
   float: left;
   height: 20px;
   width: 10%;
   list-style : none;
}
ol{
   width:100%;
}
</style>
</head>
<body>
<div class="nav_wrapper"> 
  <nav class="menu">
    <ul>
       <li ><a href="../customer_manager/customerList">회원관리</a>
        <ul >
          <li ><a href="../customer_manager/customerList">회원목록</a></li>
        </ul>
      </li>

       <li ><a href="#Link" title="Link">상품관리</a>
        <ul >
            <li ><a href="/admin/storage/list" title="Link">물품관리 </a></li>
            <li ><a href="/admin/storage/iList" title="Link">재고관리 </a></li>
            <li ><a href="../ad_review/list" title="Link">리뷰관리 </a></li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">배송관리</a>
        <ul >
          <li ><a href="/admin/tms/new" title="Link">신규</a></li>
          <li ><a href="/admin/tms/onDelivery" title="Link">배송중</a></li>
          <li ><a href="/admin/tms/list" title="Link">총주문목록</a></li>
        </ul>
      </li>

      <li ><a href="#Link" title="Link">결산</a>
        <ul >
          <li ><a href="/admin/adjustment/cate" title="Link">카테고리별 </a></li>
          <li ><a href="/admin/adjustment/tot" title="Link">전체</a></li>
        </ul>
      </li>
      
      <li><a href="#Link" title="Link">공지사항</a>
        <ul >
          <li ><a href="/admin/notice/adminList" title="Link">공지사항 </a></li>
        </ul>
      </li>
    </ul>
  </nav>
</div>
<div class="header_wrrapper">
   <nav class="navbar navbar-light bg-light">
      <a href="/projectMenu/main/main"><img src="/img/logo.png" alt="" height="40px"/></a>
      <a href="/admin/storage/list">관리페이지</a>
      <%=join_check %>
      <%=login_check %>
   </nav>
   
</div>

</body>
</html>