<%-- 
    Document   : FilterPage
    Created on : 12 Oct 2017, 10:38:25 AM
    Author     : KBCS Solutions
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,300">
  <link rel="stylesheet" href="style/base.css">
  <link rel="stylesheet" href="style/style.css">
  <link rel="stylesheet" href="datepicker/css/bootstrap.css">
		<link rel="stylesheet" href="datepicker/css/datepicker.css">
		<script src="datepicker/js/main.js"></script>
		<script src="datepicker/js/bootstrap-datepicker.js"></script>
		<script>
				$(function(){
					$('.datepicker').datepicker();
				});
		</script>

  <!--java script-->
  <script src="js/modernizr.js"></script>
<link rel="stylesheet" href="style/css.css">
    </head>
    

<div class="admin-panel clearfix">
  <div class="slidebar">
    <div class="logo" >
      <a href=""><i class="fa fa-user" aria-hidden="true"></i></a>
	 
    </div>
    <ul>
      <li><a href="UserInterface.jsp">User</a></li>
      <li><a href="SearchPage.jsp">Filter/Search</a></li>
      <li><a href="#Report">Report</a></li>
      <li><a href="#Dashboard">Dashboard</a></li>
    </ul>
  </div>
  <div class="main">
    <ul class="topbar clearfix">
      <li><a href="#">p</a></li>
      <li><a href="#">o</a></li>
    </ul>
	
      <select name="province">
          <option>Gauteng</option>
          <option>Mpumalanga</option>
          <option>North West</option>
          <option>Western Cape</option>
          <option>Kwazulu Natal</option>
          <option>Limpopo</option>
          <option>Eastern Cape</option>
          <option>Northern Cape</option>
          <option>Free State</option>
      </select>
      
		<div class="well">
			Published Date:<input class="datepicker" type="text" name="date" size="8">
		</div>
      
    <div class="mainContent clearfix">
     <ul class="statusbar">
       <li><a href=""></a></li>
       <li><a href=""></a></li>
       <li class="profiles-setting"><a href="">s</a></li>
       <li class="logout"><a href="">k</a></li>
     </ul>
   </div>
</div>
    </div>
</html>