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
        String na=request.getParameter("empname");
        
        String pas=request.getParameter("emppassword");
        
   
         Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
  
       String query="select * from employee where empname='"+na+"' and emppassword='"+pas+"'";
        rs= st.executeQuery(query);
        out.println(query);
          if(rs.next())
           {
               
               
            String role="supervisor";      
             String username=rs.getString("empname");
                       String regid=rs.getString("empid");
             String password=rs.getString("emppassword");
                       String age=rs.getString("empage");
             String address=rs.getString("empaddress");
             String team=rs.getString("team");
                   String designation=rs.getString("empdesignation");
             String mobile=rs.getString("empmobile");
                     String email=rs.getString("empemail");
                             String gender=rs.getString("empgender");
           session.setAttribute("username",username);
            session.setAttribute("role", role);
                 session.setAttribute("team", team);
                 session.setAttribute("empage", age);
                session.setAttribute("empaddress", address);
                      session.setAttribute("empmobile", mobile);
                            session.setAttribute("empemail",email);
                                  session.setAttribute("empgender", gender);
                                        session.setAttribute("empdesignation", designation);
                                                       session.setAttribute("regid",regid);
          response.sendRedirect("staffhome.jsp");
          
             
        
       
           }
      

      %>
    </body>
</html>