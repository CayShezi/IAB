<%-- 
    Document   : update-process
    Created on : Apr 30, 2018, 10:33:50 AM
    Author     : shezi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/kbcsdatabasev5";%>
<%!String user = "cassius";%>
<%!String psw = "cayShez@123";%>


<%
int Id = Integer.parseInt(request.getParameter("task_ID"));
String taskName = request.getParameter("taskName");
String priority = request.getParameter("priority");
int project = Integer.parseInt(request.getParameter("projectID")); 
int employees = Integer.parseInt(request.getParameter("employees"));





Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "update projecttask set taskName=?, priority=?, projectName=?, assignTo=? where task_ID=?";
ps = con.prepareStatement(sql);
            ps.setString(1, taskName);
            ps.setString(2, priority);
            ps.setInt(3, project); 
            ps.setInt(4, employees); 
            ps.setInt(5, Id); 
            
           
int i = ps.executeUpdate();
if(i > 0)
{
    RequestDispatcher dis = request.getRequestDispatcher("/ViewProjectTask.jsp"); 
    dis.forward(request, response);
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
%>
