
<%@page import="za.ac.kbcs.model.OpportunityName"%>
<%@page import="za.ac.kbcs.model.Opportunity"%>
<%@page import="java.util.ArrayList"%>
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
%>

<%
    String username = (String) session.getAttribute("username");
%>


<%
    session.setAttribute("username", username);
    ArrayList allValues = new ArrayList();
    List<Opportunity> opportunity = new ArrayList();

%>



<%@page import="java.util.List"%>
<%@page import="javax.xml.transform.Source"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

        <!--Header-part-->

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

                                            <h5>Create Opportunity</h5>
                                        </header>
                                        <div id="collapse4" class="body">


                                            <form  method="POST" action="OpportunityServlet.do">

                                                <div class="row-fluid">
                                                    <div class="span12">
                                                        <div class="widget-box">
                                                            <section>
                                                                <!--for demo wrap-->

                                                                <div class="tbl-header">

                                                                    <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                                                                        <thead>
                                                                            <tr>

                                                                                <th>Opportunity Name</th>
                                                                                <th>Description</th>
                                                                                <th>Date Created</th>
                                                                                <th>Due Date</th>
                                                                                <th>Assign User</th>
                                                                                <th>Upload Documents</th>
                                                                            </tr>

                                                                        <%                                                try {
                                                                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                                                                statement = connection.createStatement();
                                                                                String sql = "select * from qualified";
                                                                                resultSet = statement.executeQuery(sql);
                                                                                int i = 0;
                                                                                while (resultSet.next()) {
                                                                                    Opportunity opp = new Opportunity();
                                //OpportunityName oppName = new OpportunityName();

                                                                                    int id2 = 0;
                                                                        %>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr class="gradeX">

                                                                            <td><input type="text" name="oppName"/></td>
                                                                            <td><%=resultSet.getString("description")%></td>
                                                                            <td><%=resultSet.getString("date")%></td>
                                                                            <td><%=resultSet.getString("dateEnding")%></td>

                                                                            <td>


                                                                                <%
                                                                                    try {
                                                                                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                                                                        statement = connection.createStatement();
                                                                                        String sql2 = "select * from employees";
                                                                                        resultSet2 = statement.executeQuery(sql2);
                                                                                %>



                                                                                <select class="span7" name="employees">
                                                                                    <%
            while (resultSet2.next()) {%>
                                                                                    <%
                                                                                        id2 = resultSet2.getInt("employeeID");

                                                                                    %>

                                                                                    <c:forEach var="item" items="<%=resultSet2.getString("employeeName")%>">
                                                                                        <option value="${id2}"><c:out value="${item}" /></option>
                                                                                    </c:forEach>

                                                                                    <%
            } %>
                                                                                </select>

                                                                                <%

                                                                                //**Should I input the codes here?**
                                                                                    } catch (Exception e) {
                                                                                        e.printStackTrace();
                                                                                    }
                                                                                %>


                                                                            </td>  
                                                                            <td>
                                                                                <a href="UploadDocumentation.jsp?id=<%=resultSet.getString("i_d")%>">Upload Document</a>

                                                                            </td>
                                                                        </tr>

                                                                        <%

                                                                            opp.setUploadId(resultSet.getInt("i_d"));

                                                                            opp.setDescription(resultSet.getString("description"));
                                                                            opp.setClientName(resultSet.getString("clientName"));
                                                                            opp.setBriefingDate(resultSet.getString("briefingSessionDate"));
                                                                            opp.setDateCreated(resultSet.getString("date"));
                                                                            opp.setEndDate(resultSet.getString("dateEnding"));
                                                                            opp.setSourceName(resultSet.getString("sourceName"));

                                                                            opportunity.add(opp);
                                                                            
                                                                            session.setAttribute("name", opp);
                                                                          
                                                                        %>
                                                                        <%
                                                                                    i++;
                                                                                }
                                                                                connection.close();
                                                                            } catch (Exception e) {
                                                                                e.printStackTrace();
                                                                            }
                                                                        %>

                                                                        <%
                                                                            session.setAttribute("opportunity", opportunity);
                                                                             

                                                                        %>
                                                                    </tbody>
                                                                </table>


                                                                <div class="form-actions">
                                                                    <button type="submit" class="btn btn-success">Save</button>
                                                                </div>
                                                                </form>
                                                            </div>
                                                    </div>


                                                </div>
                                            </div>

                                    </div>
                                </div>

                            </div></div></div></div></div></div>
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
            $(function () {
                Metis.MetisTable();
                Metis.metisSortable();
            });
        </script>

        <script src="assets/js/style-switcher.js"></script>
    </body>
</html>
