
<%@page import="java.sql.*"%>
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
          <li><a href="CloudHome.jsp" class="active"><span>Home</span></a></li>
          <li><a href="BimetroicInfo.jsp"><span>Biometric Info</span></a></li>
          <li><a href="EncryptQuery.jsp"><span>Encrypt Query</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
   
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
           <center><h2>BIOMETRIC INFORMATION ENCRYPTED</h2></center>
       <table  align="center" border="10px" cellpadding="10px" cellspacing="0px">
               <tr>
                 
                  <th>Name</th>
                  <th>Email</th>
                  
                  <th>Request To Cloud</th>
              </tr>
        <%
                         Connection con=null;
            Statement st= null;
            Statement st1= null;
            ResultSet rs=null;
             ResultSet rs1=null;
             ResultSet rs2=null;
            int n=0;     
            
       
             try
                  {
                      Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
             st = con.createStatement();
             st1=con.createStatement();
             ResultSet rs11=st1.executeQuery("select * from request where status='Sent to Cloud'");
             while(rs11.next()){
             String id1=rs11.getString("id");
             String fileid=rs11.getString("fileid");
             
             rs=st.executeQuery("select * from userreg1 where id='"+id1+"'");
             
                 
             
                         %>
                         <%while(rs.next())
          {
           String id=rs.getString(1);
              
              %>
              <tr>
               
                  <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>
                   <td><a href="sendQuery.jsp?id=<%=id%>&fid=<%=fileid%>">Send Query</a></td>
                  
              </tr>
             
          
          <% 
              }
 }
}
              catch(Exception e)
                     {
                     out.println(e);
                     }
%>
          </table><br></br>
           
         </div>
      
       
      </div>
      <div class="clr"></div>
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
