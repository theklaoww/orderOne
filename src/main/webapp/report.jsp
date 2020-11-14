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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>orderDetail #${orderId}</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sarabun">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/line-awesome.min.css">
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

<body style="background: #f1f7fc;height: 800px;">
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><a class="navbar-brand" href="/OrderOne/index.jsp"><img src="assets/img/orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;"><div></div><h4 class="text-center" style="width: auto;margin-bottom: 0px;font-family: Alata, sans-serif;background: #ffffff;border-radius: 14px;color: #6f6f70;font-size: 17px;">Admin Portal</h4></a>
            <button
                data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2" style="border-style: none;font-size: 24px;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="font-weight: normal;"></span></button>
                <div class="collapse navbar-collapse d-xl-flex justify-content-xl-center" id="navcol-2">
                    <ul class="nav navbar-nav d-xl-flex mr-auto justify-content-xl-center">
                        <li class="nav-item text-center d-flex justify-content-center" style="padding-right: 0px;"></li>
                    </ul><span class="d-flex justify-content-center navbar-text actions"><a class="d-flex align-items-center login" href="AdminHome" style="padding-right: 19px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">Home</a><a class="btn btn-light d-flex align-items-center action-button" role="button" href="LogoutAdmin" style="background: rgba(248,249,250,0.13);border-width: 0px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">logout</a> </span></div>
        </div>
    </nav>
    <div class="container" style="height: 100%;margin-top: 140px;">
        <div>
            <h4 class="text-left" style="width: auto;margin-bottom: 15px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><i class="fa fa-cube" style="margin-right: 10px;"></i>#${userID} คุณ<strong>${fname} ${userPhone} </strong></h4>
            <h4 class="text-left" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;font-size: 18px;"><i class="fa fa-tags" style="margin-right: 10px;"></i>ออเดอร์#${orderId}</h4>
        <h4 class="text-left" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;font-size: 18px;"><i class="fa fa-tags" style="margin-right: 10px;"></i>เป็นลูกค้าของ  ${adminName} รหัสเชิญ ${adminCode}</h4>
        </div>
        <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;background: rgba(255,255,255,0);">
            <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;padding-bottom: 15px;padding-top: 15px;">
    <div class="row no-gutters row-cols-3" style="height: 30px;">
        <div class="col-md-4" style="height: 100%;">
            <h4 class="text-center d-xl-flex justify-content-xl-start" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 20px;height: 100%;">รายการ</h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-xl-flex justify-content-xl-end" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 20px;height: 100%;">จำนวน</h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-xl-flex justify-content-xl-end" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 20px;min-width: 100%;height: 100%;">ราคา</h4>
        </div>
    </div>
                <div style="height: 3px;background: linear-gradient(90deg, rgb(124,114,245), rgb(16,159,255)), #c81515;margin-bottom: 15px;"></div>
                
                <c:forEach items="${orderDetails}" var="od" varStatus="loop">
                <div class="row no-gutters row-cols-3" style="height: 30px;">
        <div class="col-md-4" style="height: 100%;">
            <h4 class="text-center d-xl-flex justify-content-xl-start" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 20px;height: 100%;">${od[0]}</h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-xl-flex justify-content-xl-end" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 20px;height: 100%;">${od[1]}</h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-xl-flex justify-content-xl-end" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 20px;min-width: 100%;height: 100%;">${od[2]}.-</h4>
        </div>
    </div>
                    
                    </c:forEach>
                    
                <div style="height: 3px;background: linear-gradient(90deg, rgb(124,114,245), rgb(16,159,255)), #c81515;margin-bottom: 15px;margin-top: 10px;"></div>
            </div>
            <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: linear-gradient(126deg, rgb(255,151,75), rgb(242,78,117)), #79ff57;text-align: center;font-family: Sarabun, sans-serif;margin-top: 25px;height: 90px;">
                <div style="height: 100%;width: 100%;">
                    <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                        <div class="col-md-6">
                            <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;height: 100%;font-size: 22px;margin-top: auto;color: rgb(255,255,255);">ยอดรวม</h4>
                        </div>
                        <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;">
                            <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: bold;font-family: Roboto, sans-serif;height: 30px;color: rgb(255,255,255);"><strong>${totalP}.-</strong></h4>
                        </div>
                    </div>
                    <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: normal;font-family: Roboto, sans-serif;height: 30px;font-size: 24px;color: rgb(255,255,255);">THB</h4>
                </div>
            </div>
            <div></div>
        </div>
                   <div class="d-flex justify-content-center"><a class="btn btn-primary d-flex justify-content-center align-items-center" role="button" style="height: 60px;width: 60px;background: linear-gradient(56deg, rgb(112,119,247), rgb(24,155,254));" href="OrderView"><i class="fas fa-chevron-left"></i></a></div>     
                        
    </div>
                        
    <div class="footer-dark" style="height: 222px;">
        <footer>
            <div class="container" style="padding-top: 28px;">
                <h1 style="font-family: Montserrat, sans-serif;font-size: 13px;font-weight: bold;color: rgb(117,117,118);padding-bottom: 0px;text-align: center;"><strong>Powered by</strong><br></h1>
                <div style="text-align: center;"><img src="assets/img/orderOneLogo.png" style="width: 170px;text-align: center;opacity: 0.21;"></div>
            </div>
        </footer>
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