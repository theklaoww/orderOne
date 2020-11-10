<%-- 
    Document   : admin
    Created on : Nov 10, 2020, 9:03:23 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>orderOne2</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sarabun">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Animated-Typing-With-Blinking.css">
    <link rel="stylesheet" href="assets/css/Animation-Cards-1.css">
    <link rel="stylesheet" href="assets/css/Animation-Cards.css">
    <link rel="stylesheet" href="assets/css/Features-Boxed.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Highlight-Blue.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/css/pikaday.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/wtg-alert-1.css">
    <link rel="stylesheet" href="assets/css/wtg-alert.css">
</head>

<body style="background: #f1f7fc;">
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><a class="navbar-brand" href="/OrderOne/index.jsp"><img src="assets/img/orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2" style="border-style: none;font-size: 24px;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="font-weight: normal;"></span></button>
            <div
                class="collapse navbar-collapse d-xl-flex justify-content-xl-center" id="navcol-2">
                <ul class="nav navbar-nav d-xl-flex mr-auto justify-content-xl-center">
                    <li class="nav-item text-center d-flex justify-content-center" style="padding-right: 0px;"></li>
                </ul><span class="d-flex justify-content-center navbar-text actions"><a class="d-flex align-items-center login" href="mainHome.jsp" style="padding-right: 19px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">Home</a><a class="btn btn-light d-flex align-items-center action-button" role="button" href="Logout" style="background: rgba(248,249,250,0.13);border-width: 0px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">logout</a> </span></div>
        </div>
    </nav>
    <div class="login-clean" style="height: 820px;">
        
        <div style="height: 59px;"></div>
        <form data-aos="fade-up" data-aos-once="true" method="post" style="height: 500px;" action="Admin">
            <div class="illustration" style="padding-bottom: 0px;"><i class="fas fa-user-cog" style="color: rgb(54,143,252);height: 76px;"></i></div>
            <div class="form-group">
                <h1 style="text-align: center;font-family: Sarabun, sans-serif;font-size: 29px;font-weight: bold;color: rgb(117,117,118);padding-bottom: 36px;height: 33px;">Admin</h1>
            </div>
            <%                    if (request.getAttribute("result") != null && request.getAttribute("result") == "222") {
                        %>
                <div role="alert" class="alert alert-danger d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="far fa-id-card" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong> adminPass ไม่ถูกต้อง</strong></span></div>
                        <%
                            }
                        %>
                
                <%
                    if (request.getAttribute("result") != null && request.getAttribute("result") == "100") {
                %>
                <div role="alert" class="alert alert-warning d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="fas fa-edit" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong>โปรดใส่ adminPass</strong></span></div>
                        <%
                            }
                        %>
            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="border-radius: 44px;background: rgb(54,143,252);">verify code</button></div>
        </form>
       
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.js"></script>
    <script src="assets/js/Animated-Typing-With-Blinking.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/pikaday.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>