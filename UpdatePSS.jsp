<%-- 
    Document   : update-process
    Created on : Apr 30, 2018, 10:33:50 AM
    Author     : shezi
--%>

<%@page import="za.ac.kbcs.dao.SourcesDao"%>
<%@page import="za.ac.kbcs.web.SubmitProjectServlet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="za.ac.kbcs.dao.DaoClasses"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/kbcsdatabasev5";%>
<%!String user = "cassius";%>
<%!String psw = "cayShez@123";%>


<%

String Id = request.getParameter("projectID");

String status = request.getParameter("status");
    

Connection con = null;
PreparedStatement ps = null;
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);

if(status.equalsIgnoreCase("Submitted"))
{

try
{

    int projectID = Integer.parseInt(Id);
String sql = "update projectmanagement set status=? where projectID=?";
ps = con.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, projectID);
           
int i = ps.executeUpdate();
if(i > 0)
{
     DaoClasses dao = new DaoClasses();
      

      
        try {
            dao.AddSales(session,Id);
            
        } catch (SQLException ex) {
            Logger.getLogger(SubmitProjectServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

RequestDispatcher rd= request.getRequestDispatcher("/SalesOpportunity.jsp");
rd.forward(request, response);
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

} else if(status.equalsIgnoreCase("Deferred"))
{
 
    
    try
{
  int projectID = Integer.parseInt(Id);  
    String sql = "update projectmanagement set status=? where projectID=?";
ps = con.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, projectID);
           
int i = ps.executeUpdate();

        SourcesDao dao = new SourcesDao();
      
if(i > 0)
{
     
        try {
            dao.addProjectArchive(Id);
            
            Statement st=con.createStatement();
            st.executeUpdate("DELETE FROM projectmanagement WHERE projectID="+Id);
            
        } catch (SQLException ex) {
            Logger.getLogger(SubmitProjectServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        RequestDispatcher rd= request.getRequestDispatcher("/currentProject.jsp");
rd.forward(request, response);
            
}


}
    
    catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}

%>
