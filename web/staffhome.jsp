<%
    String logged=session.getAttribute("username").toString();
        //String logged=session.getAttribute("username").toString();   
        String role=session.getAttribute("role").toString();
    String team=session.getAttribute("team").toString();
        //String logged=session.getAttribute("logged").toString();
    
    
    String empid=session.getAttribute("regid").toString();
    String empname=session.getAttribute("username").toString();
    String empage=session.getAttribute("empage").toString();
    String empgender=session.getAttribute("empgender").toString();
    String empaddress=session.getAttribute("empaddress").toString();
    String empdesignation=session.getAttribute("empdesignation").toString();
    String empmobile=session.getAttribute("empmobile").toString();
    String empmail=session.getAttribute("empemail").toString();
    
    %>
<html>
<head>
<title>EVRMS</title>
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
      <p></p>
    </div>
    <!-- ################################################################################################ -->
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="srhome.jsp">Home</a></li>

          <ul>
              
            
     
           
        
           

          </ul>
        </li>
     <li><a class="drop" href="manageteam.jsp">Manage Team</a>
          <ul>
              
                  <li><a href="manageleave.jsp">Manage Leaves </a></li>
            <li><a href="staffhome.jsp">My Profile</a></li>
            
                 <li><a href="apptracker.jsp">Track Apps</a></li>
                      <li><a href="inactiveusers.jsp">Track Inactivity</a></li>
                 
                  
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
          <p class="heading">Welcome,<%=logged%></p>
        <h2 class="heading"></h2>
        <p></p>
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
  

<form action="staffloginprocess.jsp" method="post">

     <h1 align="center">EMPLOYEE PROFILE</h1>
<table border="1" style="color: blue">


          <tr><td>  NAME :<input type="text" name="clientname" value="<%=empname%>" required/></td></tr>
      
      
      
               
 <tr><td>  NAME :<input type="text" name="clientname" value="<%=empname%>" required/></td></tr>
 
  <tr><td>  AGE :<input type="text" name="clientname" value="<%=empage%>" required/></td></tr>
  
  
   <tr><td>  GENDER :<input type="text" name="clientname" value="<%=empgender%>" required/></td></tr>
   
   
    <tr><td>  ADDRESS :<input type="text" name="clientname" value="<%=empaddress%>" required/></td></tr>
    
    
    
     <tr><td>  DESIGNATION :<input type="text" name="clientname" value="<%=empdesignation%>" required/></td></tr>
     
     
      <tr><td>  MOBILE :<input type="text" name="clientname" value="<%=empmobile%>" required/></td></tr>
      
      
      
       <tr><td>  EMAIL :<input type="text" name="clientname" value="<%=empmail%>" required/></td></tr>
     
                  
                  
            
        


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