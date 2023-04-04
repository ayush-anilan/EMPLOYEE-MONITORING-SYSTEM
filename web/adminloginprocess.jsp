<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String na=request.getParameter("username");

        String pas=request.getParameter("password");
    Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
  String query="SELECT * from admin WHERE username='"+na+"' and password='"+pas+"'"; 
  rs= st. executeQuery(query);
 if(rs.next())
{
    String username=rs.getString("username");
    String password=rs.getString("password");
    response.sendRedirect("adminhome.jsp");
}
%>
</body>
</html>