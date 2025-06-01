<%-- 
    Document   : cloudlogin
    Created on : 17 Dec, 2018, 9:20:11 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username=request.getParameter("username");
    
    String password=request.getParameter("password");
    
if(username.equals("cloud")&&password.equals("cloud"))
{
   %>
    <script type="text/javascript">
        window.alert(" Cloud Login Sucess");
        window.location="CloudHome.jsp";
   </script>
   <%
       session.setAttribute("username",username);
}
else
{
    %>
    <script type="text/javascript">
        window.alert(" Cloud Login Fail");
        window.location="Cloud.jsp";
   </script>
   <%
}
%>