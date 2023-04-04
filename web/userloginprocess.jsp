<%-- 
    Document   : checkuser
    Created on : 9 Dec, 2016, 7:25:24 PM
    Author     : user
--%>

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
        out.println("username");
        String pas=request.getParameter("password");
        out.println("password");
        String role="user";
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       String query="select * from tbl_login where username='"+na+"' and password='"+pas+"' and role='"+role+"'";
        rs= st. executeQuery(query);
          if(rs.next())
           {
             String regid=rs.getString("regid");
             session.setAttribute("regid", regid);
             session.setAttribute("logged",na);
           

            session.setAttribute("role", role);
            if(role.equals("user"))
            {
 
              response.sendRedirect("userhome.jsp");
            }
            else if(role.equals("C owner"))
            {
                
                 response.sendRedirect("chome.jsp");  
            }
            else if(role.equals("Shop owner"))
            {
                   response.sendRedirect("shophome.jsp");  
            }
           }
      else
         {
            response.sendRedirect("invalid.jsp");
         }

      %>
    </body>
</html>