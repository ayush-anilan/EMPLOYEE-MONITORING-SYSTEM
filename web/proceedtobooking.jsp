<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
     String logged=session.getAttribute("logged").toString();
    
    String role=session.getAttribute("role").toString();   
 String id=request.getParameter("id");
 String station=request.getParameter("station");
 String ownername=request.getParameter("ownername");
 String hslots=request.getParameter("hslots");
 String vslots=request.getParameter("vslots");
 int hslotvalue=Integer.parseInt(hslots);
 int vslotvalue=Integer.parseInt(vslots);
 String ownerregno=request.getParameter("ownername");
           Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
      
        Statement statement =  con.createStatement();
    
    %>
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
      <form name="add.html"  action="processpayment2.jsp"  method="post">

<h1 align="center">MAKE PAYMENT</h1>
<table border="1" style="color: blue">


    <tr><td> ITEM ID	 :<input type="text" name="itemid" value="<%=id%>" readonly="readonly"></td></tr>
    <tr><td> STATION	 :<input type="regno" name="station" value="<%=station%>" readonly="readonly"></td></tr>
      
            <tr><td> OWNER ID :<input type="text" name="ownerid" value="<%=ownername%>" readonly="readonly"></td></tr>
            <tr><td>HSLOTS	 :<input type="text" name="hslots" value="<%=hslots%>" readonly="readonly"></td></tr>
                   <tr><td> VSLOTS	 :<input type="text" name="vslots" value="<%=vslots%>" readonly="readonly"></td></tr>
            
                   <tr><td> SLOT CATEGORY	 :<select name="category"><option value="hslots">HSLOTS</option>
                           
                               <option value="vslots">VSLOTS</option>
                           </select></td></tr>
                  
                 <tr><td>COST :<input type="number" name="cost" value="200" /></td></tr>
           
        
        <input type="hidden" value="<%=ownerregno%>" name="ownername"/>
		<tr><td><input type="submit" value="PROCEED TO PAY"> </td></tr>   <tr><td><input type="reset" value="CANCEL"></td></tr>
</table>
</form>
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