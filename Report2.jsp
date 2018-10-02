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
    <li class="submenu active"><a href="index.jsp"><i class="icon icon-home"></i> <span>Profile</span></a>
    
          <ul>
                    
                    <li><a href="CreateEmployee.jsp"><i class="icon icon-search"></i> <span>Add Users</span></a></li>
                   <li> <a href="Search2.jsp"><i class="icon icon-search"></i> <span>Search/Filter</span></a> </li>
             

                </ul>
        
         </li>
    <li> <a href="#"><i class="icon icon-search"></i> <span>Leads Management</span></a> </li>
    <li> <a href="#"><i class="icon icon-table"></i> <span>Report</span></a> </li>
    <li><a href="#"><i class="icon icon-dashboard"></i> <span>Dashboard</span></a></li>
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
                
                ArrayList<SourceData> sourceData = (ArrayList<SourceData>) session.getAttribute("report1"); 
        
            %>

            <!--Action boxes-->
            <div class="container-fluid">
                <a href="#" class="nav-toggle">Toggle Navigation</a>
                <nav class="cmn-tile-nav">
                    <ul class="clearfix" style="padding-left:6cm;">
                        <li class="colour-1" style="width:200px"><a href="FilterBySourceServlet.do?action=sourceName">Source1</a></li>
                        <li class="colour-2" style="width:200px"><a href="FilterBySourceServlet2.do?action=sourceName2">Source2</a></li>
                        <li class="colour-3" style="width:200px"><a href="FilterBySourceServlet3.do?action=sourceName3">Source3</a></li> 
                    </ul>
                </nav>

<form action="SortServlet3.do" method="POST">
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <section>
                                <!--for demo wrap-->
                                
                                <div class="tbl-header">

                                    
                                        <table class="table table-bordered data-table">
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
                                                        <td><a href="<%=output2%>"><%=output2%></a></td>
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

