<%-- 
    Document   : cloudlogin
    Created on : 17 Dec, 2018, 9:20:11 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username=request.getParameter("username");
    
    String password=request.getParameter("password");
    
if(username.equals("owner")&&password.equals("owner"))
{
   %>
    <script type="text/javascript">
        window.alert(" Owner Login Sucess");
        window.location="OwnerHome.jsp";
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