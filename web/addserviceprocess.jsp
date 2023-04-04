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

        
      //  String ownerregno=request.getParameter("regno");
        
        String stationname=request.getParameter("stationname");
        
        String hslots=request.getParameter("hslots");
                
        String vslots=request.getParameter("vslots");
        String time=request.getParameter("time");
        
        //String lname=request.getParameter("location");
        
 
        
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
     
        st=con.createStatement();
        Random r=new Random();
        int i=r.nextInt(1000);
        String c="B"+i;
       String query="insert into tbl_services (ownerid,service,cost,description) values('"+stationname+"','"+hslots+"','"+vslots+"','"+time+"')";
       st. executeUpdate(query);

     //  session.setAttribute("logged",c);
        response.sendRedirect("srhome.jsp");
         %>

    </body>
</html>
