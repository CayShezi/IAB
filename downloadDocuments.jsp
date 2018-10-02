
<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

<%@page import="javax.xml.registry.infomodel.User"%>
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

String Id = request.getParameter("id");
int uploadID = Integer.parseInt(Id);
String id2 = "";
%>


<!DOCTYPE html>
<html lang="en">

				
                </tr>
				                                           
                                            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
//String sql ="select * from employees where systemUser = '" + userName + "'";
String sql ="Select o.uploadID from opportunity o, projectmanagement p where o.i_d = '" + uploadID + "' AND o.i_d = p.";
resultSet = statement.executeQuery(sql);

int i=0;
while(resultSet.next()){
    
     id2 = resultSet.getString("uploadID");
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
    session.setAttribute("id", id2);
    
    RequestDispatcher dis = request.getRequestDispatcher("upload_download");
    dis.forward(request, response);

%>

</body>
</html>

