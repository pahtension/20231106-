<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");
	String cha = request.getParameter("char");
	
	for (int i = 1; i < Integer.parseInt(num); i++) {
		for(int j=0;j<i;j++){
			out.print(cha);
		}
		out.print("<br>");
	}
	for (int i = Integer.parseInt(num); i > 0; i--) {
		for(int j=0;j<i;j++){
			out.print(cha);
		}
		out.print("<br>");
	}
	%>

</body>
</html>