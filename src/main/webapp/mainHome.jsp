<%-- 
    Document   : demo
    Created on : Oct 26, 2020, 2:58:05 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="margin-top: 177px;">

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
        
                
        <div class="container" style="height: 100px;">
    <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;background: rgba(255,255,255,0);">
        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;">
            <h4 class="text-center card-title" style="width: auto;margin-bottom: 0px;">สวัสดี 👋🏻 คุณ ${user.firstname}</h4>
        </div>
    </div>
    <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;"></div>
    <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;"></div>
</div>        
                
                
        <div class="container">

            <form id="order" action="Order" method="POST">
                <c:forEach items="${productList}" var="product" varStatus="p">

                    <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px; background: rgba(255,255,255,0);">
                        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;">


                            <div class="row">
                                <div class="col-md-6" style="padding-right: 5px;padding-left: 5px;">
                                    <h4 class="text-left" style="width: auto;">${product.productName}</h4>
                                </div>
                                <div class="col-md-6" style="padding-right: 5px;padding-left: 5px;">
                                    <h4 class="text-right" style="width: auto;"><div id="product_price-${p.index}">${product.productPrice}</div> <h6 class="text-right">THB</h6></h4>
                                </div>
                            </div>
                            <div class="d-flex d-lg-flex justify-content-end justify-content-lg-end">
                                <div style="width: 160px;">
                                    <div class="row" style="padding-bottom: 0px;">
                                        <input name="product-id-${p.index}" value="${product.id}" hidden>
                                        <div class="col d-lg-flex justify-content-lg-center" style="width: 270px;padding-top: 0px;"><button id="btn_stepdown-${p.index}" class="btn btn-primary d-lg-flex justify-content-lg-center" type="button" style="padding-right: auto;padding-left: auto;padding-top: auto;padding-bottom: auto;height: 30;"><i class="fas fa-minus d-lg-flex justify-content-lg-center align-items-lg-center" style="margin-right: auto;margin-left: auto;margin-bottom: auto;margin-top: auto;"></i></button></div>
                                        <div class="col d-lg-flex justify-content-lg-center align-items-lg-center" style="width: 270px;padding-right: 7px;padding-top: 0px;"><input name="amount-${p.index}" id="amount-${p.index}" type="text" class="d-lg-flex" style="width: 45px;text-align: center;" inputmode="numeric" value="0"/></div>
                                        <div class="col d-lg-flex justify-content-lg-center" style="width: 270px;padding-top: 0px;"><button id="btn_stepup-${p.index}" class="btn btn-primary d-lg-flex justify-content-lg-center" type="button" style="padding-right: auto;padding-left: auto;padding-top: auto;padding-bottom: auto;margin-left: auto;margin-bottom: auto;margin-right: auto;margin-top: auto;"><i class="fas fa-plus" style="margin-right: auto;margin-left: auto;"></i></button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </form>


        </div>

        <nav id="cart" class="navbar navbar-light navbar-expand-lg fixed-bottom bg-white text-center clean-navbar" style="background: rgb(116,2,2);height: 149px; display: none;">
            <div class="container">
                <div class="container d-flex justify-content-center" style="height: 0px;">
                    <h4 class="text-center d-flex justify-content-center" style="width: auto;height: 36px;"><span id="price_bar">0</span> THB</h4>
                </div>
                <div class="d-flex justify-content-center" style="width: 427px;height: 49px;margin-right: auto;margin-left: auto;margin-top: 40px;"><button form="order" class="btn btn-primary" type="submit" style="font-family: Sarabun, sans-serif;width: 296px;height: 45px;margin-top: 0;border-radius: 8px;background: linear-gradient(90deg, #1abc9c, #2ecc71);min-width: 296px;">ดำเนินการต่อ<i class="fa fa-angle-right" style="width: 25px;font-size: 22px;margin-left: 138px;"></i></button></div>
            </div>
        </nav>



        <div class="footer-dark" style="height: 222px;">
    <footer>
        <div class="container" style="padding-top: 28px;">
            <h1 style="font-family: Montserrat, sans-serif;font-size: 13px;font-weight: bold;color: rgb(117,117,118);padding-bottom: 0px;text-align: center;"><strong>Powered by</strong><br /></h1>
            <a href="loginAdmin.jsp" style="height: 305px;width: 66px;">
                <div style="text-align: center;"><img src="orderOneLogo.png" style="width: 170px;text-align: center;opacity: 0.21;" /></div>
            </a>
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