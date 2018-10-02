<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>


<%@page import="za.ac.kbcs.model.SourcesClass"%>
<%@page import="za.ac.kbcs.model.Location"%>
<%@page import="za.ac.kbcs.model.Sector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.kbcs.model.SourceData"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="za.ac.kbcs.model.User"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "kbcsdatabasev5";
String userid = "cassius";
String password = "cayShez@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
String username = (String)session.getAttribute("username");
%>
                
                
                <%
                
                          
   
    
   
       
        String sector1 = "null"; 
        String sector2 = "null";
        String sector3 = "null";
        
        
        
          // location 1
        String location1 = "null";
        String location2 = "null";
        String location3 = "null";
        String location4 = "null";
        String location5 = "null";
        String location6 = "null";
        String location7 = "null";
        String location8 = "null";
        String location9 = "null";

        // location 2
        String location21 = "null";
        String location22 = "null";
        String location23 = "null";
        String location24 = "null";
        String location25 = "null";
        String location26 = "null";
        String location27 = "null";
        String location28 = "null";
        String location29 = "null";

        // location 1
        String location31 = "null";
        String location32 = "null";
        String location33 = "null";
        String location34 = "null";
        String location35 = "null";
        String location36 = "null";
        String location37 = "null";
        String location38 = "null";
        String location39 = "null";

        // Sources1
        String source1 = "null";
        String source2 = "null";
        String source3 = "null";
        String source4 = "null";
        String source5 = "null";
        String source6 = "null";
        String source7 = "null";
        String source8 = "null";
        String source9 = "null";

        // source1 
        String source21 = "null";
        String source22 = "null";
        String source23 = "null";
        String source24 = "null";
        String source25 = "null";
        String source26 = "null";
        String source27 = "null";
        String source28 = "null";
        String source29 = "null";

        // source3
        String source31 = "null";
        String source32 = "null";
        String source33 = "null";
        String source34 = "null";
        String source35 = "null";
        String source36 = "null";
        String source37 = "null";
        String source38 = "null";
        String source39 = "null";
                
                %>
  
                
                
                
                
                
                
                                
                 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from registration where userName = '" + username + "'";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
              
                
             
 source1 = <%=resultSet.getString("industrySector1")%>
 source2 = <%=resultSet.getString("industrySector2")%>
 source3 = <%=resultSet.getString("industrySector3")%>



                                        
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                
                
                
                 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from searchtable where user= '" + username + "'";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
              
                
             
 source1 = <%=resultSet.getString("source1")%>
 source2 = <%=resultSet.getString("source2")%>
 source3 = <%=resultSet.getString("source3")%>
source4 = <%=resultSet.getString("source4")%>
source5 = <%=resultSet.getString("source5")%>
source6 = <%=resultSet.getString("source6")%>
source7 = <%=resultSet.getString("source7")%>
source8 = <%=resultSet.getString("source8")%>
source9 = <%=resultSet.getString("source9")%>
source21 = <%=resultSet.getString("source10")%>
source22 = <%=resultSet.getString("source11")%>
source23 = <%=resultSet.getString("source12")%>
source24 = <%=resultSet.getString("source13")%>
source25 = <%=resultSet.getString("source14")%>
source26 = <%=resultSet.getString("source15")%>
source27 = <%=resultSet.getString("source16")%>
source28 = <%=resultSet.getString("source17")%>
source29 = <%=resultSet.getString("source18")%>
source31 = <%=resultSet.getString("source19")%>
source32 = <%=resultSet.getString("source20")%>
source33 = <%=resultSet.getString("source21")%>
source34 = <%=resultSet.getString("source22")%>
source35 = <%=resultSet.getString("source23")%>
source36 = <%=resultSet.getString("source24")%>
source37 = <%=resultSet.getString("source25")%>
source38 = <%=resultSet.getString("source26")%>
source39 = <%=resultSet.getString("source27")%>
location1 = <%=resultSet.getString("location1")%>
location2 = <%=resultSet.getString("location2")%>
location3 = <%=resultSet.getString("location3")%>
location4 = <%=resultSet.getString("location4")%>
location5 = <%=resultSet.getString("location5")%>
location6 = <%=resultSet.getString("location6")%>
location7 = <%=resultSet.getString("location7")%>
location8 = <%=resultSet.getString("location8")%>
location9 = <%=resultSet.getString("location9")%>

location21 = <%=resultSet.getString("location11")%>
location22 = <%=resultSet.getString("location12")%>
location23 = <%=resultSet.getString("location13")%>
location24 = <%=resultSet.getString("location14")%>
location25 = <%=resultSet.getString("location15")%>
location26 = <%=resultSet.getString("location16")%>
location27 = <%=resultSet.getString("location17")%>
location28 = <%=resultSet.getString("location18")%>
location29 = <%=resultSet.getString("location19")%>

location31 = <%=resultSet.getString("location20")%>
location32 = <%=resultSet.getString("location21")%>
location33 = <%=resultSet.getString("location22")%>
location34 = <%=resultSet.getString("location23")%>
location35 = <%=resultSet.getString("location24")%>
location36 = <%=resultSet.getString("location25")%>
location37 = <%=resultSet.getString("location26")%>
location38 = <%=resultSet.getString("location27")%>
location39 = <%=resultSet.getString("location28")%>



                                        
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                
                



