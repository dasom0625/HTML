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
div{	
	border : 5px dotted red;
}
p{
	width: 200px;
	height: auto;
	margin : 10px;
	padding: 10px;	
	float : left;
}

br{
	clear : both;
}
.pp{
	font-style: bord;
}

</style>
</head>
<body>
<h1>JSP : Java Server page</h1>

<%

	//1.한글 인코딩
	request.setCharacterEncoding("UTF-8");
	
	//2. 데이터 넣기
	String userName = request.getParameter("name");
	String userTel = request.getParameter("tel");
	String userAddr = request.getParameter("addr");
	
	String userFlower []= request.getParameterValues("flower");
	
	String str ="";
	for(String flower : userFlower){
		str += flower + " ";
	}
%>
<div>
	<p class = "pp">이름 > </p>
	<p><%=userName%></p>
	<br>
	
	<p class = "pp">전화번호 ></p>
	<p><%=userTel%></p>
	<br>
	
	<p class = "pp">주소 ></p>
	<p><%=userAddr%></p>
	<br>
	
	<p class = "pp">좋아하는 꽃 ></p>
	<p><%=str%></p>
	<br>
	
	
	
</div>

</body>
</html>
