<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%
    
    String logged=session.getAttribute("logged").toString();
    String empid=session.getAttribute("regid").toString();
    %>
<!DOCTYPE html>
<!--
Template Name: Nodelle
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>Smart Card India</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace">
        <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
     
      </ul>
    </div>
    <div class="fl_right">
      <ul class="nospace">
        <li><i class="fa fa-phone"></i> </li>
        <li><i class="fa fa-envelope-o"></i> info@smartcardindia.com</li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">EVRMS</a></h1>
      <p>EVRMS</p>
    </div>
    <!-- ################################################################################################ -->
    <nav id="mainav" class="fl_right">
     
    </nav>
    <!-- ################################################################################################ -->
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('images/home.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <div>
        <p class="heading">EVRMS</p>
        <h2 class="heading">India Shines Digital</h2>
        <p> </p>
      </div>
      <footer>
        <ul class="nospace inline pushright">
    
        </ul>
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <ul class="nospace group cta">
      <li class="one_third first">
	  
       
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <table border="1">
     
        <tr>
            <th>
         ID
                
            </th>
             <th>
       Designation
                
            </th> <th>
      Description Of work
                
            </th> <th>
    Salary
            </th> 
                    <th>
Action
                
            </th>    
        </tr>   
               <%
    
  //  String logged=(String)session.getAttribute("logged");
    
     Connection con=null;
        Statement st=null,st1=null;
       
        
        String salary="",designation="",description="",id="";
        
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
       st1=con.createStatement();
        ResultSet rs=null,rs1=null;
        String status="",clientname="",deadline="";
       String query="select * from assignments where assignedto='"+empid+"'";
      System.out.println("query  from program"+query);
        rs= st. executeQuery(query);
        String query1=null;
          while(rs.next())
           {
               
              clientname=rs.getString("clientname");
             deadline=rs.getString("deadline");
               status=rs.getString("status");
             
           
     
               
               
               %>
               
               <tr>
                   
                   <td><%=clientname%></td>
                    <td><%=deadline%></td>
                     <td><%=status%></td>
                   
                      
                      
                           
                                 
                                  
                           
                                  <td><a href="updateworkstatus.jsp?id=<%=clientname%>&&deadline=<%=deadline%>&&status=<%=status%>>">Update Schedule</a></td>
               </tr>
               
               <%
           }
          
          


//rs1.close();
rs.close();
          %>
           
        
        
        
    </table>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/card0.jpg');">
  <article class="hoc container clear center"> 
    <!-- ################################################################################################ -->
    <h2 class="font-x3"></h2>
    <p class="btmspace-50">&hellip;</p>
    <p class="nospace"><a class="btn medium" href="#">Other Services &raquo;</a></p>
    <!-- ################################################################################################ -->
  </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">SmartCardIndia Ltd</a></p>
    <p class="fl_right">A Project by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates"></a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>