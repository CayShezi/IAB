
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
     String username = (String)session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>IAB</title>
        <meta charset="UTF-8" />
       <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	  <!-- Bootstrap 3.3.7 -->
	  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
	  <!-- Font Awesome -->
	  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
	  <!-- Ionicons -->
	  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
	  <!-- iCheck for checkboxes and radio inputs -->
	  <link rel="stylesheet" type="text/css" href="js3/FilteringCheckBox/css/css1.css" />
	  <!-- Bootstrap Color Picker -->
	  <link rel="stylesheet" href="bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
	  <!-- Theme style -->
	  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	  
	  <!-- AdminLTE Skins. Choose a skin from the css/skins
		   folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <script src="http://code.jquery.com/jquery-2.0.3.min.js" data-semver="2.0.3" data-require="jquery"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/datatables/1.9.4/css/jquery.dataTables_themeroller.css" rel="stylesheet" data-semver="1.9.4" data-require="datatables@*" />
    <link href="http://cdnjs.cloudflare.com/ajax/libs/datatables/1.9.4/css/jquery.dataTables.css" rel="stylesheet" data-semver="1.9.4" data-require="datatables@*" />
    <link href="http://cdnjs.cloudflare.com/ajax/libs/datatables/1.9.4/css/demo_table_jui.css" rel="stylesheet" data-semver="1.9.4" data-require="datatables@*" />
    <link href="http://cdnjs.cloudflare.com/ajax/libs/datatables/1.9.4/css/demo_table.css" rel="stylesheet" data-semver="1.9.4" data-require="datatables@*" />
    <link href="http://cdnjs.cloudflare.com/ajax/libs/datatables/1.9.4/css/demo_page.css" rel="stylesheet" data-semver="1.9.4" data-require="datatables@*" />
    <link data-require="jqueryui@*" data-semver="1.10.0" rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.0/css/smoothness/jquery-ui-1.10.0.custom.min.css" />
         <script src="ForAddingRowsToFilterWith.js"></script>
         <script src="ForAddingRowsTo.js"></script>
          <script src="ForFilteringRows.js"></script>
           <script src="Filtering.js"></script>

  

   <!----------------------------------------FOR ADDING ROWS TO FILTER WITH------------------------------------------>

   
<!---------------------------------------------END--------------------------------------------------------------->
   
   
  <!-----------------------FOR FILTERING ROWS------------------------------------------------------>
  
    <link href="style.css" rel="stylesheet" />
    

    <script>
	
		$(function() {
		  var oTable = $('#example').DataTable({
			"oLanguage": {
			  "sSearch": "Filter Data"
			},
			"iDisplayLength": -1,
			"sPaginationType": "full_numbers",

		  });




		  $("#datepicker_from").datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: false,
			"onSelect": function(date) {
			  minDateFilter = new Date(date).getTime();
			  oTable.fnDraw();
			}
		  }).keyup(function() {
			minDateFilter = new Date(this.value).getTime();
			oTable.fnDraw();
		  });

		  $("#datepicker_to").datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: false,
			"onSelect": function(date) {
			  maxDateFilter = new Date(date).getTime();
			  oTable.fnDraw();
			}
		  }).keyup(function() {
			maxDateFilter = new Date(this.value).getTime();
			oTable.fnDraw();
		  });

		});

		// Date range filter
		minDateFilter = "";
		maxDateFilter = "";

		$.fn.dataTableExt.afnFiltering.push(
		  function(oSettings, aData, iDataIndex) {
			if (typeof aData._date == 'undefined') {
			  aData._date = new Date(aData[19]).getTime();
			}

			if (minDateFilter && !isNaN(minDateFilter)) {
			  if (aData._date < minDateFilter) {
				return false;
			  }
			}

			if (maxDateFilter && !isNaN(maxDateFilter)) {
			  if (aData._date > maxDateFilter) {
				return false;
			  }
			}

			return true;
		  }
		);
	
	</script>
  </head>

  <body class="hold-transition skin-blue sidebar-mini">

	<?php
	
		include ("session.php");
		$Sql = mysql_query("SELECT * FROM users WHERE UserNo ='$UserNo' AND CompanyNo = '$CompanyNo'");
		$var = mysql_fetch_assoc($Sql);
		
	?>


