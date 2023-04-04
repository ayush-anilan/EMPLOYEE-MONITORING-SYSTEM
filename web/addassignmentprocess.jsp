 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String deadline=request.getParameter("enddate");
   String empid=request.getParameter("empid");
      String clientid=request.getParameter("clientid");
      String status="Assigned";
     Connection con=null;
        Statement st=null;
       // String plotid=null,location=null,area=null,selltype=null,description=null,price=null,image=null,fullimage=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       String query="insert into assignments (clientname,assignedto,deadline,status) values('"+clientid+"','"+empid+"','"+deadline+"','"+status+"')";
      st. executeUpdate(query);
  
%>
<script language="javascript">alert('Work assigned successfully'); window.location.replace('adminhome.jsp');</script>

<%
        


%>