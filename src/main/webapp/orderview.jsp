<%-- 
    Document   : orderview
    Created on : Nov 11, 2020, 12:38:12 AM
    Author     : User
--%>

<%@page import="models.User"%>
<%@page import="controllers.UserController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>orderview</h1>
        
        
        ${orderlist}
        <c:forEach items="${orderlist}"  var="ol">
                ${ol.userId}
    </c:forEach>
    </body>
</html>