<div class="wrapper">

 <!------------------------ Top  column. contains the header ---------------------->
  
	<header class="main-header">
  
	
  
		<!-- Logo -->
		<a href="index.jsp" class="logo">
		  <!-- mini logo for sidebar mini 50x50 pixels -->
		  
		  <!-- logo for regular state and mobile devices -->
		  <span class="logo-lg"><b>IAB </b>System</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
		  <!-- Sidebar toggle button-->
		  <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
			
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
				  
				  <!-- Control Sidebar Toggle Button -->
				  <li>
					<a href="#" data-toggle="control-sidebar">Filter</a>
				  </li>
				</ul>
			</div>
		  
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
				  
				  <!-- Control Sidebar Toggle Button -->
				  <li>
					<a href="index.jsp"><i class="fa fa-dashboard"></i> DashBoard</a>
				  </li>
				</ul>
			</div>
		  
		</nav>
  </header>
 
 <!--------------END----------------------------------------------->
 
<!-- Left side column. contains the logo and sidebar -->

 <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">COLUMN NAME'S</li>
		
		<!------For Radio Button To be Clicked AND UnClicked----------->
			
			<script>
				var x = false
			</script>
		
		<!------------------------------END---------------------------->
		
        </br>
       <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="clientName" class="flat-red">  Client Name</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="type">   Type</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				 
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="description">  Description</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="salesNumber">  Sales Number</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				 
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="status">   Status</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				 
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="dateSubmitted">  Date Submitted</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="documents">  Documents</label>
				
			</li>
	   </div>
	   
	   </br>
	   
	   <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="validityPeriod">  Validity Period</label>
				
			</li>
	   </div>
           
            </br>
           
           
            <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="projectName">  Project Name</label>
				
			</li>
	   </div>
            
             </br>
           
            <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="startDate">  Project Start Date</label>
				
			</li>
	   </div>
             
              </br>
           
            <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="DueDate">  Project Due Date</label>
				
			</li>
	   </div>
              
               </br>
           
            <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="projectStatus">  Project Status</label>
				
			</li>
	   </div>
               
                </br>
           
            <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="projectManager">  Project Manager</label>
				
			</li>
	   </div>
                
            </br>
           
            <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="taskName"> Task Name</label>
				
			</li>
	   </div>
            
             </br>
           
           
             <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="taskStatus">  Task Status</label>
				
			</li>
	   </div>
             
              </br>
           
             <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="taskStartDate"> Task Start Date</label>
				
			</li>
	   </div>
              
               </br>
           
           
             <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="taskFinishDate"> Task Finish Date</label>
				
			</li>
	   </div>
               
                </br>
           
             <div>
			<li class="treeview" style="padding-left:0.5cm;" >
				
				<label style="color:#b8c7ce;font:arial;font-weight: 400;" ><input type="checkbox" name="assignTo">  Task Manager</label>
				
			</li>
	   </div>
                
	   
	   
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
 
 
 <div class="content-wrapper">
 
	</br>
	<p id="date_filter">
		<span id="date-label-from" class="date-label">From: </span><input class="date_range_filter date" type="text" id="datepicker_from" />
		<span id="date-label-to" class="date-label">To:<input class="date_range_filter date" type="text" id="datepicker_to" />
	</p>
	
	<div class="form-group" style="width:100%;float:left;padding-top:0.5cm;">
					
		<div style="float:left;">
			<input type="button" id="btnExport" onclick="javascript:xport.toCSV('example');" value="Export to CSV">
		</div>
		<div style="float:left;">
			<input type="button" onclick="tableToExcel('example', 'W3C Example Table')" value="Export to Excel">
		</div>
		<!--<div style="float:right;"> 
			<input type="search" class="light-table-filter" data-table="table" placeholder="Filter Search">
		</div>-->
	</div>
	
	
	
