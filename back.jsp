<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
        <%
        String uname=request.getParameter("uname");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
        String address=request.getParameter("address");
         String id=(String)session.getAttribute("id");
         
         System.out.println(id);
         try
         {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select count(*) from userreg1 where id='"+id+"'");
             while(rs.next())
             {
                 int count=rs.getInt(1);
                 if(count==0)
                 {
                     int i=st.executeUpdate("insert into userreg1 values('"+id+"','"+uname+"','"+email+"','"+gender+"','"+address+"')");
                     if(i>0)
                     {
                         %>
                         <script type="text/javascript">
                             window.alert("Biometric Information Encrypted And Stored ");
                             window.location="OwnerHome.jsp";
                             </script>
                         <%
                     }
else
{
 %>
                         <script type="text/javascript">
                             window.alert("Biometric Information Fails To Stored ");
                             window.location="OwnerHome.jsp";
                             </script>
                         <%
}
                 }

else
{
 %>
                         <script type="text/javascript">
                             window.alert("Biometric Information Alredy Avalibale Form This User ");
                             window.location="OwnerHome.jsp";
                             </script>
                         <%
}
}
             
         }

         catch(Exception e)
         {
             out.println(e);
         }
        
        %>
