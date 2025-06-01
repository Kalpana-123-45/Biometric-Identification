<%-- 
    Document   : sendQuery
    Created on : Mar 18, 2019, 2:09:32 PM
    Author     : Acer
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%Random r=new Random();
int ii=r.nextInt(100000+500)-5000;
String m=""+ii;
String id=request.getParameter("id");
String fid=request.getParameter("fid");
System.out.println(id);
System.out.println(fid);
try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        Statement st = con.createStatement();
       int i=st.executeUpdate("update request set status='sent to user',fkey='"+m+"' where fileid='"+fid+"'and id='"+id+"'");   
    if(i>0){
       response.sendRedirect("EncryptQuery.jsp?msg=successfully send to user"); 
    }else{
        response.sendRedirect("EncryptQuery.jsp?msg=Failed send to user");
    }
    
}catch(Exception e){
    out.println(e);
}
%>