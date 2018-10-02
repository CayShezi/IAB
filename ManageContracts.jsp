<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

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
        <li><a href="InvalidateServlet.do"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
                
                <li class=""><a title="" href="InvalidateServlet.do"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>


        <!--sidebar-menu-->
   <div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
            <ul>
            <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Opportunity Management</span> <span class="label label-important"></span></a>
               <ul>
                   
                    <li><a href="ViewOpp.jsp"><i class="icon icon-search"></i> <span>View Opportunities</span></a></li>
                    <li> <a href="ImportOpp.jsp"><i class="icon icon-table"></i> <span>Import Opportunities</span></a></li>
                    

                </ul>
            </li>
            
            
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Project Management</span> <span class="label label-important"></span></a>
                   
                        <ul>
                <li><a href="CreateProject.jsp"><i class="icon icon-home"></i><span>Create Project</span></a></li>
                <li><a href="ViewProject.jsp"><i class="icon icon-search"></i> <span>View Projects</span></a></li>
                 <li><a href="CreateProjectTask.jsp"><i class="icon icon-search"></i><span>Create Task</span></a></li>
               
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
         
              
                     <li class="submenu  active"> <a href="#"><i class="icon icon-th-list"></i> <span>Contract Management</span> <span class="label label-important"></span></a>
                   
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
                <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Contract Management</a> <a href="#" class="current">Manage Contracts</a> </div>
            </div>
            <div class="container-fluid">
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
