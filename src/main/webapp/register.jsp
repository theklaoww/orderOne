<%-- 
    Document   : register
    Created on : Oct 31, 2020, 2:07:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>orderOne</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sarabun">
        <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
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
        <link rel="stylesheet" href="assets/css/wtg-alert-1.css">
        <link rel="stylesheet" href="assets/css/wtg-alert.css">
    </head>

    <body>
        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container"><a class="navbar-brand" href="index.html"><img src="orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;" /></a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler" style="border-style: none;font-size: 24px;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="font-weight: normal;"></span></button>
        <div
            class="collapse navbar-collapse d-xl-flex justify-content-xl-center" id="navcol-1">
            <ul class="nav navbar-nav d-xl-flex mr-auto justify-content-xl-center">
                <li class="nav-item text-center d-flex justify-content-center" style="padding-right: 0px;"></li>
            </ul><span class="d-flex justify-content-center navbar-text actions"><a class="d-flex align-items-center login" href="login.jsp" style="padding-right: 19px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">Log In</a><a class="btn btn-light d-flex align-items-center action-button" role="button" href="register.jsp" style="background: rgba(248,249,250,0.13);border-width: 0px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">Sign Up</a></span></div>
    </div>
</nav>
        <div class="login-clean" style="height: 1116px;">
            <div style="height: 46px;"></div>
            <form data-aos="fade-up" data-aos-once="true" method="post" style="height: 942px;max-width: 399px;" action="Register">
                <div class="illustration" style="font-size: 79px;filter: blur(0px);"><i class="fas fa-id-badge" style="color: rgb(54,143,252);"></i></div>
                <h2 class="sr-only">Login Form</h2>
                <h1 style="text-align: center;font-family: Sarabun, sans-serif;font-size: 29px;font-weight: normal;color: rgb(117,117,118);">สมัครสมาชิก</h1>
                <div style="height: 28px;"></div>





                <%
                    if (request.getAttribute("result") != null && request.getAttribute("result") == "111") {
                %>
                <div role="alert" class="alert alert-warning d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="fas fa-user" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong>username ถูกใช้แล้ว</strong></span></div>
                        <%
                            }
                        %>
                        <%                    if (request.getAttribute("result") != null && request.getAttribute("result") == "222") {
                        %>
                <div role="alert" class="alert alert-danger d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="far fa-id-card" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong>dealerCODE ไม่ถูกต้อง</strong></span></div>
                        <%
                            }
                        %>

                <%
                    if (request.getAttribute("result") != null && request.getAttribute("result") == "100") {
                %>
                <div role="alert" class="alert alert-warning d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="fas fa-edit" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong>โปรดใส่ข้อมูลให้ครบ</strong></span></div>
                        <%
                            }
                        %>

                <div class="form-group"><input class="form-control" type="text" name="username" placeholder="username" style="font-family: Montserrat, sans-serif;height: 44px;"></div>





                <div class="form-group" style="font-family: Montserrat, sans-serif;height: 44px;"><input class="form-control" type="password" name="password" placeholder="Password" style="font-family: Montserrat, sans-serif;height: 44px;"></div>
                <div class="form-group" style="font-family: Montserrat, sans-serif;height: 44px;"><input class="form-control" type="password" name="cpassword" placeholder="Password repeat" style="font-family: Montserrat, sans-serif;height: 44px;"></div>

                <%
                    if (request.getAttribute("result") != null && request.getAttribute("result") == "102") {
                %>
                <div role="alert" class="alert alert-danger d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="far fa-keyboard" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong>ตั้งรหัสผ่านไม่ตรงกัน</strong></span></div>
                        <%
                            }
                        %>




                <div style="height: 44px;font-family: Montserrat, sans-serif;"></div>
                <div class="form-group" style="font-family: Montserrat, sans-serif;height: 44px;"><input class="form-control" type="text" name="firstname" placeholder="firstname" style="font-family: Montserrat, sans-serif;height: 44px;"></div>
                <div class="form-group" style="font-family: Montserrat, sans-serif;height: 44px;"><input class="form-control" type="text" name="lastname" placeholder="lastname" style="font-family: Montserrat, sans-serif;height: 44px;"></div>
                <div class="form-group" style="font-family: Montserrat, sans-serif;height: 44px;"><input class="form-control" type="text" name="phonenumber" placeholder="phone" style="font-family: Montserrat, sans-serif;height: 44px;"></div>
                <div style="height: 44px;font-family: Montserrat, sans-serif;"><a class="forgot" href="#" style="font-family: Sarabun, sans-serif;height: 44px;">DealerCODE<br>จะได้รับจากตัวแทนที่ท่านติดต่อด้วย</a></div>
                <div class="form-group" style="font-family: Montserrat, sans-serif;height: 44px;"><input class="form-control" type="text" name="code" placeholder="DealerCODE" style="font-family: Montserrat, sans-serif;height: 44px;border-radius: 32px;"></div>




                <div class="form-group" style="font-family: Montserrat, sans-serif;"><button class="btn btn-primary btn-block bounce animated" type="submit" value="login" style="border-radius: 44px;background: rgb(54,143,252);font-family: Montserrat, sans-serif;box-shadow: 0px 0px 10px 1px rgba(54,143,252,0.57);margin-top: 57px;font-weight: bold;font-size: 18px;">register</button></div>
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
