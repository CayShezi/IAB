<%-- 
    Document   : BusinessProfileView
    Created on : 12 Oct 2017, 10:10:41 AM
    Author     : KBCS Solutions
--%>

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
        <link rel="stylesheet" href="report/css/style.css">
        <link rel="stylesheet" type="text/css" href="stylesheet2.css">

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
    
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>Dashboard</a>
  <ul>
    <li class=" active"> <a href="index.jsp"><i class="icon icon-search"></i> <span>Dashboard</span></a> </li>
    <li class="submenu"><a href="Profile.jsp"><i class="icon icon-home"></i> <span>Profile</span></a>
    
          <ul>
                    
                    <li><a href="CreateEmployee.jsp"><i class="icon icon-search"></i> <span>Add Users</span></a></li>
                   <li> <a href="Search.jsp"><i class="icon icon-search"></i> <span>Search/Filter</span></a> </li>
                   <li> <a href="#"><i class="icon icon-search"></i> <span>Edit Profile</span></a> </li>
                   <li> <a href="#"><i class="icon icon-search"></i> <span>View Users</span></a> </li>
                   
             

                </ul>
        
         </li>
    <li> <a href="#"><i class="icon icon-search"></i> <span>Leads Management</span></a> </li>
    <li> <a href="#"><i class="icon icon-table"></i> <span>Report</span></a> </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Opportunity Management</span> <span class="label label-important"></span></a>
               <ul>
                    <li><a href="ViewOpp.jsp"><i class="icon icon-search"></i> <span>View Opportunities</span></a></li>
                    <li> <a href="ImportOpp.jsp"><i class="icon icon-table"></i> <span>Import Opportunities</span></a></li>
                    

                </ul>
            </li>
            
            
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Project Management</span> <span class="label label-important"></span></a>
                   
                        <ul>
                <li><a href="CreateProject2.jsp"><i class="icon icon-home"></i><span>Create Project</span></a></li>
                <li><a href="currentProject.jsp"><i class="icon icon-search"></i> <span>View Projects</span></a></li>
                <li> <a href="ViewProjectTask.jsp"><i class="icon icon-table"></i> <span>View Project Tasks</span></a></li>
                 <li><a href="CreateProReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                
            </ul>
               </li>
               
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Sales Management</span> <span class="label label-important"></span></a>
                   
                  <ul>
                <li><a href="SalesOpportunity.jsp"><i class="icon icon-home"></i><span>Manage Sales</span></a></li>
                <li><a href="CreateSalesReport.jsp"><i class="icon icon-home"></i><span>Create Report</span></a></li>
                    
            </ul>
                   
                   </li>
               <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Account Management</span> <span class="label label-important"></span></a>
                   
                   <ul>
                 <li><a href="CreateAccont.jsp"><i class="icon icon-home"></i><span>Create Account</span></a></li>
                 
                 <li><a href="ViewContracts.jsp"><i class="icon icon-home"></i><span>Manage Accounts</span></a></li>
                 
                <li> <a href="CreateAccReport.jsp"><i class="icon icon-table"></i> <span>Create Report</span></a></li>
                
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

            <%
                SourceName source = (SourceName) session.getAttribute("source");
                String souceName = source.getSourceName();
                String sourceName2 = source.getSourceName2();
                String sourceName3 = source.getSourceName3();

            
                ArrayList<SourceData> sourceData = (ArrayList<SourceData>) session.getAttribute("report"); 
        
            %>

            <!--Action boxes-->
            <div class="container-fluid">
                <a href="#" class="nav-toggle">Toggle Navigation</a>
                <nav class="cmn-tile-nav">
                    <ul class="clearfix" style="padding-left:6cm;">
                        <li class="colour-1" style="width:200px"><a href="FilterBySourceServlet.do?action=sourceName"><%=souceName%></a></li>
                        <li class="colour-2" style="width:200px"><a href="FilterBySourceServlet2.do?action=sourceName2"><%=sourceName2%></a></li>
                        <li class="colour-3" style="width:200px"><a href="FilterBySourceName3.jsp"><%=sourceName3%></a></li> 
                    </ul>
                </nav>





                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <section>
                                <!--for demo wrap-->
                               
                                <div class="tbl-header">

                                    <form action="SortServletName.do" method="POST">
                                         <table class="table table-bordered data-table">
                                            <thead>
                                                <tr>

                                                    <th>Description</th>
                                                    <th>Date Created</th>
                                                    <th>Action</th>
                                                    <th>Selection</th>
                                                    <th>Score</th>


                                                </tr>
                                            </thead>
                                            <tbody>


                                     <%
                                          
          
                                         String output = ""; 
                                         Date output1; 
                                         String output2 = ""; 
                                          int id=0;
         for(int x=0; x<sourceData.size();x++) 
         {
             
            SourceData sources = sourceData.get(x); 

                output = sources.getDescription(); 
                output1 = sources.getDateC(); 
                output2 = sources.getUrlPage();
                 id = sources.getId();

             %>
                                                    <tr>
                                                        <td><%=output%></td>
                                                        <td><%=output1%></td>
                                                        <td><%=output2%></td>
                                                        <td><input type="checkbox" name="selected" class="with-check" value="<%=id%>"></td>
                                                        <td>

                                                            <div class="numRating">
                                                                <div>
                                                                    <div>
                                                                        <div>
                                                                            <div>
                                                                                <input id="rating1" type="radio" name="rating<%= x%>" value="1">
                                                                                <label for="rating1"><span>1</span></label>
                                                                            </div>
                                                                                <input id="rating2" type="radio" name="rating<%= x%>" value="2">
                                                                            <label for="rating2"><span>2</span></label>
                                                                        </div>
                                                                            <input id="rating3" type="radio" name="rating<%= x%>" value="3">
                                                                        <label for="rating3"><span>3</span></label>
                                                                    </div>
                                                                        <input id="rating4" type="radio" name="rating<%= x%>" value="4">
                                                                    <label for="rating4"><span>4</span></label>
                                                                </div>
                                                                    <input id="rating5" type="radio" name="rating<%= x%>" value="5">
                                                                <label for="rating5"><span>5</span></label>
                                                            </div>
                                                        </td>


                                                    </tr>
                                                    <%
                                                    }
                                                %>

                                            </tbody>
                                        </table>



                                </div>
                            </section>

                        </div>

                    </div>



                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-success">View Dashboard</button>
                </div>

                </form>

            </div>
        </div>



        <!--end-main-container-part-->

        <!--Footer-part-->

        <div class="row-fluid">
            <div id="footer" class="span12"> 2017 &copy; IAB. Brought to you by KBCS Solutions</div>
        </div>

        <!--end-Footer-part-->
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script  src="reportjava/js/index.js"></script>

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

    </body>
</html>

