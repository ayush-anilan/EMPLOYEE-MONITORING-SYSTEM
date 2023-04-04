<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    

     Connection con=null;
        Statement st=null,st1=null;
       
        
        String salary="",designation="",description="",id="";
        
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
       st1=con.createStatement();
        ResultSet rs=null,rs1=null;

String clientname=request.getParameter("clientname");
String deadline=request.getParameter("deadline");
String status=request.getParameter("status");
String query="update assignments set status='"+status+"' wherfe clientname='"+clientname+"'";
st.executeUpdate(query);
response.sendRedirect("employeehome.jsp");


%>