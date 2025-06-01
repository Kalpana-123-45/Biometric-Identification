<%-- 
    Document   : SendRequest
    Created on : 7 Jan, 2019, 6:09:02 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    
    String uname=request.getParameter("uname");
    
    String email=request.getParameter("email");
      String fileid=request.getParameter("fileid");
     String status="Waiting";
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into request values('"+id+"','"+uname+"','"+email+"','"+fileid+"','"+status+"','waiting')");
        
        if(i>0)
        {
             %>
    <script type="text/javascript">
        window.alert("Data Request  Sent Sucess");
        window.location="UserHome.jsp";
   </script>
   <%
        }
else
{
 %>
    <script type="text/javascript">
        window.alert("Data Request Fail");
        window.location="UserHome.jsp";
   </script>
   <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>