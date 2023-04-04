<%-- 
    Document   : apptracker
    Created on : Feb 23, 2022, 8:23:41 PM
    Author     : User
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" align="center">
            <th>Date Time</th>
            <th>App Name</th>

       <%
           
           String user="gopi";
           String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
             Connection con=databaseconnection.dbconnection.getConnection();
  //create a new statement using the connection
  Statement st=con.createStatement();
  ResultSet rs=null;

           try {
               
               
               %>
               
               <tr>
               
               
               <%
			String process;
			// getRuntime: Returns the runtime object associated with the current Java application.
			// exec: Executes the specified string command in a separate process.
			Process p = Runtime.getRuntime().exec
    (System.getenv("windir") +"\\system32\\"+"tasklist.exe");
			BufferedReader input = new BufferedReader(new InputStreamReader(p.getInputStream()));
			while ((process = input.readLine()) != null) {
				//out.println(process); // <-- Print all Process here line
                                %>
                                  <td><%=timeStamp%></td>
                                <td><%=process%></td>
                                
                                <%
                                  String query0="insert into apps(username,dt,appname) values('"+user+"','"+timeStamp+"','"+process+"')";
st.executeUpdate(query0);
			%>
               </tr>
                        
                        <%// by line
			}
			input.close();
		} catch (Exception err) {
			err.printStackTrace();
		}
           
           
           
           
           
           
           
           
           %>
                   </table>
    </body>
</html>
