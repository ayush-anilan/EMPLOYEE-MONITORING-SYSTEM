 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id=request.getParameter("id");

     Connection con=null;
        Statement st=null;
       // String plotid=null,location=null,area=null,selltype=null,description=null,price=null,image=null,fullimage=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
        String status="ok";
       String query="update tbl_booking set status='"+status+"' where id='"+id+"'";
      st. executeUpdate(query);

%>
<script language="javascript">alert(' Deleted'); window.location.replace('srstaffhome.jsp');</script>

<%
        


%>