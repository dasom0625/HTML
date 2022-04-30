<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color : red;
}
p{	
	border : 5px solid green;
	font-size: 1.5em;
	width : 200px;
	height: 30px;
}
br{
	clear : both;
}

</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>
<%
//1.한글 인코딩
request.setCharacterEncoding("UTF-8");

//2.전송데이터 받기 -id, name
String Id = request.getParameter("id");
String Name = request.getParameter("name");

%>

<p>아이디 : <%=Id%></p><br>
<p>이름 : <%=Name%></p>



</body>
</html>
