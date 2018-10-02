<%-- 
    Document   : ProjectTileTest
    Created on : Jul 18, 2018, 10:28:34 AM
    Author     : shezi
--%>


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



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>CSS Profile Card</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
<link rel="stylesheet" href="css/projectTile.css">

 <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
        <link rel="stylesheet" href="css/uniform.css" />
        <link rel="stylesheet" href="css/select2.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-media.css" />
        <link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
         <script src="js/modernizr.js"></script>
        <link rel="stylesheet" href="style/style.css">

  
</head>

<body>

     
            <table>
              
               
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p, employees e where status = '" + "Not Started" + "' AND e.employeeID = p.projectManager";
resultSet = statement.executeQuery(sql);


%>

              <tbody>
                  <tr class="gradeX">
                      
                      <%

int i=0;
while(resultSet.next()){
%>
   
              
                    <td>


<div class="wrapper">
	<div class="top-icons">
		<i class="fas fa-long-arrow-alt-left"></i>
		<i class="fas fa-ellipsis-v"></i>
		<i class="far fa-heart"></i>
	</div>
	
	<div class="profile">
		<img src="https://images.unsplash.com/photo-1484186139897-d5fc6b908812?ixlib=rb-0.3.5&s=9358d797b2e1370884aa51b0ab94f706&auto=format&fit=crop&w=200&q=80%20500w" class="thumbnail">
		<div class="check"><i class="fas fa-check"></i></div>
		<h3 class="name">Beverly Little</h3>
		<p class="title">Javascript Developer</p>
		<p class="description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque aliquam aliquid porro!</p>
		<button type="button" class="btn">Hire Me</button>
	</div>
	
	<div class="social-icons">
		<div class="icon">
			<a href="/"><i class="fab fa-dribbble"></i></a>
			<h4>12.8k</h4>
			<p>Followers</p>
		</div>
		
		<div class="icon">
			<a href="#"><i class="fab fa-behance"></i></a>
			<h4>12.8k</h4>
			<p>Followers</p>
		</div>
		
		<div class="icon">
			<a href="#"><i class="fab fa-twitter"></i></a>
			<h4>12.8k</h4>
			<p>Followers</p>
		</div>
	</div>
</div>

                    </td>



<%
i++;
}

%>

</tr>

<%
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
              </tbody>
            </table>
         


  <script src='https://code.jquery.com/jquery-3.3.1.slim.js'></script>

  

</body>

</html>

