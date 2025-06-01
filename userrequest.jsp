<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*" %>
<%
                         Connection con=null;
            Statement st= null;
            ResultSet rs=null;
             ResultSet rs1=null;
             ResultSet rs2=null;
            int n=0;     
            


        
             try
                  {
                      Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
             st = con.createStatement();
             rs=st.executeQuery("select * from request where status='Waiting'");
             
                 
             
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
          <li><a href="OwnerHome.jsp" class="active"><span>Home</span></a></li>
         <li><a href="BimetroicIfo.jsp"><span>Biometric Info</span></a></li>
          <li><a href="Encrypted.jsp"><span>Encrypted</span></a></li>
            <li><a href="userrequest.jsp"><span>User Request</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
   <div > 
       <center><h2>USER QUERY REQUEST</h2></center>
       <table  align="center" border="10px" cellpadding="10px" cellspacing="0px">
               <tr>
                   <th><font color="">UserID</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>FILE ID</th>
                  <th>REQUEST TO CLOUD</th>
              </tr>
          <%while(rs.next())
          {
              
              
              %>
              <tr>
                  <td><%=rs.getString(1)%></td>
                  <td><%=rs.getString(2)%></td>
              <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><a href="SendToCloud.jsp?userid=<%=rs.getString(1)%>&fileid=<%=rs.getString(4)%>">Send Query</a></td>
                    
                     
                  
              </tr>
             
          
          <% 
              }
 }
              catch(Exception e)
                     {
                     out.println(e);
                     }
%>
          </table><br></br>
       <center> <a href="OwnerHome.jsp"><font size="5" color="blue">Back</font></a></center>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
          
        
         
           
            
        </table>
        </form>
      </div>
      <div class="right">
       
        
      </div>
      <div class="clr"></div>
    </div>
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
