<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">    
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%
	//아이디 세션 연결
   String joinid = (String)session.getAttribute("id");

   String login_check = "";

   String join_check = "";
   
   String grade = (String)session.getAttribute("grade");




   if(joinid == null){

	  	 login_check ="<a href='/projectMenu/login/loginMainForm'>로그인</a>";
	     join_check = "<a href='/projectMenu/join/joinMainForm'>회원가입</a>";
	     joinid = "비회원입니다";
   } else { 

      login_check = "<a href='/projectMenu/login/logout'>로그아웃</a>";

      join_check = "<a href='/projectMenu/mypage/mypage_order'>마이페이지</a>";
      
      joinid = (String)session.getAttribute("id") + "님 반가워요!";

   }
   if(grade!=null){
	   if(grade.equals("관리자")){
		  	  login_check = "<a href='/projectMenu/login/logout'>로그아웃</a>";
		  	
		      join_check = "<a href='/admin/storage/list'>관리페이지</a>";
		      
		      joinid = (String)session.getAttribute("id") + "님 반가워요!";
	   }
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
      <li ><a href="" title="Link">사료</a>
        <ul >
          <li ><a href="../product/list?p_cate_d=전연령용" title="Link">전연령용</a></li>
          <li ><a href="../product/list?p_cate_d=자견용" title="Link">자견용</a></li>
          <li ><a href="../product/list?p_cate_d=성견용" title="Link">성견용</a></li>
          <li ><a href="../product/list?p_cate_d=노견용" title="Link">노견용</a></li>
        </ul>
      </li>
      <li >
         <a href="" title="Link">간식</a>
          <ul >
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">비스킷</a></li>
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">저키/트릿</a></li>
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">껌/덴탈껌</a></li>
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">캔/파우치</a></li>
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">통살/소시지</a></li>
          <li ><a href="../product/list?p_cate_d=비스킷" title="Link">파우더</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">배변/위생</a>
          <ul >
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">배변판</a></li>
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">배변패드</a></li>
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">배변봉투</a></li>
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">탈취/소독</a></li>
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">물티슈</a></li>
          <li ><a href="../product/list?p_cate_d=배변패드" title="Link">기저귀</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">산책/이동장</a>
          <ul >
          <li ><a href="../product/list?p_cate_d=목줄" title="Link">목줄</a></li>
          <li ><a href="ProductList" title="Link">산책용품</a></li>
          <li ><a href="ProductList" title="Link">이동가방</a></li>
          <li ><a href="ProductList" title="Link">유모차</a></li>
          <li ><a href="ProductList" title="Link">차량용시트</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">건강관리</a>
          <ul >
          <li ><a href="" title="Link">눈/귀</a></li>
          <li ><a href="" title="Link">치아</a></li>
          <li ><a href="" title="Link">털/피부</a></li>
          <li ><a href="" title="Link">뼈/관절</a></li>
          <li ><a href="" title="Link">종합영양</a></li>
          <li ><a href="" title="Link">소화기/유산균</a></li>
          <li ><a href="" title="Link">해충방지</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">식기</a>
          <ul >
          <li ><a href="" title="Link">식탁</a></li>
          <li ><a href="" title="Link">급식기</a></li>
          <li ><a href="" title="Link">급수기</a></li>
          <li ><a href="" title="Link">정수기</a></li>
          <li ><a href="" title="Link">젖병</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">하우스/울타리</a>
          <ul >
          <li ><a href="" title="Link">하우스</a></li>
          <li ><a href="" title="Link">방석/쿠션</a></li>
          <li ><a href="" title="Link">계단/스텝</a></li>
          <li ><a href="" title="Link">철장/울타리</a></li>
          <li ><a href="" title="Link">안전문</a></li>
          <li ><a href="" title="Link">미끄럼방지매트</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">의류/악세</a>
          <ul >
          <li ><a href="" title="Link">아우터</a></li>
          <li ><a href="" title="Link">탑/티셔츠</a></li>
          <li ><a href="" title="Link">올인원/드레스</a></li>
          <li ><a href="" title="Link">악세서리</a></li>
          <li ><a href="" title="Link">신발/양말</a></li>
          <li ><a href="" title="Link">넥카라</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">미용</a>
          <ul >
          <li ><a href="" title="Link">샴푸/린스</a></li>
          <li ><a href="" title="Link">타월/드라이</a></li>
          <li ><a href="" title="Link">목욕용품</a></li>
          <li ><a href="" title="Link">빗/브러쉬</a></li>
          <li ><a href="" title="Link">클리너/미용관리</a></li>
          <li ><a href="" title="Link">발/발톱관리</a></li>
          <li ><a href="" title="Link">미스트/향수</a></li>
         </ul>
      </li>
      <li >
         <a href="" title="Link">장난감</a>
          <ul >
          <li ><a href="" title="Link">봉제인형</a></li>
          <li ><a href="" title="Link">공/원반</a></li>
          <li ><a href="" title="Link">치실/로프</a></li>
          <li ><a href="" title="Link">기타</a></li>
         </ul>
      </li>
   
    </ul>
  </nav>
</div>
<div class="header_wrrapper">
   <nav class="navbar navbar-light bg-light">
      <a href="/projectMenu/main/main"><img src="/img/logo.png" alt="" height="40px"/></a>
        <form class="form-inline" action="../product/listSch?p_name=${p_name }">
          <input class="form-control mr-sm-2" name="p_name" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      
<!--       <a href="/projectMenu/mypage/mypage_order">마이페이지</a>
      <a href="/projectMenu/cart/list">장바구니</a> -->
     
      
      <%=login_check %>
      <%=join_check %>
      <%=joinid %>
   </nav>
   
</div>

</body>
</html>