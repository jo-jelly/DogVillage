<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷴 수정</title>
<link rel="stylesheet" href="../../bootstrap-4.5.3-dist/css/bootstrap.min.css">
<script type="text/javascript" src="../../js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../../bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
<%
String p_code = request.getParameter("p_code");
System.out.println("p_code : "+p_code);
%>
<%
String r_code = request.getParameter("r_code");
System.out.println("r_code : "+r_code);
%>
<%
String p_name = request.getParameter("p_name");
System.out.println("p_name : "+p_name);
%>


<script>
function gogo(){
if (confirm("정말 수정하시겠습니까??") == true){    //확인
    document.form.submit();
}else{   //취소
    return;
}
}
function fileDelete(){
	
	
	if(confirm("파일을 삭제하시겠습니까?\n삭제된 파일은 복원되지 않습니다.")){
		frm.action="FileDeleteReg";
		frm.submit();
	}
}


</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <h2>상품 리뷰 수정</h2>
<c:set var="vo" value="${data}"/> <!-- 필수 -->

<form action="../review/modifyReg?r_code=<%=r_code %>&p_name=<%=p_name %>" method="post" enctype="multipart/form-data" name="frm">
    <table border="1" style="margin: auto;">
    
        <tr>		
            <td> <!-- 상품이미지 넣어야함..  -->
            
            <input type="hidden" name="p_name" value="<%=p_name %>">
            <input type="hidden" name="r_code" value="<%=r_code %>">
            <input type="hidden" name="p_code" value="<%=p_code %> ">
            <table border="1" style="height: 400px; width: 600px;">
		
                    <%-- <tr align="center">
                        <td>리뷰번호.(이거없애야함)</td>
                        <td><%=r_code %></td>
						<td><input type="hidden" name="r_code" value="<%=r_code %>"></td>   
               
                    </tr>
                    <tr align="center">
                        <td>상품번호.(이거없애야함)</td>
                        <td><%=p_code %> </td>
                        <td><input type="hidden" name="p_code" value="<%=p_code %> "></td>
                        
                    </tr> --%>
                    <tr align="center">
                        <td>상품이미지</td>
                        <td>
           					<c:choose>
								<c:when test="${vo.r_image==null }">
		                        	<input type="file" name="r_imgfileFF" />
                        		</c:when>
								<c:otherwise>
									<input type="hidden" name="r_image" value="${vo.r_image }">
									${vo.r_image }<input type="button" value="파일삭제" onclick="fileDelete()"/>
								</c:otherwise>
							</c:choose>
                        </td>
                    </tr>

                    <tr align="center">
                        <td>리뷰제목</td>
                        <td><input type="text" name="r_title" value="${vo.r_title }"/></td>
                    </tr>

                    <tr align="center">
                        <td>내용</td>
                        <td><textarea name="r_content"  cols="50" rows="5">${vo.r_content }</textarea></td>
                    </tr>

                    <tr align="center">
                        <td colspan="2">
                                <input type="submit" value="수정하기" onclick="gogo()">
                     			
                                

   
 
							<a href="../review/list?p_code=<%=p_code%>&p_name=<%=p_name %>"><input type="button" value="리뷰로" /></a>
                
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>