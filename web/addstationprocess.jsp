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

        
        String ownerregno=request.getParameter("ownerregno");
        
        String hslots="0";
        
        String vslots="0";
                
        String regno=request.getParameter("regno");
        
        String stationname=request.getParameter("stationname");
        
        String role=request.getParameter("role");
        
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
        String sql = "SELECT * FROM tbl_owner WHERE ownerregno = '"+ownerregno+"'";
        Statement statement =  con.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        if(resultSet.next()) {
         %>
         <script language="javascript">alert('duplicate entry');window.location.replace('index.html');</script>
         
         
         <%
            }
        st=con.createStatement();
        Random r=new Random();
        int i=r.nextInt(1000);
        String c="B"+i;
       String query="insert into tbl_owner (regno,stationname,ownerregno,hslots,vslots,role)values('"+regno+"','"+stationname+"','"+ownerregno+"','"+hslots+"','"+vslots+"','"+role+"')";
       st. executeUpdate(query);
 // String query1="insert into tbl_location (regid,stationname,lat,longi,lname)values('"+regno+"','"+stationname+"','"+ownerregno+"','"+hslots+"','"+vslots+"')";
   //    st. executeUpdate(query1);
     //  session.setAttribute("logged",c);
        response.sendRedirect("adminhome.jsp");
         %>

    </body>
</html>
