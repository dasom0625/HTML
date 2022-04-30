<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	color: red;
}
pre{
	border : 10px double red;
}
p{
	width: 300px;
	height: auto;
	margin : 10px;
}
.p1 {
	width: 500px;
	height: auto;
}

</style>
</head>
<h1>JSP : Java Server Page</h1>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userName = request.getParameter("name");
String userAddr = request.getParameter("addr");
String userTel = request.getParameter("tel");
String userAge = request.getParameter("age");

String userStart1 = request.getParameter("start1");
String userEnd1 = request.getParameter("end1");
String userContent1 = request.getParameter("content1");

String userStart2 = request.getParameter("start2");
String userEnd2 = request.getParameter("end2");
String userContent2 = request.getParameter("content2");

String userStart3 = request.getParameter("start3");
String userEnd3 = request.getParameter("end3");
String userContent3 = request.getParameter("content3");

String date1 = "";
date1 = userContent1.replaceAll("\r","").replaceAll("\n", "<br>"); 

String date2 = "";
date2 = userContent2.replaceAll("\r","").replaceAll("\n", "<br>");

String date3 = "";
date3 = userContent3.replaceAll("\r","").replaceAll("\n", "<br>");




%>
<pre>

<p><strong>이름</strong></p> <p><%=userName%></p>
<p><strong>나이</strong></p> <p><%=userAge%></p>
<p><strong>주소</strong></p> <p>  <%=userAddr%></p>
<p><strong>전화번호</strong></p> <p>  <%=userTel%></p>

<br><br>
<p><strong>기간 1</strong></p> <p>  <%=userStart1%>~<%=userEnd1 %></p>
<p class="p1"><strong>내용</strong></p> <p><%=date1 %>

<p><strong>기간 2</strong></p> <p><%=userStart2%>~<%=userEnd2 %></p>
<p class="p1"><strong>내용</strong></p> <p><%=date2 %>

<p><strong>기간 3</strong></p> <p><%=userStart3%>~<%=userEnd3 %></p>
<p class="p1"><strong>내용</strong></p> <p><%=date3 %>
</pre>
</body>
</html>
