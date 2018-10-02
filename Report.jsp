<%-- 
    Document   : BusinessProfileView
    Created on : 12 Oct 2017, 10:10:41 AM
    Author     : KBCS Solutions
--%>

<%@page import="za.ac.kbcs.dao.SourcesDao"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.kbcs.model.SourceData"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.kbcs.model.SourceName"%>
<%@page import="za.ac.kbcs.model.Sources"%>
<%@page import="javax.xml.transform.Source"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

int totalTask = 0;
int totalCompleted = 0;
int pecentage = 0;
%>

<%

        String username = (String)session.getAttribute("username");
        
%>
<!DOCTYPE html>
<html lang="en">
<head>
        <title>IAB</title>
        <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Table</title>
    
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

 <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

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
    </head>
    
    
    
    <body class="  ">

  
        <!--close-top-serch-->
        <!--sidebar-menu-->
    
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
        String dashboardLink = "index.jsp";
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


    <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->
        
        
        <div id="content">

       
            <div class="outer">
                
                <div class="inner bg-light lter">
                            <!--Begin Datatables-->
<div class="row">
  <div class="col-lg-12">
        <div class="box">
            <header>
             
                <h5>Search Report</h5>
            </header>
            <div id="collapse4" class="body">
                
            
            <%
                
                SourcesDao dao = new SourcesDao();
                
                
                
                List<SourceData> sourceData = new ArrayList();
                sourceData = dao.ListAllData(session, username);
                
                
        
            %>

            <!--Action boxes-->
          
            
            

<form action="SortServlet3.do" method="POST">
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <section>
                                <!--for demo wrap-->
                                
                                <div class="tbl-header">

                                    
                                        <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    
                                                   <th>Category</th>
                                                    <th>Description</th>
                                                    <th>Tender No</th>
                                                    <th>Date Published</th>
                                                    <th>Closing Date</th>
                                                    <th>View Details</th>
                                                     <th>Briefing Session</th>
                                                    <th>Selection</th>
         
                                                </tr>
                                            </thead>
                                            <tbody>


                                     <%
                                          
         
                                         String output = ""; 
                                         String output1; 
                                         String output2 = "";
                                         String refNo = ""; 
                                         String sector = "";
                                         String briefingDate;
                                         String publishedDate;
                                         
                                         
                                          
         for(int x=0;x<sourceData.size();x++) 
         {
             
            SourceData sources = sourceData.get(x); 

                output = sources.getDescription(); 
                output1 = sources.getLidEnding(); 
                output2 = sources.getUrlPage();
                refNo = sources.getRefNo(); 
                sector = sources.getSector();
                briefingDate = sources.getBriefingDate();
                publishedDate = sources.getDateC();
                
             %>
                                                    <tr>
                                                        <td><%=sector%></td>
                                                        <td><%=output%></td>
                                                        <td><%=refNo%></td>
                                                        <td><%=publishedDate%></td>
                                                        <td><%=output1%></td>
                                                        <td><a href="<%=output2%>"  target="_blank"><%=output2%></a></td>
                                                        <td><%= briefingDate%></td>
                                                        <td><input type="checkbox" name="selected" class="with-check" value="<%=x%>"></td>
                                                    </tr>
                                                    <%
                                                    }
                                                %>

                                            </tbody>
                                        </table>
                                               



                                </div>
                            </section>

                        </div>
                                                
                      <%
                            session.setAttribute("report", sourceData );
                      %>

                    </div>



                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-success">Proceed</button>
                </div>

                </form>

            </div>
        </div></div></div></div></div></div></div>



        <!--end-main-container-part-->

        <!--Footer-part-->

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

