<%-- 
    Document   : adminHome
    Created on : Nov 10, 2020, 9:47:06 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>${adminFname} Admin Portal</title>
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
        <div class="container"><a class="navbar-brand" href="/OrderOne/index.jsp"><img src="assets/img/orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;"><div></div><h4 class="text-center" style="width: auto;margin-bottom: 0px;font-family: Alata, sans-serif;background: #ffffff;border-radius: 14px;color: #6f6f70;font-size: 17px;">Admin Portal</h4></a>
            <button
                data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2" style="border-style: none;font-size: 24px;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="font-weight: normal;"></span></button>
                <div class="collapse navbar-collapse d-xl-flex justify-content-xl-center" id="navcol-2">
                    <ul class="nav navbar-nav d-xl-flex mr-auto justify-content-xl-center">
                        <li class="nav-item text-center d-flex justify-content-center" style="padding-right: 0px;"></li>
                    </ul><span class="d-flex justify-content-center navbar-text actions"><a class="d-flex align-items-center login" href="AdminHome" style="padding-right: 19px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">Home</a><a class="btn btn-light d-flex align-items-center action-button" role="button" href="LogoutAdmin" style="background: rgba(248,249,250,0.13);border-width: 0px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">logout</a> </span></div>
        </div>
    </nav>
    <div style="height: 163px;"></div>
    <div>
        <div class="container" data-aos="fade-up" style="height: 500px;">
            <div class="row" style="text-align: center;">
                <div class="col d-flex justify-content-center" style="text-align: center;padding-top: 0px;">
                    <div class="card d-flex justify-content-center" style="border-radius: 0;border-style: none;margin-bottom: 6px;background: rgba(255,255,255,0);height: 90px;padding-right: 5px;padding-left: 5px;margin-top: 6px;width: 940px;max-width: 100%;">
                        <div class="card-body d-flex justify-content-center" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 6px 1px rgba(102,102,102,0.46);background: linear-gradient(160deg, rgb(115,118,247), rgb(17,159,255)), #dadada;text-align: center;font-family: Sarabun, sans-serif;margin-top: 0px;height: 103px;width: auto;min-width: 290px;max-width: 100%;">
                            <div class="d-flex d-xl-flex align-items-center align-items-xl-center" style="height: 100%;width: 100%;">
                                <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                                    <div class="col-md-6">
                                        <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;height: 100%;font-size: 17px;margin-top: auto;color: rgb(255,255,255);">รหัสเชิญของคุณ</h4>
                                    </div>
                                    <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;">
                                        <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: bold;font-family: Roboto, sans-serif;height: 30px;color: rgb(255,255,255);font-size: 25px;"><strong>${adminCODE}</strong><br></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <h1 style="font-family: Sarabun, sans-serif;font-size: 35px;">สวัสดี ${adminFname}<br></h1>
            </div>
            <div class="row no-gutters row-cols-1">
                <div class="col-md-6 d-sm-flex d-md-flex d-lg-flex d-xl-flex justify-content-sm-center justify-content-md-center justify-content-lg-center justify-content-xl-center" style="padding-left: 0px;padding-right: 0px;text-align: center;"><a class="btn btn-primary d-flex align-items-center" role="button" data-aos="fade-up" data-aos-delay="200" style="font-family: Sarabun, sans-serif;width: 326px;height: 65px;margin-top: 4px;border-radius: 10px;background: linear-gradient(50deg, #1a82bc, #2ecc71);min-width: 251px;margin-right: 4px;margin-left: 4px;padding-right: 0px;font-size: 20px;min-height: 65px;max-width: 379px;padding-left: 0px;text-align: left;margin-bottom: 4px;border-style: none;"
                        href="Product"><i class="fa fa-cubes" style="width: 25px;font-size: 22px;margin-left: 16px;margin-right: 17px;text-align: center;"></i>จัดการสินค้า</a></div>
                <div class="col-md-6 d-sm-flex d-md-flex d-lg-flex d-xl-flex justify-content-sm-center justify-content-md-center justify-content-lg-center justify-content-xl-center"
                    style="padding-right: 0px;padding-left: 0px;margin-right: 0px;text-align: center;"><a class="btn btn-primary d-flex align-items-center" role="button" data-aos="fade-up" data-aos-delay="300" style="font-family: Sarabun, sans-serif;width: 326px;height: 65px;margin-top: 4px;border-radius: 10px;background: linear-gradient(50deg, #f1395a, #fc975f);min-width: 251px;margin-right: 4px;margin-left: 4px;padding-right: 0px;font-size: 20px;min-height: 65px;max-width: 379px;padding-left: 0px;text-align: left;margin-bottom: 4px;border-style: none;"
                        href="/OrderOne/OrderView"><i class="fa fa-paste" style="width: 25px;font-size: 22px;margin-left: 16px;margin-right: 17px;text-align: center;"></i>รายงานการสั่งซื้อ</a></div>
            </div>
        </div>
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