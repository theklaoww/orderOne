<%-- 
    Document   : report
    Created on : Nov 11, 2020, 12:25:55 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${orderDetails}" var="od" varStatus="loop">
            <div> ${od[0]} ${od[1]} ${od[2]}  </div>
            
            
        </c:forEach>
            ${totalP}
            OrderID#${orderId}
            name=${fname}
    </body>
</html>
