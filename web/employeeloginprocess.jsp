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

        String pas=request.getParameter("password");


         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       String query="select * from employee where empname='"+na+"' and emppassword='"+pas+"'";
       System.out.println(""+query);
        rs= st. executeQuery(query);
          if(rs.next())
           {System.out.println("inside"+query);
             String regid=rs.getString("empid");
             String empname=rs.getString("empname");
             String empage=rs.getString("empage");
             String empgender=rs.getString("empgender");
             String empaddress=rs.getString("empaddress");
             String empdesignation=rs.getString("empdesignation");
          String empmobile=rs.getString("empmobile");
          String empmail=rs.getString("empemail");
             session.setAttribute("regid", regid);
             session.setAttribute("logged",na);
             session.setAttribute("empname", empname);
             session.setAttribute("empage", empage);
             session.setAttribute("empgender", empgender);
             session.setAttribute("empaddress", empaddress);
             session.setAttribute("empdesignation", empdesignation);
             session.setAttribute("empmobile",empmobile);
             session.setAttribute("empemail",empmail);
           response.sendRedirect("employeehome.jsp");
           }
           

      %>
    </body>
</html>