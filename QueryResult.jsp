<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*"%>
<%
    String id=(String)session.getAttribute("id");
    
   String username=(String)session.getAttribute("username");
   
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from request where id='"+id+"'");
    
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient and Privacy-Preserving Biometric Identification</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style>
    table{
        border:1px solid black;
    }
    table tr th{
        border:3px solid black;
        background: #ea7d1b;
        color:brown;
    }
    table tr td{
       background: whitesmoke;
        text-align: center;
      width:200px; 
      color:green;
    }
</style>
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
           <li><a href="UserHome.jsp" class="active"><span>Home</span></a></li>
          <li><a href="DataRequest.jsp"><span>Data Request</span></a></li>
          <li><a href="QueryResult.jsp"><span>Query Result</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
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

            <table style="margin-top: 50px;">
                <tr><th>File ID</th>
                <th>File Key</th>
                <th>Download</th></tr>
			 <%while(rs.next())
			{
                          
				%>
                               
                                <tr>
                                    <td><%=rs.getString("fileid")%></td>
                                     <td><%=rs.getString("fkey")%></td>
                                     <td><a href="download.jsp?id=<%=id%>&fkey=<%=rs.getString("fkey")%>&fid=<%=rs.getString("fileid")%>">Download</a></td>
                                </tr>                
			 <%
	}
}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
                                        
			 </table>
                              
         
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
           <li><a href="UserHome.jsp" class="active"><span>Home</span></a></li>
          <li><a href="DataRequest.jsp"><span>Data Request</span></a></li>
          <li><a href="QueryResult.jsp"><span>Query Result</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
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
