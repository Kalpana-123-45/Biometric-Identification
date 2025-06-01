<%-- 
    Document   : download1
    Created on : Mar 18, 2019, 2:56:45 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
               String fkey1=request.getParameter("fkey");
               String uid=request.getParameter("uid");
               String fid=request.getParameter("fid");
          
               System.out.println(fkey1);
                System.out.println(uid);
                 System.out.println(fid);
             try{
               Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select u.imgname from userreg u,request r where u.id='"+uid+"' and r.id='"+uid+"' and r.fileid='"+fid+"'and r.fkey='"+fkey1+"'");
       if(rs.next()){
           String imgname=rs.getString("imgname");
           response.sendRedirect("Download?filename="+imgname);
       }else{
           response.sendRedirect("QueryResult.jsp?msg=verification failed");
       }
       
    
             }
               
catch(Exception e){
 out.println(e);  
}%>

