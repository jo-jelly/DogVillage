<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">    
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<style>
	#carouselExampleIndicators{
		width: 800px;
		height :  400px;
	}
</style>
</head>
<body>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="../product/detail?p_code=1"><img src="/img/main2.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
     <a href="../product/detail?p_code=2"> <img src="/img/main3.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
     <a href="../product/detail?p_code=3"> <img src="/img/main4.jpg" class="d-block w-100" alt="..."></a>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="row">


<c:forEach items="${data }" varStatus="no" var="vo" >
 
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">					
              <a href="../product/detail?p_code=${vo.p_code }"><img src="/img/${vo.p_image_m }" alt="" width="300" height="300"/></a>
            </div>
          </div>
 </c:forEach>
 </div>

</body>
</html>