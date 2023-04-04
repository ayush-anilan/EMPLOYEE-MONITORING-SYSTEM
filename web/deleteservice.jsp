 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String regid=request.getParameter("id");
String ownerid=request.getParameter("service");
     Connection con=null;
        Statement st=null;
       // String plotid=null,location=null,area=null,selltype=null,description=null,price=null,image=null,fullimage=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       String query="delete from tbl_services where id='"+regid+"' and service='"+ownerid+"'";
      st. executeUpdate(query);

%>
<script language="javascript">alert(' Deleted'); window.location.replace('srhome.jsp');</script>

<%
        


%>