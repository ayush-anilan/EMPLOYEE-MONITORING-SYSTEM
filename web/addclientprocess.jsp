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

        
        String clientname=request.getParameter("clientname");
        
        String address=request.getParameter("address");
        
        String budget=request.getParameter("budget");
                
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String sdate=request.getParameter("sdate");
        
        String cdate=request.getParameter("cdate");
         
       String work=request.getParameter("workdetails");
        
      
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
        String sql = "SELECT * FROM client WHERE clientname = '"+clientname+"'";
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
       String query="insert into client(clientname,clientaddress,clientmobile,clientemail,workdetails,income,startdate,completedate) values('"+clientname+"','"+address+"','"+mobile+"','"+email+"','"+work+"','"+budget+"','"+sdate+"','"+cdate+"')";
       st. executeUpdate(query);
       session.setAttribute("logged",c);

     //  session.setAttribute("logged",c);
        response.sendRedirect("adminhome.jsp");
         %>

    </body>
</html>
