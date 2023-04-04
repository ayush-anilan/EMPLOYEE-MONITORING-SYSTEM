<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
    String logged=(String)session.getAttribute("logged");
    //   String itemname=(String)session.getAttribute("itemname");
        String fn=logged+".jpg";
    System.out.println("here"+logged);
    
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   String filePath = "D:\\New Folder\\EmployeeLatest-20220324T093540Z-001\\EmployeeLatest\\web\\worklog\\";

   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
System.out.println("inside");
      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("d:\\temp"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         out.println("<html>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                String fieldName = fi.getFieldName();
                String fileName = fi.getName();
                out.println("filename"+fileName);
                System.out.println("filename"+fileName);
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath + logged+".jpg") ;
                
                fi.write( file ) ;
               // out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                   Connection con=null;
        Statement st=null;
        con=databaseconnection.dbconnection.getConnection();
       st=con.createStatement();
        ResultSet rs=null;
       
             String query2="insert into worklog(empid,image) values('"+logged+"','"+fileName+"')";
            // out.println(query2);
             st.executeUpdate(query2);
               
               
            }
               %>
               <script language="javascript">alert('work uploaded successfully');window.location.replace('employeehome.jsp');</script>
               
               
               <%
            }
         
         out.println("</body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>