<table id="example" class="table table-bordered table-striped" style="display: block;overflow-x: auto;white-space: nowrap;">
                <thead>
					<tr class="first">
						<th class="clientName" >Client Name</th>
						<th class="type" >Type</th>
						<th class="description">Description </th>
						<th class="salesNumber">Sales Number</th>
						<th class="status">Status</th>
						<th class="dateSubmitted">Date Submitted</th>
						
						<th class="validityPeriod">Validity Period</th>
                                                <th class="projectName">Project Name</th>
                                                 <th class="startDate">Project Start Date</th>
                                                  <th class="DueDate">Project Due Date</th>
                                                   <th class="projectStatus">Project Status</th>
                                                    <th class="projectManager">Project Manager</th>
                                                     <th class="taskName">Task Name</th>
                                                      <th class="taskStatus">Task Status</th>
                                                       <th class="taskStartDate">Task Start Date</th>
                                                        <th class="taskFinishDate">Task Finish Date</th>
                                                         <th class="assignTo">Task Manager</th>
						
					</tr>
					
					
                </thead>
                                                           
      
                <tbody>
                    
                     <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND s.oppID = p.oppID AND t.assignTo = e.employeeID ";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
				
									
						<tr id="Memory1" class="part_detail" >
						
							<td class="clientName" rel="<%=resultSet.getString("s.clientName")%>" ><%=resultSet.getString("clientName")%></td>
							<td class="type" rel="<%=resultSet.getString("s.type")%>" ><%=resultSet.getString("type")%></td>
							<td class="description" rel="<%=resultSet.getString("s.description")%>" ><%=resultSet.getString("description")%></td>
							<td class="salesNumber" rel="<%=resultSet.getString("s.salesNumber")%>" ><%=resultSet.getString("salesNumber")%></td>
							<td class="status" rel="<%=resultSet.getString("s.status")%>" ><%=resultSet.getString("status")%></td>
							<td class="dateSubmitted" rel="<%=resultSet.getString("s.dateSubmitted")%>" ><%=resultSet.getString("dateSubmitted")%></td>
	
							<td class="validityPeriod" rel="<%=resultSet.getString("s.validityPeriod")%>" ><%=resultSet.getString("validityPeriod")%></td>
                                                        <td class="projectName" rel="<%=resultSet.getString("p.projectName")%>" ><%=resultSet.getString("p.projectName")%></td>
                                                        <td class="startDate" rel="<%=resultSet.getString("p.startDate")%>" ><%=resultSet.getString("p.startDate")%></td>
                                                        <td class="DueDate" rel="<%=resultSet.getString("p.dueDate")%>" ><%=resultSet.getString("p.dueDate")%></td>
                                                        <td class="projectStatus" rel="<%=resultSet.getString("p.status")%>" ><%=resultSet.getString("p.status")%></td>
                                                        <td class="projectManager" rel="<%=resultSet.getString("e.employeeName")%>" ><%=resultSet.getString("e.employeeName")%></td>
                                                        <td class="taskName" rel="<%=resultSet.getString("t.taskName")%>" ><%=resultSet.getString("t.taskName")%></td>
                                                        <td class="taskStatus" rel="<%=resultSet.getString("t.status")%>" ><%=resultSet.getString("t.status")%></td>
                                                        <td class="taskStartDate" rel="<%=resultSet.getString("t.startDate")%>" ><%=resultSet.getString("t.startDate")%></td>
                                                        <td class="taskFinishDate" rel="<%=resultSet.getString("t.finishDate")%>" ><%=resultSet.getString("t.finishDate")%></td>
                                                        <td class="assignTo" rel="<%=resultSet.getString("e.employeeName")%>" ><%=resultSet.getString("e.employeeName")%></td>
                                                              
				
						</tr>

					<%

                     

                i++;
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
     
				
				</tbody>
                                
                                
           <tfoot>
                <tr>
                                                <th class="clientName" >Client Name</th>
						<th class="type" >Type</th>
						<th class="description">Description </th>
						<th class="salesNumber">Sales Number</th>
						<th class="status">Status</th>
						<th class="dateSubmitted">Date Submitted</th>
						<th class="validityPeriod">Documents</th> 
						
                                                <th class="projectName">Project Name</th>
                                                <th class="startDate">Project Start Date</th>
                                                <th class="DueDate">Project Due Date</th>
                                                <th class="projectStatus">Project Status</th>
                                                <th class="projectManager">Project Manager</th>
                                                <th class="taskName">Task Name</th>
                                                <th class="taskStatus">Task Status</th>
                                                <th class="taskStartDate">Task Start Date</th>
                                                <th class="taskFinishDate">Task Finish Date</th>
                                                <th class="assignTo">Task Manager</th>
						
						
				</tr>
                </tfoot>
            </table>
			</br></br>
	
	</div>
	
	<!------------footer---->
    
	<footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1
        </div>
        <strong>2018 &copy; KBCSSolutions <a href="#"></a></strong>
