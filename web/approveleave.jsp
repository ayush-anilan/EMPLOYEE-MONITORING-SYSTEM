<%-- 
    Document   : checkbook
    Created on : 11 Aug, 2016, 4:14:05 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
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
           String dName = "";

        
        String empid=request.getParameter("id");
        
                
        
       
        
      String query=null;
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
        String sql = "SELECT * FROM employee WHERE empname = '"+empid+"'";
        Statement statement =  con.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        String status="Approved";
        try
        {
        if(resultSet.next()) {
      query="update leave1 set status='"+status+"' where empid='"+empid+"'";
       statement.executeUpdate(query);
        response.sendRedirect("staffhome.jsp");
            }
else
{
out.println("error in else ");
}
  
     
       

     //  session.setAttribute("logged",c);
}
catch(NullPointerException ne)
{
System.out.println("error"+query);
}
         %>

    </body>
</html>
