<%-- 
    Document   : SendRequest
    Created on : 7 Jan, 2019, 6:09:02 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String id=request.getParameter("userid");
    
    
      String fileid=request.getParameter("fileid");
   
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        Statement st=con.createStatement();
        int i=st.executeUpdate("update request set status='Sent to Cloud' where id='"+id+"' and  fileid='"+fileid+"' ");
        
        if(i>0)
        {
             %>
    <script type="text/javascript">
        window.alert("Data Request  Sent To Cloud");
        window.location="OwnerHome.jsp";
   </script>
   <%
        }
else
{
 %>
    <script type="text/javascript">
        window.alert("Data Request Fail");
        window.location="OwnerHome.jsp";
   </script>
   <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>