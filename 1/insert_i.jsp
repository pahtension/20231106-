<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.sql.*" import="database.DBConnection"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String password = request.getParameter("pw");
    String sql = "insert into user value('?','?','?')";

    try {
        Connection conn = DBConnection.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,id);
        pstmt.setString(2,name);
        pstmt.setString(3,password);
        pstmt.executeQuery();

        out.print("fswr1234r");
        
    }
    catch (Exception e){
        e.printStackTrace();
    }


%>
</body>
</html>