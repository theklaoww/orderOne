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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>AdminPortal Report</title>
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
    <div class="container" style="height: 100%;margin-top: 140px;">
       <div>
    <h4 class="text-left d-flex justify-content-center" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><button class="btn btn-primary d-flex d-xl-flex align-items-center justify-content-xl-center align-items-xl-center" type="button" data-toggle="modal" data-target="#reset" style="height: 100%;background: rgb(241,57,90);border-style: none;box-shadow: 0px 0px 10px 3px rgba(241,57,90,0.55);width: 174px;"><i class="fas fa-trash-alt" style="margin-right: 10px;"></i>ลบรายการทั้งหมด</button></h4>
    <h4
        class="text-left" style="width: auto;margin-bottom: 10px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><i class="fa fa-inbox" style="margin-right: 10px;"></i>รายงานการสั่งสินค้า</h4>
</div>
        <%
                    if (request.getAttribute("msg") != null && request.getAttribute("msg") == "222") {
                %>
            <h4 class="text-center" style="width: auto;margin-bottom: 10px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;background: rgba(230,61,63,0.17);border-radius: 28px;font-size: 20px;padding-top: 10px;padding-bottom: 10px;color: rgb(235,37,49);border-style: none;"><i class="fas fa-trash" style="margin-right: 10px;"></i>ลบรายการ ทั้งหมดเรียบร้อย</h4>
                    <%
                        }
                    %>
        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 8px 2px rgba(241,57,90,0.64);background: #f1395a;text-align: center;font-family: Sarabun, sans-serif;">
    <div class="row no-gutters row-cols-3" style="height: 30px;color: rgb(255,255,255);">
        <div class="col-md-4" style="height: 100%;">
            <h4 class="text-center d-flex d-xl-flex justify-content-start align-items-center justify-content-xl-start" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 15px;height: 100%;"><strong>เลขที่ออเดอร์</strong></h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-flex d-xl-flex justify-content-start align-items-center justify-content-xl-start" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 15px;height: 100%;">ชื่อลูกค้า</h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-flex d-xl-flex justify-content-end align-items-center justify-content-xl-end" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: bold;font-size: 15px;min-width: 100%;height: 100%;">รายละเอียด</h4>
        </div>
    </div>
</div>
        
        <c:forEach items="${orderlist}"  var="ol">
        
        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;margin-top: 10px;">
    <div class="row no-gutters row-cols-3" style="height: 30px;">
        <div class="col-md-4" style="height: 100%;">
            <h4 class="text-center d-flex d-xl-flex align-items-center justify-content-xl-start" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 15px;height: 100%;"><strong>#OD${ol.orderId}</strong> <br /></h4>
        </div>
        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;">
            <h4 class="text-center d-flex d-xl-flex align-items-center justify-content-xl-start" style="width: 100%;margin-bottom: 0px;font-style: normal;font-weight: normal;font-size: 15px;height: 100%;"><strong>#${ol.userId} </strong> | ${ol.user.firstname}</h4>
        </div>
        <div class="col-md-4 d-flex d-xl-flex justify-content-end align-items-center justify-content-xl-end" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;"><a class="btn btn-primary d-flex d-xl-flex justify-content-center align-items-center justify-content-xl-center align-items-xl-center" role="button" style="height: 100%;background: rgb(241,57,90);border-style: none;box-shadow: 0px 0px 10px 3px rgba(241,57,90,0.55);"
                href="Report?order_id=${ol.orderId}&amp;orderby=${ol.user.firstname}&amp;userId=${ol.userId}" ><i class="fa fa-info-circle" style="margin-right: 10px;"></i>ข้อมูล</a></div>
    </div>
</div>
                </c:forEach>
    </div>
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
    <div style="height: 30px;"></div>
    
    <div class="d-flex justify-content-center"><a class="btn btn-primary d-flex justify-content-center align-items-center" role="button" style="height: 60px;width: 60px;background: linear-gradient(56deg, rgb(112,119,247), rgb(24,155,254));" href="AdminHome"><i class="fas fa-chevron-left"></i></a></div>
    <div style="height: 30px;"></div>
    
    <div class="modal fade" id="reset" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            
                            <div class="modal-body">
                                <div class="container d-flex justify-content-center" style="background: rgba(241,57,90,0.14);border-radius: 15px;"><i class="fa fa-trash-o" style="font-size: 81px;margin-top: 50px;margin-bottom: 50px;color: #f1395a;"></i></div>
                                <h1 style="color: rgb(108,108,108);font-family: Sarabun, sans-serif;font-size: 20px;text-align: center;margin-bottom: 10px;margin-top: 10px;">ลบข้อมูลรายการ สั่งซื้อทั้งหมดหรือไม่?</h1>
                                <div>
    <div>
        <h4 class="text-left d-flex justify-content-center" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><a class="btn btn-primary d-flex d-xl-flex justify-content-center align-items-center justify-content-xl-center align-items-xl-center" role="button" style="height: 100%;background: rgb(241,57,90);border-style: none;box-shadow: 0px 0px 10px 3px rgba(241,57,90,0.55);width: 100%;margin-right: 10px;margin-left: 10px;"
                href="ResetReport"><i class="fas fa-check" style="margin-right: 10px;"></i>ยืนยัน</a></h4>
    </div>
</div>
                            </div>
                            <div class="modal-footer">
                               
                            </div>
                        </div>
                    </div>
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