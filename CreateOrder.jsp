<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>


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
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
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

      <div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
            <ul>
            <li class="submenu active"> <a href="#"><i class="icon icon-th-list"></i> <span>Opportunity Management</span> <span class="label label-important"></span></a>
               <ul>
                    
                    <li><a href="ViewOpp.jsp"><i class="icon icon-search"></i> <span>View Opportunities</span></a></li>
                    <li> <a href="ImportOpp.jsp"><i class="icon icon-table"></i> <span>Import Opportunities</span></a></li>
                    <li><a href="CreateOppReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>

                </ul>
            </li>
            
            
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Project Management</span> <span class="label label-important"></span></a>
                   
                        <ul>
                <li><a href="CreateProject.jsp"><i class="icon icon-home"></i><span>Create Project</span></a></li>
                <li><a href="ViewProject.jsp"><i class="icon icon-search"></i> <span>View Projects</span></a></li>
                 <li><a href="CreateProjectTask.jsp"><i class="icon icon-search"></i><span>Create Task</span></a></li>
                 <li> <a href="UploadDocumentation.jsp"><i class="icon icon-table"></i> <span>Upload Document</span></a></li>
                <li> <a href="ViewProjectTask.jsp"><i class="icon icon-table"></i> <span>View Project Tasks</span></a></li>
                 <li><a href="CreateProReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                
            </ul>
               </li>
               
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Sales Management</span> <span class="label label-important"></span></a>
                   
                  <ul>
               <li><a href="SalesOpportunity.jsp"><i class="icon icon-home"></i><span>View Opportunities</span></a></li>
                <li><a href="ViewAccounts.jsp"><i class="icon icon-home"></i><span>View Accounts</span></a></li>
                <li><a href="CreateSalesReport.jsp"><i class="icon icon-home"></i><span>View Accounts</span></a></li>
                    
            </ul>
                   
                   </li>
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Account Management</span> <span class="label label-important"></span></a>
                   
                   <ul>
                <li><a href="CreateAccont.jsp"><i class="icon icon-home"></i><span>Create Account</span></a></li>
                <li><a href="ViewAccounts.jsp"><i class="icon icon-search"></i> <span>View Accounts</span></a></li>
                 <li> <a href="CreateAccReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                    <li><a href="CreateContact.jsp"><i class="icon icon-home"></i><span>Create Contact</span></a></li>
                <li><a href="ViewContacts.jsp"><i class="icon icon-search"></i> <span>View Contacts</span></a></li>
                 <li> <a href="ViewPDetails.jsp"><i class="icon icon-table"></i> <span>View Product Details</span></a></li>
                
            </ul>
               </li>
         
              
                     <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Contract Management</span> <span class="label label-important"></span></a>
                   
                   <ul>
                <li><a href="CreateContract.jsp"><i class="icon icon-home"></i><span>Create Contract</span></a></li>
                <li><a href="ViewContracts.jsp"><i class="icon icon-search"></i> <span>View Contracts</span></a></li>
                 <li> <a href="ManageContracts.jsp"><i class="icon icon-table"></i> <span>Manage Contracts</span></a></li>
                  <li> <a href="CreateContractReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                 
                
            </ul>
               </li>
               
               
                    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Dashboard</span> <span class="label label-important"></span></a>
                 
               </li>
            
            </ul>
        </div>

        <!--close-left-menu-stats-sidebar-->

        
        <div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Order Management</a> <a href="CreateOpp.jsp" class="current">Create Order</a> </div>
  <h1>Create Order</h1>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Create</h5>
        </div>
        <div class="widget-content nopadding">
          <form class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Order Name :</label> 
              <div class="controls">
                <input type="text" class="span4" placeholder="" /> 
              </div>
             
            </div>
            <div class="control-group">
              <label class="control-label">Order Description :</label>
              <div class="controls">
               <textarea class="span4" ></textarea>
              </div>
            </div>
              
              
               <div class="control-group">
              <label class="control-label">Order Amount :</label>
              <div class="controls">
                <input type="text" class="span4" placeholder="" />
              </div>
            </div>
              
               <div class="control-group">
              <label class="control-label">Order Status :</label>
              <div class="controls">
                <input type="text" class="span4" placeholder="" />
              </div>
            </div>
              
              
                       
              <div class="control-group" class="form-actions">
              <label class="control-label">Contact Name :</label> 
                        <div class="controls">
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contactmanagement";
resultSet = statement.executeQuery(sql);
%>
              

        
            <select class="span4" name="account">
        <%  while(resultSet.next()){ %>
            <option value = "<%=resultSet.getString("contactID")%>"><%=resultSet.getString("contactName")%></option>
        <% } %>
        </select>
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
              </div>
            </div>
              
              <div class="control-group">
              <label class="control-label">Contract Duration :</label>
              <div class="controls">
                <input type="text" class="span4" placeholder="" />
              </div>
            </div>
              
              <div class="control-group" class="form-actions">
              <label class="control-label">Account Name :</label> 
                        <div class="controls">
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from accountmanagement";
resultSet = statement.executeQuery(sql);
%>
              

        
            <select class="span4" name="account">
        <%  while(resultSet.next()){ %>
            <option value = "<%=resultSet.getString("accountID")%>"><%=resultSet.getString("accountName")%></option>
        <% } %>
        </select>
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Due Date</label>
              <div class="controls">
                <input type="text" data-date="01-02-2013" data-date-format="dd-mm-yyyy" value="01-02-2013" class="datepicker span4">
                <span class="help-block">Date with Formate of  (dd-mm-yy)</span> </div>
            </div>
              
                <div class="control-group">
              <label class="control-label">Assign User :</label>
              <div class="controls">
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from employees";
resultSet = statement.executeQuery(sql);
%>
              

        
            <select class="span4" name="employees">
        <%  while(resultSet.next()){ %>
            <option value = "<%=resultSet.getString("employeeID")%>"><%=resultSet.getString("employeeName")%></option>
        <% } %>
        </select>
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
              </div>
            </div>
            
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Save</button>
              <button type="submit" class="btn btn-primary">Reset</button>
              <button type="submit" class="btn btn-info">Edit</button>
              <button type="submit" class="btn btn-danger">Cancel</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
 
</div></div>

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
