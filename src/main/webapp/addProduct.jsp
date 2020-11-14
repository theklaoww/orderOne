<%-- 
    Document   : addProduct
    Created on : Nov 12, 2020, 11:21:34 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>admin Portal - add product</title>
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

<body style="background: #f1f7fc;">
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><a class="navbar-brand" href="/OrderOne/index.html"><img src="assets/img/orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;"><div></div><h4 class="text-center" style="width: auto;margin-bottom: 0px;font-family: Alata, sans-serif;background: #ffffff;border-radius: 14px;color: #6f6f70;font-size: 17px;">Admin Portal</h4></a>
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
            <h4 class="text-left" style="width: auto;margin-bottom: 10px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><i class="fas fa-plus-circle" style="margin-right: 10px;"></i>เพิ่มสินค้า</h4>
        </div>
        <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;background: rgba(255,255,255,0);">
            <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;padding-bottom: 15px;padding-top: 15px;height: 186px;">
                <form data-aos="fade-up" data-aos-once="true" method="post" style="height: 107px;" action="AddProduct">
                    <div class="illustration" style="padding-bottom: 0px;"></div>
                    <div class="form-group"><input class="form-control" type="text" name="productname" placeholder="ชื่อสินค้า"></div>
                    <div class="form-group"><input class="form-control" type="number" name="price" placeholder="ราคา"></div>
                    <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="border-radius: 44px;background: rgb(56,177,119);font-family: Sarabun, sans-serif;border-style: none;">เพิ่มสินค้า</button></div>
                </form>
            </div>
        </div>
    </div>
    <h4 class="text-left d-flex justify-content-center" data-aos="fade-up" data-aos-duration="750" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><a class="btn btn-primary d-flex d-xl-flex justify-content-center align-items-center justify-content-lg-center justify-content-xl-center align-items-xl-center" role="button" style="height: 100%;background: rgb(56,177,119);border-style: none;box-shadow: 0px 0px 10px 3px rgba(56,177,119,0.6);width: 125px;"
            href="Product"><i class="fas fa-chevron-left" style="margin-right: 10px;"></i>ย้อนกลับ</a></h4>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.js"></script>
    <script src="assets/js/Animated-Typing-With-Blinking.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/pikaday.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
