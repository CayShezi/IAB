
<%
    String username = (String) session.getAttribute("username");
%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="za.ac.kbcs.dao.DaoClasses"%>
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
    ResultSet resultSet2 = null;
    ResultSet resultSet3 = null;
    ResultSet resultSet4 = null;

    int totalTask = 0;
    int totalCompleted = 0;
    int pecentage = 0;
    String status = "";
    String color = "";
%>

  <%
        String reportCreate = "";
        String reportRead = "";

        String oppCreate = "";
        String oppRead = "";
        String oppUpdate = "";
        String oppDelete = "";

        String projectCreate = "";
        String projectRead = "";
        String projectUpdate = "";
        String projectDelete = "";

        String salesCreate = "";
        String salesRead = "";
        String salesUpdate = "";
        String salesDelete = "";

        String accountCreate = "";
        String accountRead = "";
        String accountUpdate = "";
        String accountDelete = "";

        String profileCreate = "";
        String profileRead = "";
        String profileUpdate = "";
        String profileDelete = "";

        String reportCreateLink = "";
        String reportReadLink = "";

        String oppCreateLink = "";
        String oppReadLink = "";
        String oppUpdateLink = "";
        String oppDeleteLink = "";

        String projectCreateLink = "";
        String projectReadLink = "";
        String projectUpdateLink = "";
        String projectDeleteLink = "";

        String salesCreateLink = "";
        String salesReadLink = "";
        String salesUpdateLink = "";
        String salesDeleteLink = "";

        String accountCreateLink = "";
        String accountReadLink = "";
        String accountUpdateLink = "";
        String accountDeleteLink = "";

        String profileCreateLink = "";
        String profileReadLink = "";
        String profileUpdateLink = "";
        String profileDeleteLink = "";
        String  dashboardLink = "index.jsp";
        String role = "";


    %>  



    <%                                                try {
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String sql = "select * from employees where username = '" + username + "'";
            resultSet = statement.executeQuery(sql);

            int i = 0;
            while (resultSet.next()) {
    %>


    <%
        reportCreate = resultSet.getString("reportcreate");
        reportRead = resultSet.getString("reportview");
        oppCreate = resultSet.getString("oppCreate");
        oppRead = resultSet.getString("oppRead");
        oppUpdate = resultSet.getString("oppUpdate");
        oppDelete = resultSet.getString("oppDelete");
        projectCreate = resultSet.getString("projectCreate");
        projectRead = resultSet.getString("projectRead");
        projectUpdate = resultSet.getString("projectUpdate");
        projectDelete = resultSet.getString("projectDelete");
        salesCreate = resultSet.getString("salesCreate");
        salesRead = resultSet.getString("salesRead");
        salesUpdate = resultSet.getString("salesUpdate");
        salesDelete = resultSet.getString("salesDelete");

        accountCreate = resultSet.getString("accountCreate");
        accountRead = resultSet.getString("accountRead");
        accountUpdate = resultSet.getString("accountUpdate");
        accountDelete = resultSet.getString("accountDelete");

        profileCreate = resultSet.getString("profileCreate");
        profileRead = resultSet.getString("profileRead");
        profileUpdate = resultSet.getString("profileUpdate");
        profileDelete = resultSet.getString("profileDelete");
        role = resultSet.getString("role");
        

        if (reportCreate.equalsIgnoreCase("No")) {
            reportCreateLink = "hide";

        } else if (reportCreate.equalsIgnoreCase("Yes")) {

            reportCreateLink = "";
        }

        if (reportRead.equalsIgnoreCase("No")) {

            reportReadLink = "hide";
        } else if (reportRead.equalsIgnoreCase("Yes")) {

            reportReadLink = "";
        }
        if (oppCreate.equalsIgnoreCase("No")) {
            oppCreateLink = "hide";

        } else if (oppCreate.equalsIgnoreCase("Yes")) {

            oppCreateLink = "";
        }

        if (oppRead.equalsIgnoreCase("No")) {

            oppReadLink = "hide";
        } else if (oppRead.equalsIgnoreCase("Yes")) {

            oppReadLink = "";
        }
        if (oppUpdate.equalsIgnoreCase("Yes")) {

            oppUpdateLink = "";
        } else if (oppUpdate.equalsIgnoreCase("No")) {

            oppUpdateLink = "hide";
        }
        if (oppDelete.equalsIgnoreCase("No")) {

            oppDeleteLink = "hide";
        } else if (oppDelete.equalsIgnoreCase("Yes")) {

            oppDeleteLink = "";
        }
        if (projectCreate.equalsIgnoreCase("No")) {

            projectCreateLink = "hide";

        } else if (projectCreate.equalsIgnoreCase("Yes")) {

            projectCreateLink = "";
        }
        if (projectRead.equalsIgnoreCase("No")) {

            projectReadLink = "hide";

        } else if (projectRead.equalsIgnoreCase("Yes")) {

            projectReadLink = "";
        }
        if (projectUpdate.equalsIgnoreCase("No")) {

            projectUpdateLink = "hide";

        } else if (projectUpdate.equalsIgnoreCase("Yes")) {

            projectUpdateLink = "";
        }
        if (projectDelete.equalsIgnoreCase("No")) {

            projectDeleteLink = "hide";

        } else if (projectDelete.equalsIgnoreCase("Yes")) {

            projectDeleteLink = "";
        }
        if (salesCreate.equalsIgnoreCase("Yes")) {

            salesCreateLink = "";
        } else if (salesCreate.equalsIgnoreCase("No")) {

            salesCreateLink = "hide";
        }
        if (salesRead.equalsIgnoreCase("Yes")) {

            salesReadLink = "";
        } else if (salesRead.equalsIgnoreCase("No")) {

            salesReadLink = "hide";
        }
        if (salesUpdate.equalsIgnoreCase("Yes")) {

            salesUpdateLink = "";
        } else if (salesUpdate.equalsIgnoreCase("No")) {

            salesUpdateLink = "hide";
        }
        if (salesDelete.equalsIgnoreCase("Yes")) {

            salesDeleteLink = "";
        } else if (salesDelete.equalsIgnoreCase("No")) {

            salesDeleteLink = "hide";
        }
        if (accountDelete.equalsIgnoreCase("Yes")) {

            accountDeleteLink = "";
        } else if (accountDelete.equalsIgnoreCase("No")) {

            accountDeleteLink = "hide";
        }
        if (accountCreate.equalsIgnoreCase("Yes")) {

            accountCreateLink = "";
        } else if (accountCreate.equalsIgnoreCase("No")) {

            accountCreateLink = "hide";
        }
        if (accountRead.equalsIgnoreCase("Yes")) {

            accountReadLink = "";
        } else if (accountRead.equalsIgnoreCase("No")) {

            accountReadLink = "hide";
        }
        if (accountUpdate.equalsIgnoreCase("Yes")) {

            accountUpdateLink = "";
        } else if (accountUpdate.equalsIgnoreCase("No")) {

            accountUpdateLink = "hide";
        }
        if (profileCreate.equalsIgnoreCase("No")) {
            profileCreateLink = "hide";
        } else if (profileCreate.equalsIgnoreCase("Yes")) {
            profileCreateLink = "";

        }
        if (profileRead.equalsIgnoreCase("No")) {
            profileReadLink = "hide";
        } else if (profileRead.equalsIgnoreCase("Yes")) {
            profileReadLink = "";

        }
        if (profileUpdate.equalsIgnoreCase("No")) {
            profileUpdateLink = "hide";
        } else if (profileUpdate.equalsIgnoreCase("Yes")) {
            profileUpdateLink = "";

        }
        if (profileDelete.equalsIgnoreCase("No")) {
            profileDeleteLink = "hide";
        } else if (profileDelete.equalsIgnoreCase("Yes")) {
            profileDeleteLink = "";

        }
        
        if(role.equalsIgnoreCase("employee"))
        {
        
            dashboardLink = "indexEmp.jsp";
            
        }


    %>



    <%            i++;
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
        <link rel="stylesheet" href="css/fullcalendar.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-media.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/jquery.gritter.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
        <script src="js/modernizr.js"></script>
        <link rel="stylesheet" href="style/style.css">

        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="amcharts/amcharts.js" type="text/javascript"></script>
        <script src="amcharts/funnel.js" type="text/javascript"></script>
         <script src="amcharts/serial.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/animate/animate.min.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
        
        <script>

            var chart;
            var data = [
                {
                    "title": "Lead Management",
                    "value": 300
                },
                {
                    "title": "Opportunity Management",
                    "value": 123
                },
                {
                    "title": "Projects",
                    "value": 98
                },
                {
                    "title": "Sales",
                    "value": 72
                }
            ];

            AmCharts.ready(function () {

                chart = new AmCharts.AmFunnelChart();
                chart.titleField = "title";
                chart.balloon.cornerRadius = 0;
                chart.marginRight = 220;
                chart.marginLeft = 15;
                chart.labelPosition = "right";
                chart.funnelAlpha = 0.9;
                chart.valueField = "value";
                chart.dataProvider = data;
                chart.startX = 0;
                chart.balloon.animationTime = 0.2;
                chart.neckWidth = "40%";
                chart.startAlpha = 0;
                chart.neckHeight = "30%";
                chart.balloonText = "[[title]]:<b>[[value]]</b>";

                chart.creditsPosition = "top-right";
                chart.write("chartdiv");
            });
        </script>
        
        
   
    </head>
    <body>

        <!--Header-part-->
        <div id="header">
            <h1><a href="dashboard.html">IAB</a></h1>
        </div>
        <!--close-Header-part--> 


        <!--top-Header-menu-->
        <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                    </ul>
                </li>
                <li class=""><a title="" href="InvalidateServlet.do"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>
        <!--close-top-Header-menu-->
        <!--start-top-serch-->

        <!--close-top-serch-->
        <!--sidebar-menu-->
         <div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
        <ul>

            <li  class="active"> <a href="<%=dashboardLink%>"><i class="icon icon-search"></i> <span>Dashboard</span></a> </li>
            <li class="submenu"><a href="Profile.jsp"><i class="icon icon-home"></i> <span>Profile</span></a>

                <ul>

                    <li class="<%=profileCreateLink%>"><a href="CreateEmployee.jsp"><i class="icon icon-search"></i> <span>Add Users</span></a></li>
                    <li><a href="Search2.jsp"><i class="icon icon-search"></i> <span>Search/Filter</span></a> </li>
                    <li> <a href="PersonalProfileEdit.jsp"><i class="icon icon-search"></i> <span>Edit Profile</span></a> </li>
                    <li class="<%=profileReadLink%>"> <a href="ViewEmployees.jsp"><i class="icon icon-search"></i> <span>View Users</span></a> </li>



                </ul>

            </li>
            <li> <a href="Report.jsp"><i class="icon icon-search"></i> <span>Leads Management</span></a> </li>

            <%

            %>
              <li class="<%=reportCreateLink%>"> <a class="<%=reportCreateLink%>" href="MainReport.jsp"><i class="icon icon-table"></i> <span>Report</span></a> </li>
            <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Opportunity Management</span> <span class="label label-important"></span></a>
                <ul>

                    <li class="<%=oppReadLink%>"><a href="ViewOpp.jsp"><i class="icon icon-search"></i> <span>View Opportunities</span></a></li>
                    <li class="<%=oppCreateLink%>"> <a href="ImportOpp.jsp"><i class="icon icon-table"></i> <span>Import Opportunities</span></a></li>


                </ul>
            </li>


            <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Project Management</span> <span class="label label-important"></span></a>

                <ul>
                    <li class="<%=projectCreateLink%>"><a href="CreateProject2.jsp"><i class="icon icon-home"></i><span>Create Project</span></a></li>
                    <li class="<%=projectReadLink%>"><a href="currentProject.jsp"><i class="icon icon-search"></i> <span>View Projects</span></a></li>
                    <li class="<%=projectReadLink%>"> <a href="ViewProjectTask.jsp"><i class="icon icon-table"></i> <span>View Project Tasks</span></a></li>
                    <li class="<%=reportCreateLink%>"><a href="CreateProReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>

                </ul>
            </li>

            <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Sales Management</span> <span class="label label-important"></span></a>

                <ul>
                    <li class="<%=salesReadLink%>"><a href="SalesOpportunity.jsp"><i class="icon icon-home"></i><span>Manage Sales</span></a></li>
                    <li lass=""><a href="CreateSalesReport.jsp"><i class="icon icon-home"></i><span>Create Report</span></a></li>

                </ul>

            </li>
            <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Account Management</span> <span class="label label-important"></span></a>

                <ul>
                    <li class="<%=accountCreateLink%>"><a href="CreateContract2.jsp"><i class="icon icon-home"></i><span>Create Account</span></a></li>

                    <li class="<%=accountReadLink%>"><a href="ViewContracts.jsp"><i class="icon icon-home"></i><span>Manage Accounts</span></a></li>

                    <li class="<%=reportCreateLink%>"> <a href="CreateAccReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>


                </ul>
            </li>

        </ul>


    </div>
        <!--sidebar-menu-->

        <!--main-container-part-->
        <div id="content">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <!--End-breadcrumbs-->

            <!--Action boxes-->
            <div class="container-fluid">
                <a href="#" class="nav-toggle">Toggle Navigation</a>
                
                 <div class="row-fluid">
      <div class="span6">
        <div class="widget-box">
          <div class="widget-title bg_ly" data-toggle="collapse" href="#collapseG2"><span class="icon"><i class="icon-chevron-down"></i></span>
            <h5>My Activities</h5>
          </div>
          <div class="widget-content nopadding collapse in" id="collapseG2">
            <ul class="recent-posts">
              <li>
                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av1.jpg"> </div>
                <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                  <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                </div>
              </li>
              <li>
                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av2.jpg"> </div>
                <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                  <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                </div>
              </li>
              <li>
                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av4.jpg"> </div>
                <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                  <p><a href="#">This is a much longer one that will go on for a few lines.Itaffle to pad out the comment.</a> </p>
                </div>
              <li>
                <button class="btn btn-warning btn-mini">View All</button>
              </li>
            </ul>
          </div>
        </div>
   
        <div class="widget-box">
          <div class="widget-title bg_lo"  data-toggle="collapse" href="#collapseG3" > <span class="icon"> <i class="icon-chevron-down"></i> </span>
            <h5>Notifications</h5>
          </div>
          <div class="widget-content nopadding updates collapse in" id="collapseG3">
            <div class="new-update clearfix"><i class="icon-ok-sign"></i>
              <div class="update-done"><a title="" href="#"><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></a> <span>dolor sit amet, consectetur adipiscing eli</span> </div>
              <div class="update-date"><span class="update-day">20</span>jan</div>
            </div>
            <div class="new-update clearfix"> <i class="icon-gift"></i> <span class="update-notice"> <a title="" href="#"><strong>Congratulation Maruti, Happy Birthday </strong></a> <span>many many happy returns of the day</span> </span> <span class="update-date"><span class="update-day">11</span>jan</span> </div>
            <div class="new-update clearfix"> <i class="icon-move"></i> <span class="update-alert"> <a title="" href="#"><strong>Maruti is a Responsive Admin theme</strong></a> <span>But already everything was solved. It will ...</span> </span> <span class="update-date"><span class="update-day">07</span>Jan</span> </div>
            <div class="new-update clearfix"> <i class="icon-leaf"></i> <span class="update-done"> <a title="" href="#"><strong>Envato approved Maruti Admin template</strong></a> <span>i am very happy to approved by TF</span> </span> <span class="update-date"><span class="update-day">05</span>jan</span> </div>
            <div class="new-update clearfix"> <i class="icon-question-sign"></i> <span class="update-notice"> <a title="" href="#"><strong>I am alwayse here if you have any question</strong></a> <span>we glad that you choose our template</span> </span> <span class="update-date"><span class="update-day">01</span>jan</span> </div>
          </div>
        </div>
        
      </div>
      <div class="span6">
        
             <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
            <h5>Notes</h5>
          </div>
          <div class="widget-content">
            <div class="todo">
              <ul>
                <li class="clearfix">
                  <div class="txt"> Luanch This theme on Themeforest <span class="by label">Alex</span></div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> Manage Pending Orders <span class="date badge badge-warning">Today</span> </div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> MAke your desk clean <span class="by label">Admin</span></div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> Today we celebrate the theme <span class="date badge badge-info">08.03.2013</span> </div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> Manage all the orders <span class="date badge badge-important">12.03.2013</span> </div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
          
           
             <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
            <h5>Mails</h5>
          </div>
          <div class="widget-content">
            <div class="todo">
              <ul>
                <li class="clearfix">
                  <div class="txt"> Luanch This theme on Themeforest <span class="by label">Alex</span></div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> Manage Pending Orders <span class="date badge badge-warning">Today</span> </div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> MAke your desk clean <span class="by label">Admin</span></div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> Today we celebrate the theme <span class="date badge badge-info">08.03.2013</span> </div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
                <li class="clearfix">
                  <div class="txt"> Manage all the orders <span class="date badge badge-important">12.03.2013</span> </div>
                  <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                </li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>
          
                    </div>

                    <%
                        session.setAttribute("username", username);
                    %>

                </div>
                    </div>

            </div>

        </div>


        <!--end-main-container-part-->

        <!--Footer-part-->

        <div class="row-fluid">
            <div id="footer" class="span12"> 2017 &copy; IAB. Brought to you by KBCS Solutions</div>
        </div>

        <!--end-Footer-part-->

        <script src="js/excanvas.min.js"></script> 
        <script src="js/jquery.min.js"></script> 
        <script src="js/jquery.ui.custom.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/jquery.flot.min.js"></script> 
        <script src="js/jquery.flot.resize.min.js"></script> 
        <script src="js/jquery.peity.min.js"></script> 
        <script src="js/fullcalendar.min.js"></script> 
        <script src="js/matrix.js"></script> 
        <script src="js/matrix.dashboard.js"></script> 
        <script src="js/jquery.gritter.min.js"></script> 
        <script src="js/matrix.interface.js"></script> 
        <script src="js/matrix.chat.js"></script> 
        <script src="js/jquery.validate.js"></script> 
        <script src="js/matrix.form_validation.js"></script> 
        <script src="js/jquery.wizard.js"></script> 
        <script src="js/jquery.uniform.js"></script> 
        <script src="js/select2.min.js"></script> 
        <script src="js/matrix.popover.js"></script> 
        <script src="js/jquery.dataTables.min.js"></script> 
        <script src="js/matrix.tables.js"></script> 

        <script type="text/javascript">
                     // This function is called from the pop-up menus to transfer to
                     // a different page. Ignore if the value returned is a null string:
                     function goPage(newURL) {

                         // if url is empty, skip the menu dividers and reset the menu selection to default
                         if (newURL !== "") {

                             // if url is "-", it is this page -- reset the menu:
                             if (newURL === "-") {
                                 resetMenu();
                             }
                             // else, send page to designated URL            
                             else {
                                 document.location.href = newURL;
                             }
                         }
                     }

        // resets the menu selection upon entry to this page:
                     function resetMenu() {
                         document.gomenu.selector.selectedIndex = 2;
                     }
        </script>
        
        
                             
<script>
var chart = AmCharts.makeChart("chartdiv1", {
    "theme": "none",
    "type": "serial",
    "dataProvider": [
            
             <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql = "select * from projectmanagement";
                                    resultSet = statement.executeQuery(sql);

                                    int i = 0;
                                    while (resultSet.next()) {
                            %>
                             
    {
                    "country": "<%=resultSet.getString("projectName")%>", 
                            
        "Target": 4.2,
        "Submitted": 4.1
},               
                            <%            i++;
                                    }
                                    connection.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                             %> 
                                             
],
    
    "valueAxes": [{
        "unit": "%",
        "position": "left",
        "title": "Project Rate",
    }],
    "startDuration": 1,
    "graphs": [{
        "balloonText": "Project Rate in [[category]] (Target): <b>[[value]]</b>",
        "fillAlphas": 0.9,
        "lineAlpha": 0.2,
        "title": "Target",
        "type": "column",
        "valueField": "Target"
    }, {
        "balloonText": "Project Rate in [[category]] (Submitted): <b>[[value]]</b>",
        "fillAlphas": 0.9,
        "lineAlpha": 0.2,
        "title": "Submitted",
        "type": "column",
        "clustered":false,
        "columnWidth":0.5,
        "valueField": "Submitted"
    }],
    "plotAreaFillAlphas": 0.1,
    "categoryField": "country",
    "categoryAxis": {
        "gridPosition": "start"
    },
    "export": {
    	"enabled": true
     }

});
</script>

<script>
/**
 * Define data for each year
 */
var chartData = {
  "1995": [
    { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "1996": [
  { "sector": "Government Tenders", "size": 7.2 },
    { "sector": "Private Sector Tenders", "size": 0.9 },
    { "sector": "Articles", "size": 20.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 15.2 },
    { "sector": "Industry events", "size": 5.2 },
    { "sector": "Forum Leads", "size": 10.0 },
    { "sector": "News", "size": 8.9 }],
  "1997": [
 { "sector": "Government Tenders", "size": 8.2 },
    { "sector": "Private Sector Tenders", "size": 5.2 },
    { "sector": "Articles", "size": 25.5 },
    { "sector": "Enterprise and supply development opportunities", "size": 5.3 },
    { "sector": "Industry events", "size": 7.9 },
    { "sector": "Forum Leads", "size": 8.2 },
    { "sector": "News", "size": 5.0 }],
  "1998": [
  { "sector": "Government Tenders", "size": 6.2 },
    { "sector": "Private Sector Tenders", "size": 1.2 },
    { "sector": "Articles", "size": 25.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.9 },
    { "sector": "Industry events", "size": 8.9 },
    { "sector": "Forum Leads", "size": 13.2 },
    { "sector": "News", "size": 13.8 }],
  "1999": [
  { "sector": "Government Tenders", "size": 8.2 },
    { "sector": "Private Sector Tenders", "size": 5.2 },
    { "sector": "Articles", "size": 25.5 },
    { "sector": "Enterprise and supply development opportunities", "size": 5.3 },
    { "sector": "Industry events", "size": 7.9 },
    { "sector": "Forum Leads", "size": 8.2 },
    { "sector": "News", "size": 5.0 }],
  "2000": [
  { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2001": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2002": [
   { "sector": "Government Tenders", "size": 8.2 },
    { "sector": "Private Sector Tenders", "size": 5.2 },
    { "sector": "Articles", "size": 25.5 },
    { "sector": "Enterprise and supply development opportunities", "size": 5.3 },
    { "sector": "Industry events", "size": 7.9 },
    { "sector": "Forum Leads", "size": 8.2 },
    { "sector": "News", "size": 5.0 }],
  "2003": [
  { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2004": [
    { "sector": "Government Tenders", "size": 8.2 },
    { "sector": "Private Sector Tenders", "size": 5.2 },
    { "sector": "Articles", "size": 25.5 },
    { "sector": "Enterprise and supply development opportunities", "size": 5.3 },
    { "sector": "Industry events", "size": 7.9 },
    { "sector": "Forum Leads", "size": 8.2 },
    { "sector": "News", "size": 5.0 }],
  "2005": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2006": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2007": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2008": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2009": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2010": [
 { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2011": [
{ "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2012": [
 { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2013": [
 { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
  "2014": [
 { "sector": "Government Tenders", "size": 6.6 },
    { "sector": "Private Sector Tenders", "size": 0.6 },
    { "sector": "Articles", "size": 23.2 },
    { "sector": "Enterprise and supply development opportunities", "size": 2.2 },
    { "sector": "Industry events", "size": 4.5 },
    { "sector": "Forum Leads", "size": 14.6 },
    { "sector": "News", "size": 9.3 }],
};


/**
 * Create the chart
 */
var currentYear = 1995;
var chart = AmCharts.makeChart( "chartdiv2", {
  "type": "pie",
  "theme": "light",
  "dataProvider": [],
  "valueField": "size",
  "titleField": "sector",
  "startDuration": 0,
  "innerRadius": 60,
  "pullOutRadius": 50,
  "marginTop": 30,
  "titles": [{
    "text": "South African Economy"
  }],
  "allLabels": [{
    "y": "54%",
    "align": "center",
    "size": 25,
    "bold": true,
    "text": "1995",
    "color": "#555"
  }, {
    "y": "49%",
    "align": "center",
    "size": 15,
    "text": "Year",
    "color": "#555"
  }],
  "listeners": [ {
    "event": "init",
    "method": function( e ) {
      var chart = e.chart;

      function getCurrentData() {
        var data = chartData[currentYear];
        currentYear++;
        if (currentYear > 2014)
          currentYear = 1995;
        return data;
      }

      function loop() {
        chart.allLabels[0].text = currentYear;
        var data = getCurrentData();
        chart.animateData( data, {
          duration: 1000,
          complete: function() {
            setTimeout( loop, 3000 );
          }
        } );
      }

      loop();
    }
  } ],
   "export": {
   "enabled": true
  }
} );
</script>

<script>
var chart = AmCharts.makeChart("chartdiv3", {
    "type": "serial",
    "theme": "light",
    "marginRight":30,
    "legend": {
        "equalWidths": false,
        "periodValueText": "total: [[value.sum]]",
        "position": "top",
        "valueAlign": "left",
        "valueWidth": 100
    },
    "dataProvider": [{
        "year": 1994,
        "cars": 1587,
        "motorcycles": 650,
        "bicycles": 121
    }, {
        "year": 1995,
        "cars": 1567,
        "motorcycles": 683,
        "bicycles": 146
    }, {
        "year": 1996,
        "cars": 1617,
        "motorcycles": 691,
        "bicycles": 138
    }, {
        "year": 1997,
        "cars": 1630,
        "motorcycles": 642,
        "bicycles": 127
    }, {
        "year": 1998,
        "cars": 1660,
        "motorcycles": 699,
        "bicycles": 105
    }, {
        "year": 1999,
        "cars": 1683,
        "motorcycles": 721,
        "bicycles": 109
    }, {
        "year": 2000,
        "cars": 1691,
        "motorcycles": 737,
        "bicycles": 112
    }, {
        "year": 2001,
        "cars": 1298,
        "motorcycles": 680,
        "bicycles": 101
    }, {
        "year": 2002,
        "cars": 1275,
        "motorcycles": 664,
        "bicycles": 97
    }, {
        "year": 2003,
        "cars": 1246,
        "motorcycles": 648,
        "bicycles": 93
    }, {
        "year": 2004,
        "cars": 1318,
        "motorcycles": 697,
        "bicycles": 111
    }, {
        "year": 2005,
        "cars": 1213,
        "motorcycles": 633,
        "bicycles": 87
    }, {
        "year": 2006,
        "cars": 1199,
        "motorcycles": 621,
        "bicycles": 79
    }, {
        "year": 2007,
        "cars": 1110,
        "motorcycles": 210,
        "bicycles": 81
    }, {
        "year": 2008,
        "cars": 1165,
        "motorcycles": 232,
        "bicycles": 75
    }, {
        "year": 2009,
        "cars": 1145,
        "motorcycles": 219,
        "bicycles": 88
    }, {
        "year": 2010,
        "cars": 1163,
        "motorcycles": 201,
        "bicycles": 82
    }, {
        "year": 2011,
        "cars": 1180,
        "motorcycles": 285,
        "bicycles": 87
    }, {
        "year": 2012,
        "cars": 1159,
        "motorcycles": 277,
        "bicycles": 71
    }],
    "valueAxes": [{
        "stackType": "regular",
        "gridAlpha": 0.07,
        "position": "left",
        "title": "Number"
    }],
    "graphs": [{
        "balloonText": "<style='vertical-align:bottom; margin-right: 10px; width:28px; height:21px;'><span style='font-size:14px; color:#000000;'><b>[[value]]</b></span>",
        "fillAlphas": 0.6,
        "lineAlpha": 0.4,
        "title": "Approved Sales",
        "valueField": "cars"
    }, {
        "balloonText": "<style='vertical-align:bottom; margin-right: 10px; width:28px; height:21px;'><span style='font-size:14px; color:#000000;'><b>[[value]]</b></span>",
        "fillAlphas": 0.6,
        "lineAlpha": 0.4,
        "title": "Sales Submitted",
        "valueField": "motorcycles"
    }, {
        "balloonText": "<style='vertical-align:bottom; margin-right: 10px; width:28px; height:21px;'><span style='font-size:14px; color:#000000;'><b>[[value]]</b></span>",
        "fillAlphas": 0.6,
        "lineAlpha": 0.4,
        "title": "Opportunities",
        "valueField": "bicycles"
    }],
    "plotAreaBorderAlpha": 0,
    "marginTop": 10,
    "marginLeft": 0,
    "marginBottom": 0,
    "chartScrollbar": {},
    "chartCursor": {
        "cursorAlpha": 0
    },
    "categoryField": "year",
    "categoryAxis": {
        "startOnAxis": true,
        "axisColor": "#DADADA",
        "gridAlpha": 0.07,
        "title": "Year",
   
    },
    "export": {
    	"enabled": true
     }
});
</script>

<script>
var chart = AmCharts.makeChart( "chartdiv4", {
  "type": "serial",
  "addClassNames": true,
  "theme": "none",
  "autoMargins": false,
  "marginLeft": 30,
  "marginRight": 8,
  "marginTop": 10,
  "marginBottom": 26,
  "balloon": {
    "adjustBorderColor": false,
    "horizontalPadding": 10,
    "verticalPadding": 8,
    "color": "#ffffff"
  },

  "dataProvider": [ {
    "year": 2009,
    "income": 23.5,
    "expenses": 21.1
  }, {
    "year": 2010,
    "income": 26.2,
    "expenses": 30.5
  }, {
    "year": 2011,
    "income": 30.1,
    "expenses": 34.9
  }, {
    "year": 2012,
    "income": 29.5,
    "expenses": 31.1
  }, {
    "year": 2013,
    "income": 30.6,
    "expenses": 28.2,
    "dashLengthLine": 5
  }, {
    "year": 2014,
    "income": 34.1,
    "expenses": 32.9,
    "dashLengthColumn": 5,
    "alpha": 0.2,
    "additional": "(projection)"
  } ],
  "valueAxes": [ {
    "axisAlpha": 0,
    "position": "left"
  } ],
  "startDuration": 1,
  "graphs": [ {
    "alphaField": "alpha",
    "balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
    "fillAlphas": 1,
    "title": "Leads Qualified",
    "type": "column",
    "valueField": "income",
    "dashLengthField": "dashLengthColumn"
  }, {
    "id": "graph2",
    "balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
    "bullet": "round",
    "lineThickness": 3,
    "bulletSize": 7,
    "bulletBorderAlpha": 1,
    "bulletColor": "#FFFFFF",
    "useLineColorForBulletBorder": true,
    "bulletBorderThickness": 3,
    "fillAlphas": 0,
    "lineAlpha": 1,
    "title": "Leads Received",
    "valueField": "expenses",
    "dashLengthField": "dashLengthLine"
  } ],
  "categoryField": "year",
  "categoryAxis": {
    "gridPosition": "start",
    "axisAlpha": 0,
    "tickLength": 0
  },
  "export": {
    "enabled": true
  }
} );
</script>

<script>
var chart = AmCharts.makeChart("chartdiv5", {
  "type": "serial",
  "theme": "none",
  "marginRight": 70,
  "dataProvider": [{
    "country": "USA",
    "visits": 3025,
    "color": "#FF0F00"
  }, {
    "country": "China",
    "visits": 1882,
    "color": "#FF6600"
  }, {
    "country": "Japan",
    "visits": 1809,
    "color": "#FF9E01"
  }, {
    "country": "Germany",
    "visits": 1322,
    "color": "#FCD202"
  }, {
    "country": "UK",
    "visits": 1122,
    "color": "#F8FF01"
  }, {
    "country": "France",
    "visits": 1114,
    "color": "#B0DE09"
  }, {
    "country": "India",
    "visits": 984,
    "color": "#04D215"
  }, {
    "country": "Spain",
    "visits": 711,
    "color": "#0D8ECF"
  }, {
    "country": "Netherlands",
    "visits": 665,
    "color": "#0D52D1"
  }, {
    "country": "Russia",
    "visits": 580,
    "color": "#2A0CD0"
  }, {
    "country": "South Korea",
    "visits": 443,
    "color": "#8A0CCF"
  }, {
    "country": "Canada",
    "visits": 441,
    "color": "#CD0D74"
  }],
  "valueAxes": [{
    "axisAlpha": 0,
    "position": "left",
    "title": "Visitors from country"
  }],
  "startDuration": 1,
  "graphs": [{
    "balloonText": "<b>[[category]]: [[value]]</b>",
    "fillColorsField": "color",
    "fillAlphas": 0.9,
    "lineAlpha": 0.2,
    "type": "column",
    "valueField": "visits"
  }],
  "chartCursor": {
    "categoryBalloonEnabled": false,
    "cursorAlpha": 0,
    "zoomable": false
  },
  "categoryField": "country",
  "categoryAxis": {
    "gridPosition": "start",
    "labelRotation": 45
  },
  "export": {
    "enabled": true
  }

});
</script>
    </body>
</html>
