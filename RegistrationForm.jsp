<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="formBean" class="za.ac.kbcs.model.BeanClass" scope="session"/>
<jsp:setProperty name="BeanClass" property="*"/> 
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
         
            <h5>Registration</h5>
            <!-- .toolbar -->
            <div class="toolbar">
              <nav style="padding: 8px;">
                  <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                      <i class="glyphicon glyphicon-minus"></i>
                  </a>
                  <a href="javascript:;" class="btn btn-default btn-xs full-box">
                      <i class="glyphicon glyphicon-resize-small"></i>
                  </a>
                  <a onCLick="history.back()" class="btn btn-danger btn-xs close-box">
                      <i class="glyphicon glyphicon-remove"></i>
                  </a>
              </nav>
            </div>             <!-- /.toolbar -->
        </header>
                            
                                <div id="div-1" class="body">

                                    <form action="RegistrationServlet.do" method="POST" class="form-horizontal">

                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Company Name </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="companyName" class="form-control" placeholder="" required />
                                        </div>
                                    </div>
                                   <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Trading Name </label>
                                         <div class="col-lg-8">
                                            <input type="text" name="tradingName" class="form-control" placeholder="" />
                                        </div>
                                    </div>


                                     <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Email Address </label>
                                         <div class="col-lg-8">
                                            <input type="email" name="emailAddress" class="form-control" id="email" placeholder="" required/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">User Name </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="username" class="form-control" placeholder="" required/>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Password </label>
                                         <div class="col-lg-8">
                                            <input type="password" name="password" class="form-control" placeholder=""  required id="txtPassword"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="text1" class="control-label col-lg-4">Confirm Password </label>
                                        <div class="col-lg-8">
                                            <input type="password" name="confirmPassword" class="form-control" placeholder=""  required id="txtConfirmPassword"/>
                                            <span id='message'></span>
                                        </div>
                                    </div>

                            
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Owner Profile</h5>
                                </div>
                               
                                   
                                         <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">First Name </label>
                                             <div class="col-lg-8">
                                                <input type="text" name="firstName" class="form-control" placeholder="" required/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Last Name </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="lastName" class="form-control" placeholder="" />
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Job Designation </label>
                                           <div class="col-lg-8">
                                                <input type="text" name="jobDesignation" class="form-control" placeholder="" />
                                            </div>
                                        </div>
                                    
                              
        
                                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                    <h5>Company Profile</h5>
                                </div>
                              
                                   

                                       <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Company Description </label>
                                             <div class="col-lg-8">
                                                <textarea id="autosize" class="form-control" name="companyDescription" ></textarea>
                                            </div>
                                        </div>
  
                                         <div class="form-group">
                                            <label  class="control-label col-lg-4">Industry Sector </label>
                                            <div class="col-lg-8">
                                                <select class="form-control chzn-select" multiple name="industrySector">

                                                    <option value="Academic / Training">Academic / Training</option>
                                                    <option value="Accounting / Auditing">Accounting / Auditing</option>
                                                    <option value="Administrative">Administrative</option>
                                                    <option value="Advertising">Advertising</option>
                                                    <option value="Agriculture">Agriculture </option>
                                                    <option value="Aviation">Aviation</option>
                                                    <option value="Banking / Financial Services">Banking / Financial Services</option>
                                                    <option value="BBBEE Verification Agencies">BBBEE Verification Agencies</option>
                                                    <option value="Beauty And Hair">Beauty &amp; Hair</option>
                                                    <option value="Building Trades">Building Trades</option>
                                                    <option value="Business Development">Business Development</option>
                                                    <option value="Call Centre">Call Centre</option>
                                                    <option value="Chemical / Petrochemical">Chemical / Petrochemical</option>
                                                    <option value="Chemical Engineering">Chemical Engineering</option>
                                                    <option value="Civil Engineering">Civil Engineering</option>
                                                    <option value="Communication Technologies">Communication Technologies</option>
                                                    <option value="Construction">Construction</option>
                                                    <option value="Corporate Social Investment">Corporate Social Investment</option>
                                                    <option value="Electrical Engineering">Electrical Engineering</option>
                                                    <option value="Electrical Equipment">Electrical Equipment</option>
                                                    <option value="Electronics">Electronics</option>
                                                    <option value="Energy">Energy</option>
                                                    <option value="Engineering">Engineering</option>
                                                    <option value="Entertainment">Entertainment</option>
                                                    <option value="Environmental Services">Environmental Services</option>
                                                    <option value="Equipment Hire">Equipment Hire</option>
                                                    <option value="Facilities Management">Facilities Management</option>
                                                    <option value="Fitness, Health and Wellness">Fitness, Health &amp; Wellness</option>
                                                    <option value="Fmcg">Fmcg</option>
                                                    <option value="Food Supply (Fruit and Veg,Meat)">Food Supply (Fruit &amp; Veg,Meat)</option>
                                                    <option value="Freight / Shipping / Clearing">Freight / Shipping / Clearing</option>
                                                    <option value="Government / Municipal">Government / Municipal</option>
                                                    <option value="Horticulture / Landscaping">Horticulture / Landscaping</option>
                                                    <option value="Hotel / Catering / Hospitality">Hotel / Catering / Hospitality</option>
                                                    <option value="Human Resources">Human Resources</option>
                                                    <option value="Human Resources (Staffing)">Human Resources (Staffing)</option>
                                                    <option value="Information Technology">Information Technology</option>
                                                    <option value="Insurance / Social Security">Insurance / Social Security</option>
                                                    <option value="Legal">Legal</option>
                                                    <option value="Logistics / Supply Chain">Logistics / Supply Chain</option>
                                                    <option value="Management Consulting">Management Consulting</option>
                                                    <option value="Manufacturing">Manufacturing</option>
                                                    <option value="Material Supply">Material Supply</option>
                                                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                                                    <option value="Media Production / Publishing">Media Production / Publishing</option>
                                                    <option value="Medical and Healthcare">Medical &amp; Healthcare</option>
                                                    <option value="Mining">Mining</option>
                                                    <option value="Motor Industry / Automotive">Motor Industry / Automotive</option>
                                                    <option value="NGO / Non-Profit">NGO / Non-Profit</option>
                                                    <option value="Office Support">Office Support</option>
                                                    <option value="Other">Other</option>
                                                    <option value="Petroleum">Petroleum</option>
                                                    <option value="Pharmaceutical / Laboratory">Pharmaceutical / Laboratory</option>
                                                    <option value="Photography">Photography</option>
                                                    <option value="Plant and Equipment">Plant &amp; Equipment</option>
                                                    <option value="PR / Communications">PR / Communications</option>
                                                    <option value="Property">Property</option>
                                                    <option value="Public Enterprises ">Public Enterprises </option>
                                                    <option value="Public Relations/Event Management">Public Relations/Event Management</option>
                                                    <option value="Purchasing">Purchasing</option>
                                                    <option value="Research">Research</option>
                                                    <option value="Retail">Retail</option>
                                                    <option value="Safety and Security">Safety &amp; Security</option>
                                                    <option value="Sales and Marketing">Sales &amp; Marketing</option>
                                                    <option value="Technical / Scientific / Marine Services">Technical / Scientific / Marine Services</option>
                                                    <option value="Technical Services">Technical Services</option>
                                                    <option value="Textiles / Clothing">Textiles / Clothing</option>
                                                    <option value="Transport Services">Transport Services</option>
                                                    <option value="Travel / Tourism">Travel / Tourism</option>
                                                    <option value="Utilities">Utilities</option>
                                                    <option value="Wholesale / Distribution">Wholesale / Distribution</option>

                                                </select>
                                            </div>
                                        </div>

                                         <div class="form-group">
                                            <label for="normal" class="control-label col-lg-4">Telephone Number </label>
                                            <div class="col-lg-8">
                                                <input type="text" name="telephone"  class="form-control" >

                                            </div>
                                            </div>



                                        <div class="form-group">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                                            <h5>Company Address</h5>
                                        </div>
                                            </div>

                                         <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Street Name and Number </label>
                                            <div class="col-lg-8">
                                                <input type="text" id="text1" name="streetName" class="form-control" placeholder="" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Suburb </label>
                                            <div class="col-lg-8">
                                                <input type="text" id="text1" name="suburb" class="form-control" placeholder="" />
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">City</label>
                                            <div class="col-lg-8">
                                                <input type="text" id="text1" name="city" class="form-control" placeholder="" />
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label for="text1" class="control-label col-lg-4">Postal Code </label>
                                            <div class="col-lg-8">
                                                <input type="text" id="text1" name="postalCode" class="form-control" placeholder="" />
                                            </div>
                                        </div>



                                         <div class="form-group">
                                            <label  class="control-label col-lg-4">Province</label>
                                            <div class="col-lg-8">
                                                <select class="form-control" name="province" >

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
                                         
                                        <div class="form-actions no-margin-bottom">
                        <input type="submit" value="Save" class="btn btn-primary" id="btnSubmit" onclick="validate();">
                        <input type="button" value="Back" class="btn btn-danger" onCLick="history.back()">
                    </div>
                                         </form>   
              
                                </div>

                            </div>
                            
                             
                    </div>


                </div>
           
            </div>
              

        </div></div></div>
    <!--Footer-part-->
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
            
            
             <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnSubmit").click(function () {
                var password = $("#txtPassword").val();
                var confirmPassword = $("#txtConfirmPassword").val();
                if (password != confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }
                return true;
            });
        });
    </script>
    
 
    <script type="text/javascript">
    function validate() {
        var mobile = document.getElementById("telephone").value;
        var pattern = /^\d{10}$/;
        if (pattern.test(mobile)) {
            
            return true;
        } 
            alert("Please enter a valid mobile number.input 10 digits number!");
            return false;

    }
</script>
</body>
</html>
