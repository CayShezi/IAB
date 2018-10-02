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

String colour = "";
%>


<%
        String reportCreate = "";
        String reportRead = "";

        String oppCreate = "";
        String oppRead = "";
        String oppUpdate = "";
        String oppDelete = "";

        String projectCreate = "";
        String projectRead = "";
        String projectUpdate = "";
        String projectDelete = "";

        String salesCreate = "";
        String salesRead = "";
        String salesUpdate = "";
        String salesDelete = "";

        String accountCreate = "";
        String accountRead = "";
        String accountUpdate = "";
        String accountDelete = "";

        String profileCreate = "";
        String profileRead = "";
        String profileUpdate = "";
        String profileDelete = "";

        String reportCreateLink = "";
        String reportReadLink = "";

        String oppCreateLink = "";
        String oppReadLink = "";
        String oppUpdateLink = "";
        String oppDeleteLink = "";

        String projectCreateLink = "";
        String projectReadLink = "";
        String projectUpdateLink = "";
        String projectDeleteLink = "";

        String salesCreateLink = "";
        String salesReadLink = "";
        String salesUpdateLink = "";
        String salesDeleteLink = "";

        String accountCreateLink = "";
        String accountReadLink = "";
        String accountUpdateLink = "";
        String accountDeleteLink = "";

        String profileCreateLink = "";
        String profileReadLink = "";
        String profileUpdateLink = "";
        String profileDeleteLink = "";
        String  dashboardLink = "index.jsp";
        String role = "";
        String userProjectTask = "";
        String projectTaskID = "select * from projecttask t, projectmanagement p where p.projectID = t.projectName GROUP BY p.projectName";
        String isEmployee = "";
        
 String username =(String)session.getAttribute("username");  

    %>  



    <%                                                try {
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String sql = "select * from employees where username = '" + username + "'";
            resultSet = statement.executeQuery(sql);

            int i = 0;
            while (resultSet.next()) {
    %>


    <%
        reportCreate = resultSet.getString("reportcreate");
        reportRead = resultSet.getString("reportview");
        oppCreate = resultSet.getString("oppCreate");
        oppRead = resultSet.getString("oppRead");
        oppUpdate = resultSet.getString("oppUpdate");
        oppDelete = resultSet.getString("oppDelete");
        projectCreate = resultSet.getString("projectCreate");
        projectRead = resultSet.getString("projectRead");
        projectUpdate = resultSet.getString("projectUpdate");
        projectDelete = resultSet.getString("projectDelete");
        salesCreate = resultSet.getString("salesCreate");
        salesRead = resultSet.getString("salesRead");
        salesUpdate = resultSet.getString("salesUpdate");
        salesDelete = resultSet.getString("salesDelete");

        accountCreate = resultSet.getString("accountCreate");
        accountRead = resultSet.getString("accountRead");
        accountUpdate = resultSet.getString("accountUpdate");
        accountDelete = resultSet.getString("accountDelete");

        profileCreate = resultSet.getString("profileCreate");
        profileRead = resultSet.getString("profileRead");
        profileUpdate = resultSet.getString("profileUpdate");
        profileDelete = resultSet.getString("profileDelete");
        role = resultSet.getString("role");
        userProjectTask = resultSet.getString("employeeID");

        if (reportCreate.equalsIgnoreCase("No")) {
            reportCreateLink = "hide";

        } else if (reportCreate.equalsIgnoreCase("Yes")) {

            reportCreateLink = "";
        }

        if (reportRead.equalsIgnoreCase("No")) {

            reportReadLink = "hide";
        } else if (reportRead.equalsIgnoreCase("Yes")) {

            reportReadLink = "";
        }
        if (oppCreate.equalsIgnoreCase("No")) {
            oppCreateLink = "hide";

        } else if (oppCreate.equalsIgnoreCase("Yes")) {

            oppCreateLink = "";
        }

        if (oppRead.equalsIgnoreCase("No")) {

            oppReadLink = "hide";
        } else if (oppRead.equalsIgnoreCase("Yes")) {

            oppReadLink = "";
        }
        if (oppUpdate.equalsIgnoreCase("Yes")) {

            oppUpdateLink = "";
        } else if (oppUpdate.equalsIgnoreCase("No")) {

            oppUpdateLink = "hide";
        }
        if (oppDelete.equalsIgnoreCase("No")) {

            oppDeleteLink = "hide";
        } else if (oppDelete.equalsIgnoreCase("Yes")) {

            oppDeleteLink = "";
        }
        if (projectCreate.equalsIgnoreCase("No")) {

            projectCreateLink = "hide";

        } else if (projectCreate.equalsIgnoreCase("Yes")) {

            projectCreateLink = "";
        }
        if (projectRead.equalsIgnoreCase("No")) {

            projectReadLink = "hide";

        } else if (projectRead.equalsIgnoreCase("Yes")) {

            projectReadLink = "";
        }
        if (projectUpdate.equalsIgnoreCase("No")) {

            projectUpdateLink = "hide";

        } else if (projectUpdate.equalsIgnoreCase("Yes")) {

            projectUpdateLink = "";
        }
        if (projectDelete.equalsIgnoreCase("No")) {

            projectDeleteLink = "hide";

        } else if (projectDelete.equalsIgnoreCase("Yes")) {

            projectDeleteLink = "";
        }
        if (salesCreate.equalsIgnoreCase("Yes")) {

            salesCreateLink = "";
        } else if (salesCreate.equalsIgnoreCase("No")) {

            salesCreateLink = "hide";
        }
        if (salesRead.equalsIgnoreCase("Yes")) {

            salesReadLink = "";
        } else if (salesRead.equalsIgnoreCase("No")) {

            salesReadLink = "hide";
        }
        if (salesUpdate.equalsIgnoreCase("Yes")) {

            salesUpdateLink = "";
        } else if (salesUpdate.equalsIgnoreCase("No")) {

            salesUpdateLink = "hide";
        }
        if (salesDelete.equalsIgnoreCase("Yes")) {

            salesDeleteLink = "";
        } else if (salesDelete.equalsIgnoreCase("No")) {

            salesDeleteLink = "hide";
        }
        if (accountDelete.equalsIgnoreCase("Yes")) {

            accountDeleteLink = "";
        } else if (accountDelete.equalsIgnoreCase("No")) {

            accountDeleteLink = "hide";
        }
        if (accountCreate.equalsIgnoreCase("Yes")) {

            accountCreateLink = "";
        } else if (accountCreate.equalsIgnoreCase("No")) {

            accountCreateLink = "hide";
        }
        if (accountRead.equalsIgnoreCase("Yes")) {

            accountReadLink = "";
        } else if (accountRead.equalsIgnoreCase("No")) {

            accountReadLink = "hide";
        }
        if (accountUpdate.equalsIgnoreCase("Yes")) {

            accountUpdateLink = "";
        } else if (accountUpdate.equalsIgnoreCase("No")) {

            accountUpdateLink = "hide";
        }
        if (profileCreate.equalsIgnoreCase("No")) {
            profileCreateLink = "hide";
        } else if (profileCreate.equalsIgnoreCase("Yes")) {
            profileCreateLink = "";

        }
        if (profileRead.equalsIgnoreCase("No")) {
            profileReadLink = "hide";
        } else if (profileRead.equalsIgnoreCase("Yes")) {
            profileReadLink = "";

        }
        if (profileUpdate.equalsIgnoreCase("No")) {
            profileUpdateLink = "hide";
        } else if (profileUpdate.equalsIgnoreCase("Yes")) {
            profileUpdateLink = "";

        }
        if (profileDelete.equalsIgnoreCase("No")) {
            profileDeleteLink = "hide";
        } else if (profileDelete.equalsIgnoreCase("Yes")) {
            profileDeleteLink = "";

        }
        
        if(role.equalsIgnoreCase("employee"))
        {
        
            dashboardLink = "indexEmp.jsp";
            
        }
        
         if(role.equalsIgnoreCase("employee"))
        {
        
            projectTaskID = "select * from projecttask t, projectmanagement p where p.projectID = t.projectName AND t.assignTo = '" + userProjectTask + "' GROUP BY p.projectName";
            
        }

         
         
        

    %>



    <%            i++;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>



<%
int Id = Integer.parseInt(request.getParameter("task_ID"));
String status = request.getParameter("status");
String awaiting = "";

if(status.equalsIgnoreCase("Completed") && role.equalsIgnoreCase("employee"))
{
    status = "Awaiting Evaluation";

}


Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "update projecttask set status=? where task_ID=?";
ps = con.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, Id);
           
int i = ps.executeUpdate();
if(i > 0)
{
    RequestDispatcher dis = request.getRequestDispatcher("/currentProject.jsp"); 
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
