<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>상품리뷰등록</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script src="https://code.jquery.com/jquery-3/3/1.min.js"></script>


<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<script>
 function gogo(){
if (confirm("정말 등록하시겠습니까??") == true){    //확인
    document.form.submit();
}else{   //취소
    return;
}
}



</script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
     <h2>리뷰등록</h2>
<form role="form" method="post" autocomplete="off" enctype="multipart/form-data"><!-- action="../review/insertReg" -->
    <table border="1" style="margin: auto;">
        <tr>		
            <td> 
                <table border="1" style="height: 400px; width: 600px;">
                    <tr align="center">
                         <td><input type="hidden" name="p_code" value="<%=p_code %> "></td>
                         <td><input type="hidden" name="p_name" value="<%=p_name %> "></td>
                   </tr>
                   <tr align="center">
                        <td>상품이미지</td>
                        <td><input type="file" name="r_imgfileFF" /></td>
                    </tr>


                    <tr align="center">
                        <td>리뷰제목</td>
                        <td><input type="text" name="r_title" /></td>
                    </tr>

                    <tr align="center">
                        <td>내용</td>
                        <td><textarea name="r_content"  cols="50" rows="5"></textarea></td>
                    </tr>
                 

                    <tr align="center">
                        <td colspan="2">
<!--                                  <input type="submit" value="등록하기" onclick="gogo()">
 -->                          <button id="insert_btn">등록하기 </button>
						<script>
						var formObj = $("form[role='form']");
						//등록하기버튼 인것
						$("#insert_btn").click(function(){

							formObj.attr("action","/projectMenu/review/insertReg");
							formObj.attr("method","post");
							formObj.submit();
						});  
					
					
						</script>
   
 
							<a href="../review/list?p_code=<%=p_code%>&p_name=<%=p_name%>"><input type="button" value="뒤로" /></a>
                
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>