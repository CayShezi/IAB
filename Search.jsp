<%@page import="za.ac.kbcs.model.Sector"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>


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
String username = (String)session.getAttribute("username");

%>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>IAB</title>
    
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
        <link rel="stylesheet" href="/assets/lib/inputlimiter/jquery.inputlimiter.css">
        <link rel="stylesheet" href="/assets/lib/bootstrap-daterangepicker/daterangepicker-bs3.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/Uniform.js/2.1.2/themes/default/css/uniform.default.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/chosen/1.1.0/chosen.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.3/jquery.tagsinput.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/css/jasny-bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap3/bootstrap-switch.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.1/css/datepicker3.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.0.1/css/bootstrap-colorpicker.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">



<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


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
    
    
    <body>

        
   <!--sidebar-menu-->

         
         
         

        <!--close-left-menu-stats-sidebar-->

        <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
                
                
                <div id="content">
                    <div class="outer">
                        <div class="inner bg-light lter">
            
            
                            <div class="row">
                                
                               <div class="col-lg-6"> 
                                   
                                   <div class="box dark">
                                       
                                        <header>
            <div class="icons"><i class="fa fa-edit"></i></div>
            <h5>Input Text Fields</h5>
            <!-- .toolbar -->
            <div class="toolbar">
              <nav style="padding: 8px;">
                  <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                      <i class="glyphicon glyphicon-minus"></i>
                  </a>
                  <a href="javascript:;" class="btn btn-default btn-xs full-box">
                      <i class="glyphicon glyphicon-resize-small"></i>
                  </a>
                  <a href="javascript:;" class="btn btn-danger btn-xs close-box">
                      <i class="glyphicon glyphicon-remove"></i>
                  </a>
              </nav>
            </div>               <!-- /.toolbar -->
        </header>
                            
                                <div id="div-1" class="body">
                                    
                                    
                                    
                <form action="SearchServlet.do" method="POST" class="form-horizontal">
                    <div class="row-fluid">

                        <div class="span5">

                            <div class="widget-box">
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Source1</h5>
                                </div>
                                <div class="widget-content nopadding">

                                     <div class="form-group">
                                        <label class="control-label col-lg-4">Sources</label>
                                        <div class="col-lg-8">
                                            <select name="source1" class="form-control chzn-select" multiple >
                                                <option value=""></option>
                                                <option value="Government Tenders">Government Tenders</option>
                                                <option value="Private Sector">Private Sector</option>
                                                <option value="Article">Article</option>
                                                <option value="Forum Leads">Forum Leads</option>
                                                <option value="Industry Events">Industry Events</option>
                                                <option value="Funding Opportunities">Funding Opportunities</option>
                                                <option value="Enterprise and Supply Development">Enterprise and Supply Development</option>
                                                <option value="Business opportunities">Business opportunities</option>
                                                <option value="Recreational activities leads">Recreational activities leads</option>
                                                <option value="News">News</option>
                                                
                                                
                                            </select>
                                        </div>
                                    </div>
         
                                     <div class="control-group">
                                        <label class="control-label">Industry Sector</label>
                                                    <div class="controls">
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from registration where userName = '" + username + "'";
resultSet = statement.executeQuery(sql);
%>
              

        
           
        <%  while(resultSet.next()){ %>
            <%=resultSet.getString("industrySector1")%>
        <% } %>
        
             
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

                                     <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Search Phrase </label> 
                                        <div class="col-lg-8">
                                            <input type="text" id="text1" name="phrase11"  placeholder="" class="form-control"> 
                                            <input type="text" id="text1" name="phrase12"  placeholder="" class="form-control"> 
                                            <input type="text" id="text1" name="phrase13"  placeholder="" class="form-control"> 
                                        </div>

                                    </div>
                                    <div class="form-group">
                                            <label class="control-label col-lg-4">Location :</label>
                                            <div class="col-lg-8">
                                            <select name="location1" required="required" class="form-control chzn-select" multiple >
                                                <option value="Gauteng">Gauteng</option>
                                                <option value="Kwazulu Natal">Kwazulu Natal</option>
                                                <option value="North West">North West</option>
                                                <option value="Eastern Cape">Eastern Cape</option>
                                                <option value="Western Cape">Western Cape</option>
                                                <option value="Mpumalanga">Mpumalanga</option>
                                                <option value="Free State">Free State</option>
                                                <option value="Limpopo">Limpopo</option>
                                                <option value="Northen Cape">Northen Cape</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>

                            </div>


                            <div class="widget-box">
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Source 2</h5>
                                </div>
                                <div class="widget-content nopadding">

                                     <div class="form-group">
                                        <label class="control-label col-lg-4">Sources</label>
                                        <div class="col-lg-8">
                                            <select name="source3" class="form-control chzn-select" multiple >
                                                <option value=""></option>
                                                <option value="Government Tenders">Government Tenders</option>
                                                <option value="Private Sector">Private Sector</option>
                                                <option value="Article">Article</option>
                                                <option value="Forum Leads">Forum Leads</option>
                                                <option value="Industry Events">Industry Events</option>
                                                <option value="Funding Opportunities">Funding Opportunities</option>
                                                <option value="Enterprise and Supply Development">Enterprise and Supply Development</option>
                                                <option value="Business opportunities">Business opportunities</option>
                                                <option value="Recreational activities leads">Recreational activities leads</option>
                                                <option value="News">News</option>
                                                
                                                
                                            </select>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="control-group">
                                        <label class="control-label">Industry Sector</label>
                                                   <div class="controls">
                                                                                        <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from registration where userName = '" + username + "'";
