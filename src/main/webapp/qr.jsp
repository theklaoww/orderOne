<%-- 
    Document   : qr
    Created on : Nov 2, 2020, 12:52:59 AM
    Author     : User

  <iframe src="${link}"> </iframe>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="QR" method="POST">
            <input type="text" name="price" value="" />
            <input type="submit" value="ok" />
        </form>
        <img src="${link}">
      
    </body>
</html>
