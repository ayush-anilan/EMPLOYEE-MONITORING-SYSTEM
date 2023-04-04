 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%
           ResultSet rs=null,rs1=null;       
    try{

     Connection con=null;
        Statement st=null,st1=null;
       // String plotid=null,location=null,area=null,selltype=null,description=null,price=null,image=null,fullimage=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
       st1=con.createStatement();

        String empid="",empname="",empdesignation="",empsalary="";

String month=request.getParameter("month");
String query="select * from employee";
st=con.createStatement();
st1=con.createStatement();
rs=st.executeQuery(query);
while(rs.next())
{
    empid=rs.getString("empid");
    empname=rs.getString("empname");
    empdesignation=rs.getString("empdesignation");
    String q1="select * from designations where designation='"+empdesignation+"'";
 rs1=st.executeQuery(q1);

    if(rs1.next())
    {
        empsalary=rs1.getString("salary");
    }
    String q2="insert into payroll (empid,empname,empdesignation,empsalary,empmonth) values('"+empid+"','"+empname+"','"+empdesignation+"','"+empsalary+"','"+month+"')";
    
    st1.executeUpdate(q2);
   
    




%>
<%
}
    }
catch(Exception e)
{


}
  rs1.close();
rs.close();  
%>
<script  language="javascript">alert('posted  successfully');window.location.replace('salaryposting.jsp');</script>