<%-- 
    Document   : demo
    Created on : Oct 26, 2020, 2:58:05 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="margin-top: 50px;">

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

    <body style="height: 846px;background: #f1f7fc;">

        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
            <div class="container"><a class="navbar-brand" href="/OrderOne/index.html"><img src="orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;" /></a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler" style="border-style: none;font-size: 24px;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="font-weight: normal;"></span></button>
                <div
                    class="collapse navbar-collapse d-xl-flex justify-content-xl-center" id="navcol-1">
                    <ul class="nav navbar-nav d-xl-flex mr-auto justify-content-xl-center">
                        <li class="nav-item text-center d-flex justify-content-center" style="padding-right: 0px;"></li>
                    </ul><span class="d-flex justify-content-center navbar-text actions"><a class="d-flex align-items-center login" href="profile#" style="padding-right: 19px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">proflie</a><a class="btn btn-light d-flex align-items-center action-button" role="button" href="Logout" style="background: rgba(248,249,250,0.13);border-width: 0px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">logout</a></span></div>
            </div>
        </nav>


        <div class="container" style="height: 100%;margin-top: 40px;">
            <div>
                <h4 class="text-left" style="width: auto;margin-bottom: 23px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><i class="fa fa-tag" style="margin-right: 10px;"></i>รายการสั่งซื้อ</h4>
            </div>
            <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;background: rgba(255,255,255,0);">
                <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;">
                    <div class="row no-gutters row-cols-3" style="height: 30px;">
                        <div class="col-md-4" style="height: 100%;">
                            <h4 class="text-center" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 20px;height: 100%;">รายการ</h4>
                        </div>
                        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
                            <h4 class="text-center" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 20px;height: 100%;">จำนวน</h4>
                        </div>
                        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
                            <h4 class="text-center" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 20px;min-width: 100%;height: 100%;">ราคา</h4>
                        </div>
                    </div>
                    <div style="height: 3px;background: linear-gradient(90deg, rgb(124,114,245), rgb(16,159,255)), #c81515;margin-bottom: 15px;"></div>

                    <c:forEach items="${cartview}" var="c" varStatus="index">
                        <div class="row no-gutters row-cols-3" style="height: 30px;">
                            <div class="col-md-4" style="height: 100%;">
                                <h4 class="text-center" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 20px;height: 100%;">${c.productName}</h4>
                            </div>
                            <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
                                <h4 class="text-center" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 20px;height: 100%;">${c.amount}</h4>
                            </div>
                            <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
                                <h4 class="text-center" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 20px;min-width: 100%;height: 100%;">${c.eachAllPrice}</h4>
                            </div>
                        </div>
                    </c:forEach>


                </div>

            </div>

            <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: linear-gradient(126deg, rgb(255,151,75), rgb(242,78,117)), #79ff57;text-align: center;font-family: Sarabun, sans-serif;margin-top: 25px;height: 90px;">
    <div style="height: 100%;width: 100%;">
        <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
            <div class="col-md-6">
                <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;height: 100%;font-size: 22px;margin-top: auto;color: rgb(255,255,255);">ยอดรวม</h4>
            </div>
            <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;">
                <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: bold;font-family: Roboto, sans-serif;height: 30px;color: rgb(255,255,255);">${totalprice}</h4>
            </div>
        </div>
        <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: normal;font-family: Roboto, sans-serif;height: 30px;font-size: 24px;color: rgb(255,255,255);">THB</h4>
    </div>
</div>


<div class="container" style="height: 100%;margin-top: 10px;">
    <div></div>
    <form action="Payment" method="POST">
     <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;background: rgba(255,255,255,0);">
        <div>
            <h4 class="text-left" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;margin-top: 20px;"><i class="fas fa-dollar-sign" style="margin-right: 10px;"></i>วิธีการชำระเงิน</h4>
        </div>
        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;margin-top: 0px;height: 65px;min-height: 65px;">
            <div style="height: auto;width: 100%;"></div>
            <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                <div class="col-md-6">
                    <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: normal;font-family: Sarabun, sans-serif;height: 100%;font-size: 18px;margin-top: auto;"><input type="radio" style="margin-right: 9px;font-weight: normal;" id="cod" name="pay_option" value="cod" /><label for="cod">เก็บเงินปลายทาง</label></h4>
                </div>
                <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;"><i class="far fa-money-bill-alt" style="text-align: right;margin-top: auto;font-weight: normal;"></i></div>
            </div>
        </div>
        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;margin-top: 20px;height: 65px;min-height: 65px;">
            <div style="height: auto;width: 100%;font-weight: normal;"></div>
            <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                <div class="col-md-6" style="font-weight: normal;">
                    <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: normal;font-family: Sarabun, sans-serif;height: 100%;font-size: 18px;margin-top: auto;"><input type="radio" style="margin-right: 9px;" id="qr" name="pay_option" value="qr" /><label for="qr">QR PAY</label></h4>
                </div>
                <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;"><i class="fas fa-qrcode" style="text-align: right;margin-top: auto;"></i></div>
            </div>
        </div>
        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;margin-top: 20px;height: 65px;min-height: 65px;">
            <div style="height: auto;width: 100%;font-weight: normal;"></div>
            <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                <div class="col-md-6" style="font-weight: normal;">
                    <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: normal;font-family: Sarabun, sans-serif;height: 100%;font-size: 18px;margin-top: auto;"><input type="radio" style="margin-right: 9px;" id="bank" name="pay_option" value="bank" /><label for="bank">บัญชีธนาคาร</label></h4>
                </div>
                <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;"><i class="fa fa-university" style="text-align: right;margin-top: auto;"></i></div>
            </div>
        </div>
         <div style="height: 178px;margin-right: auto;margin-left: auto;padding-right: 0px;padding-left: 0px;padding-bottom: 0px;">
        <div class="row" style="text-align: center;">
            <div class="col"><button class="btn btn-primary" type="submit" style="font-family: Sarabun, sans-serif;width: 326px;height: 65px;margin-top: 0;border-radius: 8px;background: linear-gradient(90deg, #1abc9c, #2ecc71);min-width: 251px;margin-right: auto;margin-left: auto;padding-right: 0px;font-size: 20px;min-height: 65px;max-width: 379px;padding-left: 0px;">ยืนยันการสั่งซื้อ<i class="fas fa-check" style="width: 25px;font-size: 22px;margin-left: 138px;"></i></button></div>
        </div>
    </div>
    </div></form>
    
</div>


        </div>






        <div class="footer-dark" style="height: 400px;">
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
        <script src="assets/js/orderone.js"></script>
    </body>