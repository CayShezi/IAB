
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
            String sql = "select * from employees where username = '" + "shezi" + "'";
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


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Metis</title>
    
    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">
    
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">
    
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">



<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/assets/"
        };
    </script>
    <link rel="stylesheet" href="assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="assets/less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>

        

        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="amcharts/amcharts.js" type="text/javascript"></script>
        <script src="amcharts/funnel.js" type="text/javascript"></script>
         <script src="amcharts/serial.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/animate/animate.min.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<style>

            .hide{
                display : none;  
            }

        </style>
        
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

<body class="  ">

     
        
        <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->
        
        
        <div id="content">

       
<div class="outer">
                        <div class="inner bg-light lter">
   
        <!--sidebar-menu-->

        <!--main-container-part-->
        <div id="content">
            <!--breadcrumbs-->
           
            <!--End-breadcrumbs-->

            <!--Action boxes-->
            <div class="container-fluid">
               
                <div class="row-fluid">
                    <div class="span6">
                        <div class="widget-box">
                            <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
                                <h5>Project Progress</h5>
                            </div>

                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                    statement = connection.createStatement();
                                    String sql = "select * from projectmanagement p, employees e where status = '" + "In Progress" + "' AND p.projectManager = e.employeeID";
                                    resultSet = statement.executeQuery(sql);

                                    int i = 0;
                                    while (resultSet.next()) {
                            %>



                            <div class="widget-content">

                                <ul class="unstyled">



                                    <%
                                        try {
                                            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                            statement = connection.createStatement();
                                            int z = Integer.parseInt(resultSet.getString("projectID"));
                                            String sql2 = "select count(*) from projecttask where projectName = '" + z + "'";
                                            resultSet2 = statement.executeQuery(sql2);
                                            resultSet2.next();

                                            totalTask = resultSet2.getInt(1);

                                            String sql3 = "select count(*) from projecttask where projectName = '" + z + "' AND status = '" + "Completed" + "'";
                                            resultSet3 = statement.executeQuery(sql3);
                                            resultSet3.next();

                                            totalCompleted = resultSet3.getInt(1);

                                            pecentage = (totalCompleted * 100) / totalTask;

                                            if (pecentage < 50) {

                                                color = "progress-bar progress-bar-danger";
                                            } else if (pecentage >= 50 && pecentage <= 69) {
                                                color = "progress-bar progress-bar-warning";

                                            } else if (pecentage >= 70 && pecentage <= 89) {

                                                color = "progress-bar progress-bar-info";
                                            } else if (pecentage >= 90 && pecentage <= 100) {
                                                color = "progress-bar progress-bar-success";
                                            }

                                    %>
                                    
                                     <span class="icon24 icomoon-icon-arrow-up-2 green"></span>  <%=resultSet.getString("projectName")%>  
           
                                          <div class="progress progress-striped active">
		<div class="<%=color%>" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <%=pecentage%>%;">
		 <span class="pull-right strong"><%=pecentage%>%</span>
		</div>
	      </div>
                                    
                                    
                                    
                                    


                                </ul>
                            </div>



                            <%
                            //**Should I input the codes here?**
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>


                            <%
                                if (pecentage == 100) {
                                    status = "Completed";
                                } else {
                                    status = resultSet.getString("status");
                                }

                            %>


                            <%            i++;
                                    }
                                    connection.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>

                        </div>


                    </div>



                    <div class="span6">
                        <div class="widget-box">
                            <div class="widget-title"> <span class="icon"> <i class="icon-signal"></i> </span>
                                <h5>Sales Funnel</h5>
                            </div>
                            <div class="widget-content">
                                <div id="chartdiv" style="width: 500px; height: 300px;"></div>
                            </div>
                        </div>
                    </div>

                        <div class="widget-box">
   
                            <div class="widget-title"> <span class="icon"> <i class="icon-signal"></i> </span>
                                <h5>Target Project VS Submitted</h5>
                            </div>
            
        
                            <div class="widget-content">
                               
                                
                                <div id="chartdiv1" style="width: 100%; height: 500px;"></div>
                            </div>
                            </div>
                            
                           
                    
                            <div class="widget-box">
   
                            <div class="widget-title"> <span class="icon"> <i class="icon-signal"></i> </span>
                                <h5>Top Lead Sources</h5>
                            </div>
                   
                            <div class="widget-content">
                               
                                
                                <div id="chartdiv2" style="width: 100%; height: 500px;"></div>
                            </div>
                            </div>
                        
                        
                        
                                
                            
                            
                            <div class="widget-box">
   
                            <div class="widget-title"> <span class="icon"> <i class="icon-signal"></i> </span>
                                <h5>Target Project VS Submitted</h5>
                            </div>
                      
                            <div class="widget-content">
                               
                                
                                <div id="chartdiv3" style="width: 100%; height: 500px;"></div>
                            </div>
                            </div>
       
                             <div class="widget-box">
   
                            <div class="widget-title"> <span class="icon"> <i class="icon-signal"></i> </span>
                                <h5>Leads Generated VS Leads Qualified</h5>
                            </div>
                            
                            
                            
        
                            <div class="widget-content">
                               
                                
                                <div id="chartdiv4" style="width: 100%; height: 500px;"></div>
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

        </div></div>


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
    "income": 20.5,
    "expenses": 23.1
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
    "income": 35.5,
    "expenses": 37.1
  }, {
    "year": 2013,
    "income": 30.6,
    "expenses": 48.2,
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


 <jsp:include page="Footer.jsp"></jsp:include>
<!--end-Footer-part--> 
       <script src="assets/lib/jquery/jquery.js"></script>

                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.26.6/js/jquery.tablesorter.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

            <!--Bootstrap -->
            <script src="assets/lib/bootstrap/js/bootstrap.js"></script>
            <!-- MetisMenu -->
            <script src="assets/lib/metismenu/metisMenu.js"></script>
            <!-- onoffcanvas -->
            <script src="assets/lib/onoffcanvas/onoffcanvas.js"></script>
            <!-- Screenfull -->
            <script src="assets/lib/screenfull/screenfull.js"></script>


            <!-- Metis core scripts -->
            <script src="assets/js/core.js"></script>
            <!-- Metis demo scripts -->
            <script src="assets/js/app.js"></script>

                <script>
                    $(function() {
                      Metis.MetisTable();
                      Metis.metisSortable();
                    });
                </script>

            <script src="assets/js/style-switcher.js"></script>
    </body>
</html>
