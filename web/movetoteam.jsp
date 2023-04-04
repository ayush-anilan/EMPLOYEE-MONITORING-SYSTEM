<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    
   String id=request.getParameter("id");

    
    
    
    
    %>
<html>
<head>
<title>EMS</title>
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
        <li><a href="adminhome.jsp"><i class="fa fa-lg fa-home">Home</i></a></li>
  
      </ul>
    </div>
    <div class="fl_right">
      <ul class="nospace">
        <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
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
      <h1><a href="index.html">EMS</a></h1>
      
      <p>EMS</p>
    </div>
    <!-- ################################################################################################ -->
    <nav id="mainav" class="fl_right">
    
        
        
           <ul class="clear">
        <li class="active"><a href="adminhome.jsp">Home</a></li>
        <li><a class="drop" href="addusers.jsp">Employees</a>
          <ul>
              
                  <li><a href="addemployee.jsp">Add Employees</a></li>
            <li><a href="listemployees.jsp">Manage Employees</a></li>
          
           

          </ul>
        </li>
     <li><a class="drop" href="addusers.jsp">Clients</a>
          <ul>
            <li><a href="addclient.jsp">Add Client</a></li>
                <li><a href="listclients.jsp">Manage Client</a></li>
        
   
          </ul>
        </li>
        
        
           <li><a class="drop" href="addusers.jsp">Designations</a>
          <ul>
            <li><a href="adddesignation.jsp">Add Designation</a></li>
                <li><a href="listdesignation.jsp">Manage Designation</a></li>
        
   
          </ul>
        </li>
        
        
           <li><a class="drop" href="addusers.jsp">Payroll</a>
          <ul>
            <li><a href="salaryposting.jsp">Salary posting</a></li>
                <li><a href="liststations.jsp">Manage Salary</a></li>
                    <li><a href="otmanage.jsp">OT Management</a></li>
  
          </ul>
        </li>
        
        
           <li><a class="drop" href="addusers.jsp">Assignments</a>
          <ul>
            <li><a href="addassignments.jsp">Assign Work</a></li>
                <li><a href="listassignments.jsp">Manage Assignments</a></li>
         <li><a href="manageworkstatus.jsp">View Work Status</a></li>
         
         
          <li><a href="manageidlelog.jsp">View Idle Log</a></li>
      <li><a href="index.html">Logout</a></li>
          </ul>
        </li>
        
        
        
        
        
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
        <p class="heading">EVM</p>
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
    <form name="add.html"  action="movetoteamprocess.jsp"  method="post">

<h1 align="center">PROMOTE EMPLOYEE</h1>
<table border="1" style="color: blue">


          <tr><td> EMPLOYEE ID :<input type="text" name="empid" value="<%=id%>" required/></td></tr>

                    <%
                        
                   Connection con=null;
        Statement st=null,st1=null;
        String regid=null,role=null,stationname=null,ownerregno=null,hslots=null,vslots=null,mobile=null,email=null,username=null,housename=null,housenumber=null,street=null,post=null,district=null,state=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
       st1=con.createStatement();
        ResultSet rs=null,rs1=null;
        String status="w";

%>
      
      
<tr><td> NEW TEAM	 :
      <input name="team" type="text"/> </td></tr>
            
            <tr>
                
                
                <td>Role:
                <select name="role"><option value="employee">Employee</option><option value="supervisor">Supervisor</option></select></td>
            </tr>
        

		<tr><td><input type="submit" value="ADD To Team"> </td></tr>   <tr><td><input type="reset" value="CANCEL"></td></tr>
</table>
</form>
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