resultSet = statement.executeQuery(sql);
%>
              

        
           
        <%  while(resultSet.next()){ %>
            <%=resultSet.getString("industrySector3")%>
        <% } %>
        
        
       
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
                                   
          
                                      <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Search Phrase </label> 
                                        <div class="col-lg-8">
                                            <input type="text" id="text1" name="phrase21"  placeholder="" class="form-control"> 
                                            <input type="text" id="text1" name="phrase22"  placeholder="" class="form-control"> 
                                            <input type="text" id="text1" name="phrase23"  placeholder="" class="form-control"> 
                                        </div>

                                    </div>
                                     <div class="form-group">
                                            <label class="control-label col-lg-4">Location :</label>
                                            <div class="col-lg-8">
                                            <select name="location3" required="required" class="form-control chzn-select" multiple >
                                                <option value="Gauteng">Gauteng</option>
                                                <option value="Kwazulu Natal">Kwazulu Natal</option>
                                                <option value="North West">North West</option>
                                                <option value="Eastern Cape">Eastern Cape</option>
                                                <option value="Western Cape">Western Cape</option>
                                                <option value="Mpumalanga">Mpumalanga</option>
                                                <option value="Free State">Free State</option>
                                                <option value="Limpopo">Limpopo</option>
                                                <option value="Northen Cape">Northen Cape</option>
                                            </select>
                                        </div>
                                    </div>

                               
                                </div>
                            </div>
                        </div>


                        <div class="span5">
                            <div class="widget-box">
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Source 3</h5>
                                </div>
                                <div class="widget-content nopadding">

                                    <div class="control-group">
                                        
                                        <label class="control-label">Sources</label>
                                       <div class="form-group">
                                        <label class="control-label col-lg-4">Sources</label>
                                        <div class="col-lg-8">
                                            <select name="source2" class="form-control chzn-select" multiple >
                                                <option value=""></option>
                                                <option value="Government Tenders">Government Tenders</option>
                                                <option value="Private Sector">Private Sector</option>
                                                <option value="Article">Article</option>
                                                <option value="Forum Leads">Forum Leads</option>
                                                <option value="Industry Events">Industry Events</option>
                                                <option value="Funding Opportunities">Funding Opportunities</option>
                                                <option value="Enterprise and Supply Development">Enterprise and Supply Development</option>
                                                <option value="Business opportunities">Business opportunities</option>
                                                <option value="Recreational activities leads">Recreational activities leads</option>
                                                <option value="News">News</option>
                                                
                                                
                                            </select>
                                        </div>
                                    </div>
                                   
                                    </div>
                                    
                            <div class="control-group">
                                        <label class="control-label">Industry Sector</label>
                                                    <div class="controls">
                                             <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from registration where userName = '" + username + "'";
resultSet = statement.executeQuery(sql);
%>
              

        
           
        <%  while(resultSet.next()){ %>
            <%=resultSet.getString("industrySector2")%>
        <% } %>
        
        
       
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
                                      <div class="form-group">
                                         <label for="text1" class="control-label col-lg-4">Search Phrase </label> 
                                        <div class="col-lg-8">
                                            <input type="text" id="text1" name="phrase31"  placeholder="" class="form-control"> 
                                            <input type="text" id="text1" name="phrase32"  placeholder="" class="form-control"> 
                                            <input type="text" id="text1" name="phrase33"  placeholder="" class="form-control"> 
                                        </div>

                                    </div>
                                     <div class="form-group">
                                            <label class="control-label col-lg-4">Location :</label>
                                            <div class="col-lg-8">
                                            <select name="location2" required="required" class="form-control chzn-select" multiple>
                                                <option value="Gauteng">Gauteng</option>
                                                <option value="Kwazulu Natal">Kwazulu Natal</option>
                                                <option value="North West">North West</option>
                                                <option value="Eastern Cape">Eastern Cape</option>
                                                <option value="Western Cape">Western Cape</option>
                                                <option value="Mpumalanga">Mpumalanga</option>
                                                <option value="Free State">Free State</option>
                                                <option value="Limpopo">Limpopo</option>
                                                <option value="Northen Cape">Northen Cape</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            
                            
                            </div>
                            



                        </div>
              </div>

   <div class="form-actions no-margin-bottom">
                        <input type="submit" value="Save" class="btn btn-primary">
                          <input type="button" value="Back" class="btn btn-danger" onCLick="history.back()">
                    </div>
                </form> 

                    </div>
<%
    session.setAttribute("username", username);
    

%>

                  
            </div>

        </div>

    </div></div></div></div></div>
<!--Footer-part-->
<!--Foot/er-part-->
 <jsp:include page="Footer.jsp"></jsp:include>
<!--end-Footer-part--> 
<script src="assets/lib/jquery/jquery.js"></script>


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


            <script src="assets/js/style-switcher.js"></script>
</body>
</html>
