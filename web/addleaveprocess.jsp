 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String deadline=request.getParameter("date");
   String empid=request.getParameter("empid");
      String purpose=request.getParameter("purpose");
            String type=request.getParameter("type");
      String status="Waiting";
     Connection con=null;
        Statement st=null;
       // String plotid=null,location=null,area=null,selltype=null,description=null,price=null,image=null,fullimage=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       String query="insert into leave1 (empid,date,leavetype,purpose,status) values('"+empid+"','"+deadline+"','"+type+"','"+purpose+"','"+status+"')";
      st. executeUpdate(query);
  
%>
<script language="javascript">alert('Leave Applied successfully'); window.location.replace('employeehome.jsp');</script>

<%
        


%>