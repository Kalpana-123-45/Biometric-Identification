<%-- 
    Document   : Userlogin
    Created on : 7 Jan, 2019, 5:38:50 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
  String username=request.getParameter("username");
  
  String password=request.getParameter("password");
  try
  {
       Class.forName("com.mysql.jdbc.Driver");
           Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from user where username='"+username+"' and password='"+password+"'");
            if(rs.next())
            {
                String id=rs.getString(1);
            %>
    <script type="text/javascript">
        window.alert("Login Sucess");
        window.location="UserHome.jsp";
   </script>
   <%
       session.setAttribute("username",username);
        session.setAttribute("id",id);
}
else
{
    %>
    <script type="text/javascript">
        window.alert("Login Fail");
        window.location="User.jsp";
   </script>
   <%
}

  }
  catch(Exception e)
  {
  out.println(e);
}
%>
