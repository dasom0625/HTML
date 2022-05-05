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
	width : 200px;
	height: 50px;
	border : 2px dotted gray;
	font-size: 1.5em;
	margin : 10px;
	padding : 10px;
	text-align: center;
}
#p1{
	width : 80%;
}
.pp{
	/*아이디 옆에 id오게 float : left처리 */
	float : left;
}
br{
	clear : both;
}
#food{
	width : 500px;
}
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>

<%
	//1.한글 인코딩 처리 먼저 하기
	request.setCharacterEncoding("UTF-8");

	//2.
	String userId = request.getParameter("id");
	String userPassword = request.getParameter("pw");
	
%>
<div>
	<p class = "pp">아이디</p>
	<p class = "pp"><%=userId %></p>
	
	<br>
	
	<p class = "pp">비밀번호</p>
	<p class = "pp"><%=userPassword%></p>
	
</div>
</body>
</html>
