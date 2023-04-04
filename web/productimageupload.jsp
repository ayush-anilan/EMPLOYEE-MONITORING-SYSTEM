<%
    
String logged=session.getAttribute("logged").toString();
    
    %>
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

        
        String ownername=request.getParameter("ownername");
        
        String itemname=request.getParameter("itemname");

        String itemcategory=request.getParameter("category");
                
        String itemstock=request.getParameter("stock");
              //  int stock=Integer.parseInt(itemstock);
        String itemprice=request.getParameter("price");
        //int price=Integer.parseInt(itemprice);
        String itemdescription=request.getParameter("description");
       
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
       
        st=con.createStatement();
        Random r=new Random();
        int i=r.nextInt(1000);
        String c="B"+i;

       String query="insert into tbl_products (ownerid,itemname,itemcategory,itemstock,itemprice,itemdescription)values('"+ownername+"','"+itemname+"','"+itemcategory+"','"+itemstock+"','"+itemprice+"','"+itemdescription+"')";
       st. executeUpdate(query);
session.setAttribute("itemname", itemname);
session.setAttribute("logged", logged);
        response.sendRedirect("uploadpage.jsp");
         %>

    </body>
</html>
