<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*"%>
<%
    String id=(String)session.getAttribute("id");
   
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from userreg where id='"+id+"'");
    
%>
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
        
			 <%while(rs.next())
			{
				%>
                                <form action="encrypt.jsp" method="post">
                                <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="view3.jsp?id=<%=id%>" width="200" height="200" />  </center> 
                                                               <table cellspacing="5px" cellpadding="5px" align='center'>
	<tr><td> UserName</td><td><input type="text" name="uname" value="<%=rs.getString(2)%>" readonly></input></td></tr>
           <tr><td>Email Id</td><td><input type="text" name="email" value="<%=rs.getString(3)%>"readonly></input></td></tr>
           <tr><td>Gender</td><td><input type="text" name="gender" value="<%=rs.getString(5)%>"readonly></input></td></tr>
           <tr><td>Address</td><td><input type="text" name="address" value="<%=rs.getString(6)%>"readonly></input></td></tr></tr>
           
			 <%}
	}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
                                <tr><td><input type="submit" value="Encrypt"></input></td></tr>
                                
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
