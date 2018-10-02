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
    
 String username = (String)session.getAttribute("username");
String Companyname = request.getParameter("companyName");
String tradingName = request.getParameter("tradingName");
String userName = request.getParameter("userName");
String password = request.getParameter("password");
String emailAddress = request.getParameter("emailAddress");
String firstName = request.getParameter("firstName");
String lastName  = request.getParameter("lastName");
String jobDesignation = request.getParameter("jobDesignation");
String companyDescription  = request.getParameter("companyDescription");
String companyTelephone  = request.getParameter("companyTelephone");
String streetName  = request.getParameter("streetName");
String suburb  = request.getParameter("suburb");
String city  = request.getParameter("city");
String postalCode  = request.getParameter("postalCode");
String province  = request.getParameter("province");

Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "update registration set companyName=?,tradingName=?,userName=?,password=?,emailAddress=?,firstName=?,lastName=?,jobDesignation=?,companyDescription=?,companyTelephone=?,streetName=?,suburb=?,city=?,postalCode=?,province=? where userName=?";
ps = con.prepareStatement(sql);
            ps.setString(1, Companyname);
            ps.setString(2, tradingName);
            ps.setString(3, userName);
            ps.setString(4, password);
            ps.setString(5, emailAddress);
            ps.setString(6, firstName);
            ps.setString(7, lastName);
            ps.setString(8, jobDesignation);
            ps.setString(9, companyDescription);
            ps.setString(10, companyTelephone);
            ps.setString(11, streetName);
            ps.setString(12, suburb);
            ps.setString(13, city);
            ps.setString(14, postalCode);
            ps.setString(15, province);
            ps.setString(16, username);
            
            
           
int i = ps.executeUpdate();
if(i > 0)
{
    RequestDispatcher dis = request.getRequestDispatcher("/ViewEmployees.jsp"); 
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