</footer>
	
	
	
	
<!---------------------------- POP UP BOX With chechbox's------------------------------>
	
	<div class="modal fade" id="Filter">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">SELECT FIELDS TO FILTER WITH</h4>
				</div>
				<div class="modal-body">
					</br>
					<div class="form-group">
						<label>
						
							<label><input type="checkbox" id="1" value="1" /> Client Name</label></br>
							<label><input type="checkbox" id="2" value="2" /> Type</label></br>
							<label><input type="checkbox" id="3" value="3" /> Description</label></br>
							<label><input type="checkbox" id="4" value="4" /> Sales Number</label></br>
							<label><input type="checkbox" id="5" value="5" /> Status</label></br>
							<label><input type="checkbox" id="6" value="6" /> Date Submitted</label></br>
							<label><input type="checkbox" id="8" value="8" /> Validity Period</label></br>
                                                        <label><input type="checkbox" id="9" value="9" /> Project Name</label></br>
                                                        <label><input type="checkbox" id="10" value="10" /> Project Start Date</label></br>
							<label><input type="checkbox" id="11" value="11" /> Project End Date</label></br>
							<label><input type="checkbox" id="12" value="12" /> Project Status</label></br>
                                                        <label><input type="checkbox" id="13" value="13" /> Project Manager</label></br>
                                                        <label><input type="checkbox" id="14" value="14" /> Task Name</label></br>
                                                        <label><input type="checkbox" id="15" value="15" /> Task Status</label></br>
                                                        <label><input type="checkbox" id="16" value="16" /> Task Start Date</label></br>
                                                        <label><input type="checkbox" id="17" value="17" /> Task Finish Date</label></br>
                                                        <label><input type="checkbox" id="18" value="18" /> Task Manager</label></br>
						</label>
						
					</div>
					
				</div>
				
				<!--<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
				</div>-->
			</div>
			<!-- /.modal-content -->
		</div>
		 <!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-------------------------------------------END-------------------------------------------------->
	
	<!-- Control Sidebar -->
	
	<aside class="control-sidebar control-sidebar-dark" style="height:100%">
    <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
		  <!--<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
		  <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>-->
		</ul>
		
		  <!-- /.tab-pane -->
		  <!-- Stats tab content -->
		<div class="tab-pane" id="control-sidebar-stats-tab">Filters</div>
		  <!-- /.tab-pane -->
		  <!-- Settings tab content -->
		  <div class="tab-pane" id="control-sidebar-settings-tab">
			<form method="post">
			   
			   <div class="form-group">
					
					
				<!---------------------------------------------ADDED FILTER------------------------------------------------>
				
				
				<ul class="sidebar-menu" data-widget="tree">
					
					<!------For Radio Button To be Clicked AND UnClicked----------->
						
						<script>
							var x = false;
						</script>
					
					<!------------------------------END---------------------------->
					
					</br>
					<!----------------------------BUTTON FOR POP UP BOX With chechbox's------------------------------>
					
					<div class="box-body">
						<button type="button" name="Begin[]" class="btn btn-default" data-toggle="modal" data-target="#Filter">
							ADD OR REMOVE FIELDS
						</button>
					</div>
					
					<!-------------------------------------------END-------------------------------------------------->
					
				   <div style="display:none;" id="1-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Client Name</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
                                                            
                                                            
                                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           
            

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.clientName");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="clientName"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							
								
							</ul>
						</li>
						</br>
				   </div>
				   
				   <div style="display:none;" id="2-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Type</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.type");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="type"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
				   
				   <div style="display:none;" id="3-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Description</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.description");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="description"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
				   
				   <div style="display:none;" id="4-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Sales Number</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.salesNumber");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="salesNumber"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
				   
				   <div style="display:none;" id="5-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Status</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.status");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="status"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
				   
				   <div style="display:none;" id="6-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Date Submitted</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.dateSubmitted");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="dateSubmitted"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
				   

                                         
				   
				   <div style="display:none;" id="8-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Validity Period</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("s.validityPeriod");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="validityPeriod"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
				   
				
				  </ul>
					
					
					
					
					
				<!--------------------------------------------------END---------------------------------------------------->	
					
			  </div>


				   <div style="display:none;" id="9-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Project Name</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("p.projectName");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="projectName"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        				   <div style="display:none;" id="10-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Project Start Date</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("p.startDate");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="startDate"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        				   <div style="display:none;" id="11-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Project End Date</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("p.dueDate");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="DueDate"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        
                                                                                                		<div style="display:none;" id="12-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Status</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("p.status");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="projectStatus"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        
                                                        <div style="display:none;" id="13-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Project Manager</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("e.employeeeName");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="projectManager"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        <div style="display:none;" id="14-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Task Name</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("t.taskName");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="taskName"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        <div style="display:none;" id="15-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Task Status</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("t.status");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="taskStatus"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        
                                 <div style="display:none;" id="16-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Task Start Date</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("t.startDate");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="taskStartDate"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        
                                                        <div style="display:none;" id="17-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Task Finish Date</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("t.finishDate");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="taskFinishDate"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        
                                                        
                                                        <div style="display:none;" id="18-a" >
						<li class="treeview" style="padding-left:0.5cm;" >
							<a href="#" >
								<span>Task Manager</span>
								<!--<span class="pull-right-container">
								  <i class="fa fa-angle-left pull-right"></i>
								</span>-->
							</a>
							
							<ul class="treeview-menu">
								 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql2 ="select * from projectmanagement p,employees e,projecttask t,salesmanagement s,opportunity o where o.i_d = p.oppID AND p.projectID = t.projectName AND t.assignTo = e.employeeID AND s.oppID = p.oppID";
