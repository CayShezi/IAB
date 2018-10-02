<%-- 
    Document   : TestRecord
    Created on : Feb 5, 2018, 10:49:34 AM
    Author     : shezi
--%>
<%@page import="za.ac.kbcs.model.SourceData"%>
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
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Description</td>
<td>Date</td>
<td>Score</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from record";
resultSet = statement.executeQuery(sql);

SourceData source = new SourceData(); 
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("score") %></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("i_d") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>