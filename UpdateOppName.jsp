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
int Id = Integer.parseInt(request.getParameter("id"));
String oppName = request.getParameter("oppName");




Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "update opportunity set oppName=? where i_d=?";
ps = con.prepareStatement(sql);
            ps.setString(1, oppName);
            ps.setInt(4, Id);
            
           
int i = ps.executeUpdate();
if(i > 0)
{
    RequestDispatcher dis = request.getRequestDispatcher("/ViewOpp.jsp"); 
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