resultSet2 = statement.executeQuery(sql2);
%>
              

        
           
        <%  
           

while(resultSet2.next()){ 
 
                     String name;
                     name = resultSet2.getString("e.employeeName");
                     %>
                     
                             <li style="padding-left:1cm;"><label><input type="radio" rel="assignTo"  name="<%=name%>" value="<%=name%>" onmousedown="if (this.checked) { x = true; }" onclick="if (x) {this.checked = false; x = false; return true;}" style="-webkit-appearance: checkbox; -moz-appearance: checkbox; -ms-appearance: checkbox; " ><i></i> <text style="color:white"><%=name%></text></label></li>
 
        <% 
 
        } %>
       
        
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
							</ul>
						</li>
						</br>
				   </div>
                                                        
                                                        
                                                        
			  <!-- /.form-group -->

			</form>
		  </div>
		  <!-- /.tab-pane -->
		</div>
	</aside>
	
  <!-- /.control-sidebar -->
  
 
  </div>
<!--------------------------Radio For Row Filtering------------------------------>

<script>
	
		$("input:radio").click(function (){
			var showAll = true;
			$('tr').not('.first').hide();
			$('input[type=radio]').each(function (){
				if ($(this)[0].checked){
					showAll = false;
					var status = $(this).attr('rel');
					var value = $(this).val();            
					$('td.' + status + '[rel="' + value + '"]').parent('tr').show();
				}
			});
			if(showAll){
				$('tr').show();
			}
		});
	
	</script>



<!---------------------------------END-------------------------------------------->	