<!DOCTYPE html>
<html lang="en">
    <head>
        <title>IAB</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
        <link rel="stylesheet" href="css/uniform.css" />
        <link rel="stylesheet" href="css/select2.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-media.css" />
        <link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>

        <!--Header-part-->
        <div id="header">
            <h1><a href="dashboard.html">Matrix Admin</a></h1>
        </div>
        <!--close-Header-part--> 

        <!--top-Header-menu-->
          <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="Profile.jsp"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
                
                <li class=""><a title="" href="InvalidateServlet.do"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>


        <!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>Dashboard</a>
  <ul>
    <li class=" active"> <a href="index.jsp"><i class="icon icon-search"></i> <span>Dashboard</span></a> </li>
    <li class="submenu"><a href="Profile.jsp"><i class="icon icon-home"></i> <span>Profile</span></a>
    
          <ul>
                    
                    <li><a href="CreateEmployee.jsp"><i class="icon icon-search"></i> <span>Add Users</span></a></li>
                   <li> <a href="Search2.jsp"><i class="icon icon-search"></i> <span>Search/Filter</span></a> </li>
                   <li> <a href="#"><i class="icon icon-search"></i> <span>Edit Profile</span></a> </li>
                   <li> <a href="ViewEmployees.jsp"><i class="icon icon-search"></i> <span>View Users</span></a> </li>
                   
             

                </ul>
        
         </li>
    <li> <a href="#"><i class="icon icon-search"></i> <span>Leads Management</span></a> </li>
    <li> <a href="#"><i class="icon icon-table"></i> <span>Report</span></a> </li>
  </ul>
</div>

        <!--close-left-menu-stats-sidebar-->

                <div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="" class="tip-bottom">Leads Management</a> <a href="#" class="current">View Leads</a> </div>
  <h1>View Users</h1>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
     <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>View Leads</h5>
          </div>
<form action="SortServlet3.do" method="POST">
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                    
                   <th>Description</th>
                  <th>Date Created</th>
                  <th>Action</th>
                 <th>Selection</th>
				
                </tr>

				                                           
                                            <%     
        
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

 PreparedStatement ps = connection.prepareStatement("select * from sourcedata where (sector LIKE (?) AND Location IN (?, ?, ?, ?, ?, ?, ?, ?, ?) AND sourceName IN(?, ?, ?, ?, ?, ?, ?, ?, ?) ) OR (sector LIKE (?)  AND Location IN (?, ?, ?, ?, ?, ?, ?, ?, ?) AND sourceName IN(?, ?, ?, ?, ?, ?, ?, ?, ?)) OR (sector LIKE (?) AND Location IN (?, ?, ?, ?, ?, ?, ?, ?, ?) AND sourceName IN(?, ?, ?, ?, ?, ?, ?, ?, ?))");

            ps.setString(1, sector1);
            ps.setString(2, location1);
            ps.setString(3, location2);
            ps.setString(4, location3);
            ps.setString(5, location4);
            ps.setString(6, location5);
            ps.setString(7, location6);
            ps.setString(8, location7);
            ps.setString(9, location8);
            ps.setString(10, location9);
            ps.setString(11, source1);
            ps.setString(12, source2);
            ps.setString(13, source3);
            ps.setString(14, source4);
            ps.setString(15, source5);
            ps.setString(16, source6);
            ps.setString(17, source7);
            ps.setString(18, source8);
            ps.setString(19, source9);
            
            ps.setString(20, sector2);
            ps.setString(21, location21);
            ps.setString(22, location22);
            ps.setString(23, location23);
            ps.setString(24, location24);
            ps.setString(25, location25);
            ps.setString(26, location26);
            ps.setString(27, location27);
            ps.setString(28, location28);
            ps.setString(29, location29);
            ps.setString(30, source21);
            ps.setString(31, source22);
            ps.setString(32, source23);
            ps.setString(33, source24);
            ps.setString(34, source25);
            ps.setString(35, source26);
            ps.setString(36, source27);
            ps.setString(37, source28);
            ps.setString(38, source29);
            
            
            ps.setString(39, sector3);
            ps.setString(40, location31);
            ps.setString(41, location32);
            ps.setString(42, location33);
            ps.setString(43, location34);
            ps.setString(44, location35);
            ps.setString(45, location36);
            ps.setString(46, location37);
            ps.setString(47, location38);
            ps.setString(48, location39);
            ps.setString(49, source31);
            ps.setString(50, source32);
            ps.setString(51, source33);
            ps.setString(52, source34);
            ps.setString(53, source35);
            ps.setString(54, source36);
            ps.setString(55, source37);
            ps.setString(56, source38);
            ps.setString(57, source39);

        
           

                ResultSet resultSet2 = ps.executeQuery();




int i=0;
while(resultSet2.next()){
%>
              </thead>
              <tbody>
                <tr class="gradeX">
                  <td><%=resultSet2.getString("sector") %></td>
<td><%=resultSet2.getString("description") %></td>
<td><%=resultSet2.getString("dataCreated") %></td>
<td><%=resultSet2.getString("urlPage") %></td>
<td><input type="checkbox" name="selected" class="with-check"></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
              </tbody>
            </table>
          </div>
              
              <div class="form-actions">
                    <button type="submit" class="btn btn-success">Proceed</button>
                </div>
              
              </form>
        </div>
    </div>
  </div>
 
</div>
        </div>

    </div></div>
<!--Footer-part-->
<div class="row-fluid">
    <div id="footer" class="span12"> 2017 &copy; IAB. Brought to you by KBCS Solutions</div>
</div>
<!--end-Footer-part--> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script> 
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.js"></script> 
<script src="js/masked.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 
<script>
    $('.textarea_editor').wysihtml5();
</script>
</body>
</html>
