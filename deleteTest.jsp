<%-- 
    Document   : deleteTest
    Created on : Feb 5, 2018, 3:43:30 PM
    Author     : shezi
--%>

<%@page import="za.ac.kbcs.model.SourceData"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>DELETE Operation</title>
   </head>
  
   
   <body>
       
        
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/kbcsdatabasev5"
         user = "cassius" password = "cayShez@123"/>
      
         
       
      <c:set var = "empId" value = "208"/>
 
      <sql:update dataSource = "${snapshot}" var = "count">
         DELETE FROM record WHERE i_d = ?
         <sql:param value = "${empId}" />
      </sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from record;
      </sql:query>
         
         
        
 
      <table border = "1" width = "100">
         <tr>
            <th>Description</th>
            <th>Date</th>
            <th>Score</th>
             <th>Id </th>
             
             
             
            
           
         </tr>
            
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.description}"/></td>
               <td><c:out value = "${row.date}"/></td>
               <td><c:out value = "${row.score}"/></td>
                <td><c:out value = "${row.i_d}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>