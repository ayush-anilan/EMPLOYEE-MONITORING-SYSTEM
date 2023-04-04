<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
     String logged=session.getAttribute("logged").toString();
    
    String role=session.getAttribute("role").toString();   
 String id=request.getParameter("itemid");
 String station=request.getParameter("station");
 String ownerid=request.getParameter("ownerid");
 String hslots=request.getParameter("hslots");
 String vslots=request.getParameter("vslots");
 String category=request.getParameter("category");
 int hslotvalue=Integer.parseInt(hslots);
 int vslotvalue=Integer.parseInt(vslots);
 String cost=request.getParameter("cost");
 String ownername=request.getParameter("ownername");
if(category.equals("hslots"))
{
    
    hslotvalue=hslotvalue-1;
}
else
{
    vslotvalue=vslotvalue-1;
}
try
{
           Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
      int stock=0;
       st =  con.createStatement();
      ResultSet rs=null,rs1=null;
        //String status="w";
       String query="select * from tbl_owner where ownerregno='"+ownername+"'";
      System.out.println("query  from program"+query);
        rs= st. executeQuery(query);
        String query1=null;
        int newstock=0;
    if(rs.next())
           {
               String date="21/12/2021";
               String status="ordered";
            if(category.equals("hslots"))
            {
                String n=String.valueOf(hslotvalue);
               String query2="update tbl_owner set hslots='"+n+"' where ownerregno='"+ownername+"'";
                     st.executeUpdate(query2);
            }
            else
            {
                  String n=String.valueOf(vslotvalue);
                         String query2="update tbl_owner set vslots='"+n+"' where ownerregno='"+ownername+"'";
                     st.executeUpdate(query2);  
            }
         
             
}
}
catch(Exception e)
{
System.out.println("error in program"+e.getMessage());
}
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
    <form name="add.html"  action="redirect.jsp"  method="post">

<h1 align="center">MAKE PAYMENT</h1>
<table border="1" style="color: blue">


    <tr><td> ITEM ID	 :<input type="text" name="itemid" value="<%=id%>" readonly="readonly"></td></tr>
    <tr><td> STATION	 :<input type="regno" name="item" value="<%=station%>" readonly="readonly"></td></tr>
      
            <tr><td> OWNER:<input type="text" name="category" value="<%=ownerid%>" readonly="readonly"></td></tr>
            <tr><td> HSLOTS	 :<input type="text" name="price" value="<%=hslots%>" readonly="readonly"></td></tr>
                   
                  <tr><td> VSLOTS	 :<input type="text" name="amount" value="<%=vslots%>"></td></tr>
                  
             <tr><td> CATEGORY	 :<input type="text" name="amount" value="<%=category%>"></td></tr>
                       
        <tr><td> COST	 :<input type="text" name="amount" value="<%=cost%>"></td></tr>
                  
        
		<tr><td><input type="submit" value="PROCEED TO PAY"> </td></tr>   <tr><td><input type="reset" value="CANCEL"></td></tr>
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