<!--------------------ADDING AND REMOVING FILDS TO FILTER WITH-------------------->

		
<script>
	<!-----------------FOR DIV 1 ---------------->
	$("#1").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#1-a").fadeIn(200);
		}
		else
		{
			$("#1-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#1").is(':checked'); 
	   if(ischecked)
	   {
		   $("#1-a").fadeIn(200);
	   } 
		else
		{
			$("#1-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 2 ---------------->
	$("#2").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#2-a").fadeIn(200);
		}
		else
		{
			$("#2-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#2").is(':checked'); 
	   if(ischecked)
	   {
		   $("#2-a").fadeIn(200);
	   } 
		else
		{
			$("#2-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	
	<!-----------------FOR DIV 3 ---------------->
	$("#3").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#3-a").fadeIn(200);
		}
		else
		{
			$("#3-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#3").is(':checked'); 
	   if(ischecked)
	   {
		   $("#3-a").fadeIn(200);
	   } 
		else
		{
			$("#3-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 4 ---------------->
	$("#4").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#4-a").fadeIn(200);
		}
		else
		{
			$("#4-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#4").is(':checked'); 
	   if(ischecked)
	   {
		   $("#4-a").fadeIn(200);
	   } 
		else
		{
			$("#4-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 5 ---------------->
	$("#5").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#5-a").fadeIn(200);
		}
		else
		{
			$("#5-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#5").is(':checked'); 
	   if(ischecked)
	   {
		   $("#5-a").fadeIn(200);
	   } 
		else
		{
			$("#5-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 6 ---------------->
	$("#6").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#6-a").fadeIn(200);
		}
		else
		{
			$("#6-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#6").is(':checked'); 
	   if(ischecked)
	   {
		   $("#6-a").fadeIn(200);
	   } 
		else
		{
			$("#6-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 7 ---------------->
	$("#7").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#7-a").fadeIn(200);
		}
		else
		{
			$("#7-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#7").is(':checked'); 
	   if(ischecked)
	   {
		   $("#7-a").fadeIn(200);
	   } 
		else
		{
			$("#7-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 8 ---------------->
	$("#8").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#8-a").fadeIn(200);
		}
		else
		{
			$("#8-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#8").is(':checked'); 
	   if(ischecked)
	   {
		   $("#8-a").fadeIn(200);
	   } 
		else
		{
			$("#8-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 9 ---------------->
	$("#9").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#9-a").fadeIn(200);
		}
		else
		{
			$("#9-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#9").is(':checked'); 
	   if(ischecked)
	   {
		   $("#9-a").fadeIn(200);
	   } 
		else
		{
			$("#9-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 10 ---------------->
	$("#10").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#10-a").fadeIn(200);
		}
		else
		{
			$("#10-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#10").is(':checked'); 
	   if(ischecked)
	   {
		   $("#10-a").fadeIn(200);
	   } 
		else
		{
			$("#10-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 11 ---------------->
	$("#11").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#11-a").fadeIn(200);
		}
		else
		{
			$("#11-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#11").is(':checked'); 
	   if(ischecked)
	   {
		   $("#11-a").fadeIn(200);
	   } 
		else
		{
			$("#11-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 12 ---------------->
	$("#12").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#12-a").fadeIn(200);
		}
		else
		{
			$("#12-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#12").is(':checked'); 
	   if(ischecked)
	   {
		   $("#12-a").fadeIn(200);
	   } 
		else
		{
			$("#12-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 13 ---------------->
	$("#13").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#13-a").fadeIn(200);
		}
		else
		{
			$("#13-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#13").is(':checked'); 
	   if(ischecked)
	   {
		   $("#13-a").fadeIn(200);
	   } 
		else
		{
			$("#13-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 14 ---------------->
	$("#14").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#14-a").fadeIn(200);
		}
		else
		{
			$("#14-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#14").is(':checked'); 
	   if(ischecked)
	   {
		   $("#14-a").fadeIn(200);
	   } 
		else
		{
			$("#14-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 15 ---------------->
	$("#15").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#15-a").fadeIn(200);
		}
		else
		{
			$("#15-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#15").is(':checked'); 
	   if(ischecked)
	   {
		   $("#15-a").fadeIn(200);
	   } 
		else
		{
			$("#15-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 16 ---------------->
	$("#16").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#16-a").fadeIn(200);
		}
		else
		{
			$("#16-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#16").is(':checked'); 
	   if(ischecked)
	   {
		   $("#16-a").fadeIn(200);
	   } 
		else
		{
			$("#16-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 17 ---------------->
	$("#17").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#17-a").fadeIn(200);
		}
		else
		{
			$("#17-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#17").is(':checked'); 
	   if(ischecked)
	   {
		   $("#17-a").fadeIn(200);
	   } 
		else
		{
			$("#17-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 18 ---------------->
	$("#18").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#18-a").fadeIn(200);
		}
		else
		{
			$("#18-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#18").is(':checked'); 
	   if(ischecked)
	   {
		   $("#18-a").fadeIn(200);
	   } 
		else
		{
			$("#18-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 19 ---------------->
	$("#19").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#19-a").fadeIn(200);
		}
		else
		{
			$("#19-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#19").is(':checked'); 
	   if(ischecked)
	   {
		   $("#19-a").fadeIn(200);
	   } 
		else
		{
			$("#19-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	
	<!-----------------FOR DIV 20 ---------------->
	$("#20").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#20-a").fadeIn(200);
		}
		else
		{
			$("#20-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#20").is(':checked'); 
	   if(ischecked)
	   {
		   $("#20-a").fadeIn(200);
	   } 
		else
		{
			$("#20-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 21 ---------------->
	$("#21").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#21-a").fadeIn(200);
		}
		else
		{
			$("#21-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#21").is(':checked'); 
	   if(ischecked)
	   {
		   $("#21-a").fadeIn(200);
	   } 
		else
		{
			$("#21-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	
	<!-----------------FOR DIV 22 ---------------->
	$("#22").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#22-a").fadeIn(200);
		}
		else
		{
			$("#22-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#22").is(':checked'); 
	   if(ischecked)
	   {
		   $("#22-a").fadeIn(200);
	   } 
		else
		{
			$("#22-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 23 ---------------->
	$("#23").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#23-a").fadeIn(200);
		}
		else
		{
			$("#23-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#23").is(':checked'); 
	   if(ischecked)
	   {
		   $("#23-a").fadeIn(200);
	   } 
		else
		{
			$("#23-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	
	<!-----------------FOR DIV 24 ---------------->
	$("#24").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#24-a").fadeIn(200);
		}
		else
		{
			$("#24-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#24").is(':checked'); 
	   if(ischecked)
	   {
		   $("#24-a").fadeIn(200);
	   } 
		else
		{
			$("#24-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 25 ---------------->
	$("#25").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#25-a").fadeIn(200);
		}
		else
		{
			$("#25-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#25").is(':checked'); 
	   if(ischecked)
	   {
		   $("#25-a").fadeIn(200);
	   } 
		else
		{
			$("#25-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	
	<!-----------------FOR DIV 26 ---------------->
	$("#26").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#26-a").fadeIn(200);
		}
		else
		{
			$("#26-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#26").is(':checked'); 
	   if(ischecked)
	   {
		   $("#26-a").fadeIn(200);
	   } 
		else
		{
			$("#26-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	<!-----------------FOR DIV 27 ---------------->
	$("#27").change(function(){
	   
	   var ischecked=$(this).is(':checked'); 
		if(ischecked)
		{
			 $("#27-a").fadeIn(200);
		}
		else
		{
			$("#27-a").fadeOut(200);   
		 }
		
	});
					 

	$(function(){
	   
		var ischecked=$("#27").is(':checked'); 
	   if(ischecked)
	   {
		   $("#27-a").fadeIn(200);
	   } 
		else
		{
			$("#27-a").fadeOut(200);   
		 }
		
	});
	<!-----------------END ---------------->
	
	
	

</script>


<!----------------------------------END------------------------------------------>


	<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>

<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
	
<!---------------------------For Columns Visibility------------------------------->


<script>

	$("input:checkbox:not(:checked)").each(function() {
		var column = "table ." + $(this).attr("name");
		$(column).hide();
	});

	$("input:checkbox").click(function(){
		var column = "table ." + $(this).attr("name");
		$(column).toggle();
	});


</script>




<!---------------------------------END-------------------------------------------->


<!----------------------------For Export CSV AND XMLX DOC's----------------------->

<script>
  $(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
              {
                    extend: 'excelHtml5',
                    title: 'Project Report - ' + new Date().toJSON().slice(0,10).replace(/-/g,'-')
                },
            'csvHtml5'
        ]
    } );
} );
</script>
<!------------------------------------END------------------------------------------------->

<!---------------------------------For Search--------------------------------------------->

<script>

(function(document) {
	'use strict';

	var LightTableFilter = (function(Arr) {

		var _input;

		function _onInputEvent(e) {
			_input = e.target;
			var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
			Arr.forEach.call(tables, function(table) {
				Arr.forEach.call(table.tBodies, function(tbody) {
					Arr.forEach.call(tbody.rows, _filter);
				});
			});
		}

		function _filter(row) {
			var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
			row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
		}

		return {
			init: function() {
				var inputs = document.getElementsByClassName('light-table-filter');
				Arr.forEach.call(inputs, function(input) {
					input.oninput = _onInputEvent;
				});
			}
		};
	})(Array.prototype);

	document.addEventListener('readystatechange', function() {
		if (document.readyState === 'complete') {
			LightTableFilter.init();
		}
	});

})(document);

</script>
<!------------------------------------------------------------------------------->
<!-----------------For Exporting Table Data To Execl XMLX ----------------------->

<script>

var tableToExcel = (function() {
  var uri = 'data:application/vnd.ms-excel;base64,'
    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
    , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
  return function(table, name) {
    if (!table.nodeType) table = document.getElementById(table)
    var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
    window.location.href = uri + base64(format(template, ctx))
  }
})()

</script>

<!------------------------------------------------------------------------------->
<!-----------------For Exporting Table Data To Execl CSV ------------------------>

<script>

var xport = {
  _fallbacktoCSV: true,  
  toXLS: function(tableId, filename) {   
    this._filename = (typeof filename == 'undefined') ? tableId : filename;
    
    //var ieVersion = this._getMsieVersion();
    //Fallback to CSV for IE & Edge
    if ((this._getMsieVersion() || this._isFirefox()) && this._fallbacktoCSV) {
      return this.toCSV(tableId);
    } else if (this._getMsieVersion() || this._isFirefox()) {
      alert("Not supported browser");
    }

    //Other Browser can download xls
    var htmltable = document.getElementById(tableId);
    var html = htmltable.outerHTML;

    this._downloadAnchor("data:application/vnd.ms-excel" + encodeURIComponent(html), 'xls'); 
  },
  toCSV: function(tableId, filename) {
    this._filename = (typeof filename === 'undefined') ? tableId : filename;
    // Generate our CSV string from out HTML Table
    var csv = this._tableToCSV(document.getElementById(tableId));
    // Create a CSV Blob
    var blob = new Blob([csv], { type: "text/csv" });

    // Determine which approach to take for the download
    if (navigator.msSaveOrOpenBlob) {
      // Works for Internet Explorer and Microsoft Edge
      navigator.msSaveOrOpenBlob(blob, this._filename + ".csv");
    } else {      
      this._downloadAnchor(URL.createObjectURL(blob), 'csv');      
    }
  },
  _getMsieVersion: function() {
    var ua = window.navigator.userAgent;

    var msie = ua.indexOf("MSIE ");
    if (msie > 0) {
      // IE 10 or older => return version number
      return parseInt(ua.substring(msie + 5, ua.indexOf(".", msie)), 10);
    }

    var trident = ua.indexOf("Trident/");
    if (trident > 0) {
      // IE 11 => return version number
      var rv = ua.indexOf("rv:");
      return parseInt(ua.substring(rv + 3, ua.indexOf(".", rv)), 10);
    }

    var edge = ua.indexOf("Edge/");
    if (edge > 0) {
      // Edge (IE 12+) => return version number
      return parseInt(ua.substring(edge + 5, ua.indexOf(".", edge)), 10);
    }

    // other browser
    return false;
  },
  _isFirefox: function(){
    if (navigator.userAgent.indexOf("Firefox") > 0) {
      return 1;
    }
    
    return 0;
  },
  _downloadAnchor: function(content, ext) {
      var anchor = document.createElement("a");
      anchor.style = "display:none !important";
      anchor.id = "downloadanchor";
      document.body.appendChild(anchor);

      // If the [download] attribute is supported, try to use it
      
      if ("download" in anchor) {
        anchor.download = this._filename + "." + ext;
      }
      anchor.href = content;
      anchor.click();
      anchor.remove();
  },
  _tableToCSV: function(table) {
    // We'll be co-opting `slice` to create arrays
    var slice = Array.prototype.slice;

    return slice
      .call(table.rows)
      .map(function(row) {
        return slice
          .call(row.cells)
          .map(function(cell) {
            return '"t"'.replace("t", cell.textContent);
          })
          .join(",");
      })
      .join("\r\n");
  }
};

</script>

<!------------------------------------------------------------------------------->
<!----------------------------For Hidding Columns------------------------------------->

<script>
function show_hide_column(col_no, do_show) {
    var tbl = document.getElementById('example');
    var rows = tbl.getElementsByTagName('tr');

    for (var row = 0; row < rows.length; row++) {
        var cols = rows[row].children;
        if (col_no >= 0 && col_no < cols.length) {
            var cell = cols[col_no];
            if (cell.tagName == 'TD') cell.style.display = do_show ? 'block' : 'none';
			if (cell.tagName == 'TH') cell.style.display = do_show ? 'block' : 'none';
        }
    }
}

</script>

<!------------------------------------------------------------------------------->


<!---------------------------------Data Range Filter------------------------------>

<script>
	
	$(function() {
  var oTable = $('#datatable').DataTable({
    "oLanguage": {
      "sSearch": "Filter Data"
    },
    "iDisplayLength": -1,
    "sPaginationType": "full_numbers",

  });




  $("#datepicker_from").datepicker({
    showOn: "button",
    buttonImage: "images/calendar.gif",
    buttonImageOnly: false,
    "onSelect": function(date) {
      minDateFilter = new Date(date).getTime();
      oTable.fnDraw();
    }
  }).keyup(function() {
    minDateFilter = new Date(this.value).getTime();
    oTable.fnDraw();
  });

  $("#datepicker_to").datepicker({
    showOn: "button",
    buttonImage: "images/calendar.gif",
    buttonImageOnly: false,
    "onSelect": function(date) {
      maxDateFilter = new Date(date).getTime();
      oTable.fnDraw();
    }
  }).keyup(function() {
    maxDateFilter = new Date(this.value).getTime();
    oTable.fnDraw();
  });

});

// Date range filter
minDateFilter = "";
maxDateFilter = "";

$.fn.dataTableExt.afnFiltering.push(
  function(oSettings, aData, iDataIndex) {
    if (typeof aData._date == 'undefined') {
      aData._date = new Date(aData[1]).getTime();
    }

    if (minDateFilter && !isNaN(minDateFilter)) {
      if (aData._date < minDateFilter) {
        return false;
      }
    }

    if (maxDateFilter && !isNaN(maxDateFilter)) {
      if (aData._date > maxDateFilter) {
        return false;
      }
    }

    return true;
  }
);




</script>

<!-------------------------------------------------------------------------------->
	
	
	
  </body>

</html>
