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

        String logged=session.getAttribute("logged").toString();
        String ownername=request.getParameter("ownername");
        
        String email=request.getParameter("email");
        
        String mobile=request.getParameter("mobile");
                
        String housename=request.getParameter("housename");
        
        String housenumber=request.getParameter("housenumber");
        
        String city=request.getParameter("city");
         String state=request.getParameter("state");
        

        String district=request.getParameter("district");
        
        String street=request.getParameter("street");
       
             String username=request.getParameter("username");
        
        String password=request.getParameter("password");
                String pin=request.getParameter("post");
                String role=request.getParameter("role");
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
        String sql = "SELECT * FROM tbl_register WHERE email = '"+email+"'";
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
role="SR staff";
       String query="insert into tbl_staff (regid,name,email,mobile,housename,housenumber,street,post,district,state,owner)values('"+c+"','"+ownername+"','"+email+"','"+mobile+"','"+housename+"','"+housenumber+"','"+street+"','"+pin+"','"+district+"','"+state+"','"+logged+"')";
       st. executeUpdate(query);
       session.setAttribute("logged",c);
  String query2="insert into tbl_login (regid,username,password,role)values('"+c+"','"+username+"','"+password+"','"+role+"')";
       st. executeUpdate(query2);
     //  session.setAttribute("logged",c);
        response.sendRedirect("srhome.jsp");
         %>

    </body>
</html>
