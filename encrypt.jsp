<%-- 
    Document   : encrypt
    Created on : 5 Jan, 2019, 5:56:24 PM
    Author     : VENKAT
--%>
<%@page import="com.file.upload.encryption"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.crypto.*" %>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64" %>
<%
     KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
           String id=(String)session.getAttribute("id");
String uname=request.getParameter("uname");

String eamil=request.getParameter("email");

String gender=request.getParameter("gender");

String address=request.getParameter("address");
String image=request.getParameter("image");

String en_uname=new encryption().encrypt(uname,s);
String en_email=new encryption().encrypt(eamil,s);
String en_gender=new encryption().encrypt(gender,s);
String en_address=new encryption().encrypt(address,s);
String en_image=new encryption().encrypt(image,s);



           
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient and Privacy-Preserving Biometric Identification</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">An Efficient and Privacy-Preserving Biometric Identification <small>Scheme in Cloud Computing</small></a></h2>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html" class="active"><span>Home</span></a></li>
          <li><a href="Owner.jsp"><span>Owner</span></a></li>
          <li><a href="User.jsp"><span>User</span></a></li>
          <li><a href="Cloud.jsp"><span>Cloud</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
      
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2>Welcome User Biometric Information<br />
        
			
                                <form action="back.jsp" method="post">
                                   <textarea rows="10" cols="80" name="ok" value="<%=en_email%>"><%=en_email%></textarea> 
                                                               <table cellspacing="5px" cellpadding="5px" align='center'>
                                                                   
	<tr><td> UserName</td><td><input type="text" name="uname" value="<%=en_uname%>" readonly></input></td></tr>
           <tr><td>Email Id</td><td><input type="text" name="email" value="<%=en_email%>"readonly></input></td></tr>
           <tr><td>Gender</td><td><input type="text" name="gender" value="<%=en_gender%>"readonly></input></td></tr>
           <tr><td>Address</td><td><input type="text" name="address" value="<%=en_address%>"readonly></input></td></tr></tr>
			 
                                <tr><td><input type="submit" value="back"></input></td></tr>
                                
			 </table>
                                </form>
         
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
           <li><a href="index.html" class="active"><span>Home</span></a></li>
          <li><a href="Owner.jsp"><span>Owner</span></a></li>
          <li><a href="User.jsp"><span>User</span></a></li>
          <li><a href="Cloud.jsp"><span>Cloud</span></a></li>
          <li><a href="Registration.jsp"><span>Registration</span></a></li>
        </ul>
        
      </div>
        <div class="clr">
            
        </div>
    </div>
  </div>
  <div class="FBG">
    <div class="FBG_resize">
      <div class="blok">
   
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#">GVR</a>. All Rights Reserved</p>
      <p class="rf">Design by <a target="_blank" href="http://www.hotwebsitetemplates.net/">VenkataRao Ganipisetty</a></p>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
</body>
</html>


