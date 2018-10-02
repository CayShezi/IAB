<%-- 
    Document   : listuser
    Created on : Dec 4, 2017, 9:28:33 AM
    Author     : CAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show All Users</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th>User Id</th>
                    <th>name</th>
                    <th>surname</th>
                    <th>cell No</th>
                    <th>Address</th>
                    <th>email Address</th>
                    <th>username</th>
                    <th>password</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.userId}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.surname}" /></td>
                    <td><c:out value="${user.cellNo}" /></td>
                    <td><c:out value="${user.address}" /></td>
                    <td><c:out value="${user.emailAddress}" /></td>
                    <td><c:out value="${user.userName}" /></td>
                    <td><c:out value="${user.password}" /></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
