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
       String query="delete from tbl_staff where regid='"+regid+"'";
      st. executeUpdate(query);
            String query2="delete from tbl_login where regid='"+regid+"'";
      st. executeUpdate(query2);
%>
<script language="javascript">alert(' Deleted'); window.location.replace('index.html');</script>

<%
        


%>