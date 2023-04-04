 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String regid=request.getParameter("id");

     Connection con=null;
        Statement st=null;
       // String plotid=null,location=null,area=null,selltype=null,description=null,price=null,image=null,fullimage=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       String query="delete from client where id='"+regid+"'";
      st. executeUpdate(query);

%>
<script language="javascript">alert(' Client Deleted Successfully '); window.location.replace('adminhome.jsp');</script>

<%
        


%>