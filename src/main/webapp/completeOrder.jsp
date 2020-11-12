<%-- 
    Document   : completeOrder
    Created on : Nov 10, 2020, 12:39:48 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>order complete #${oid}</title>
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
            <div class="container"><a class="navbar-brand" href="/OrderOne/index.html"><img src="assets/img/orderOneLogo.png" style="width: 190px;max-width: 190px;min-width: 175px;"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2" style="border-style: none;font-size: 24px;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="font-weight: normal;"></span></button>
                <div
                    class="collapse navbar-collapse d-xl-flex justify-content-xl-center" id="navcol-2">
                    <ul class="nav navbar-nav d-xl-flex mr-auto justify-content-xl-center">
                        <li class="nav-item text-center d-flex justify-content-center" style="padding-right: 0px;"></li>
                    </ul><span class="d-flex justify-content-center navbar-text actions"><a class="d-flex align-items-center login" href="login.jsp" style="padding-right: 19px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">proflie</a><a class="btn btn-light d-flex align-items-center action-button" role="button" href="/OrderOne/Logout" style="background: rgba(248,249,250,0.13);border-width: 0px;font-family: Montserrat, sans-serif;font-weight: bold;font-size: 18px;">logout</a> </span></div>
            </div>
        </nav>
        <div style="height: 131px;"></div>
        <div class="container" style="height: 95px;text-align: left;">
            <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 13px;background: rgba(255,255,255,0);height: 64px;">
                <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 8px 6px rgba(64,139,251,0.29);background: #408bfb;text-align: center;font-family: Sarabun, sans-serif;height: auto;filter: blur(0px);">
                    <h4 class="text-center card-title" style="width: auto;margin-bottom: 23px;font-weight: bold;font-family: Sarabun, sans-serif;text-align: center;color: rgb(255,255,255);text-shadow: 1px 0px 1px rgba(74,74,74,0.53);">สั่งสินค้าเรียบร้อย!</h4>
                </div>
            </div>
            <div class="card" style="border-radius: 0;border-style: none;margin-bottom: 20px;background: rgba(255,255,255,0);height: 398px;">
                <div class="card-body" style="border-radius: 16px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: #ffffff;text-align: center;font-family: Sarabun, sans-serif;filter: blur(0px);opacity: 1;">
                    <div style="height: 47px;"></div><i class="la la-check-circle" style="font-size: 98px;color: rgb(64,139,251);box-shadow: 0px 0px;"></i>
                    <h4 class="text-center card-title" style="width: auto;margin-bottom: 14px;font-weight: bold;font-family: Sarabun, sans-serif;text-align: center;color: rgb(86,86,86);margin-top: 19px;">เลขที่ออเดอร์<br /></h4>
                    <h4 class="text-center card-title" style="width: auto;margin-bottom: 23px;font-weight: bold;font-family: Roboto, sans-serif;text-align: center;color: rgb(48,201,127);font-size: 30px;">#${oid}</h4>
                    <h4 class="text-center card-title" style="width: auto;margin-bottom: 23px;font-weight: normal;font-family: Sarabun, sans-serif;text-align: center;color: rgb(86,86,86);font-size: 18px;">${paymenttype}</h4>
                    <div class="d-flex justify-content-center" style="width: 100%;height: auto;margin-right: auto;margin-left: auto;margin-top: 0px;">
                        <div class="row no-gutters row-cols-1 justify-content-center align-items-center" style="height: 60px;">
                            <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;width: 100%;max-width: none;"><button class="btn btn-primary" type="button" data-toggle="modal" data-target="#info" style="font-family: Sarabun, sans-serif;width: 296px;height: 45px;margin-top: 0;border-radius: 34px;min-width: 296px;background: rgb(234,140,73);border-style: none;box-shadow: 0px 0px 11px 3px rgba(234,140,73,0.55);">รายละเอียด</button></h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-light navbar-expand-lg fixed-bottom bg-white text-center d-flex justify-content-center clean-navbar" style="background: rgb(255,255,255);height: 141px;border-radius: 16px;padding-bottom: 10px;padding-top: 0px;">
            <div class="container">
                <div class="d-flex justify-content-center" style="width: 100%;height: 100%;margin-right: auto;margin-left: auto;margin-top: 0px;">
                    <div class="row no-gutters row-cols-1 justify-content-center align-items-center" style="height: 60px;">
                        <div class="col-md-4" style="font-weight: normal;font-style: normal;font-size: 20px;height: 100%;width: 100%;max-width: none;"><a class="btn btn-primary d-flex justify-content-center align-items-center" role="button" style="font-family: Sarabun, sans-serif;width: 296px;height: 45px;margin-top: 0;border-radius: 34px;min-width: 296px;background: rgb(255,255,255);color: rgb(51,51,51);border-width: 2px;border-style: solid;box-shadow: 0px 0px 9px 2px rgba(14,160,255,0.34);"
                                                                                                                                                          href="mainHome.jsp">กลับไปยังหน้าหลัก</a></div>
                    </div>
                </div>
            </div>
        </nav>




    </nav>
    <div class="modal fade" id="info" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">รายละเอียด</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <!COD----->
                <%
                    if (request.getAttribute("paymenttype") != null && request.getAttribute("paymenttype") == "COD") {
                %>

                <div class="container" style="text-align: center;">
                    <div></div>
                    <h1 class="d-flex justify-content-center align-items-center" style="font-size: 22px;font-family: Sarabun, sans-serif;padding-top: 20px;text-align: center;padding-bottom: 5px;font-weight: bold;">เก็บเงินปลายทาง</h1><i class="fas fa-truck" style="font-size: 81px;margin-top: 50px;margin-bottom: 50px;color: #35d18b;"></i>
                    <h1 style="font-size: 16px;font-family: Sarabun, sans-serif;padding-top: 8px;">โปรดเตรียมเงินสดชำระกับพนังงาน</h1>
                    <h1 class="d-flex justify-content-center align-items-center" style="font-size: 16px;font-family: Sarabun, sans-serif;padding-top: 5px;text-align: center;padding-bottom: 5px;">และรอการติดต่อจากเบอร์</h1>
                    <div class="d-flex justify-content-center align-items-center">
                        <h1 class="d-flex justify-content-center align-items-center" style="font-size: 17px;font-family: Roboto, sans-serif;padding-top: 5px;text-align: center;padding-bottom: 5px;background: #e7e7e7;border-radius: 24px;color: rgb(74,74,74);font-weight: bold;width: 234px;">${adminPhone}</h1>
                    </div>
                </div>

                <div class="container" style="height: 95px;text-align: left;padding-top: 9px;">
                    <div class="row" style="text-align: center;">
                        <div class="col d-flex justify-content-center" style="text-align: center;">
                            <div class="card d-flex justify-content-center" style="border-radius: 0;border-style: none;margin-bottom: 13px;background: rgba(255,255,255,0);height: 90px;padding-right: 30px;padding-left: 30px;margin-top: 6px;width: auto;max-width: 400px;">
                                <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: linear-gradient(160deg, rgb(48,221,117), rgb(73,157,234)), #dadada;text-align: center;font-family: Sarabun, sans-serif;margin-top: 0px;height: 103px;width: auto;min-width: 290px;max-width: auto;">
                                    <div style="height: 100%;width: 100%;">
                                        <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                                            <div class="col-md-6">
                                                <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;height: 100%;font-size: 22px;margin-top: auto;color: rgb(255,255,255);">ยอดรวม</h4>
                                            </div>
                                            <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;">
                                                <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: bold;font-family: Roboto, sans-serif;height: 30px;color: rgb(255,255,255);"><strong>${totalprice}.-</strong><br /></h4>
                                            </div>
                                        </div>
                                        <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: normal;font-family: Roboto, sans-serif;height: 30px;font-size: 24px;color: rgb(255,255,255);">THB</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <%
                    }
                %>
                <!QR-------->
                <%
                    if (request.getAttribute("paymenttype") != null && request.getAttribute("paymenttype") == "QR") {
                %>



                <div class="container" style="text-align: center;"><img src="https://newfibre.ais.co.th/Content/images/scpe/MyQrCodeHeader.png" style="width: 297px;border-radius: 14px;">
                    <div></div><img src="https://promptpay.io/${adminPhone}/${totalprice}.png">
                    <h1 style="font-size: 16px;font-family: Sarabun, sans-serif;padding-top: 8px;">ถ่ายหน้าจอ เพื่อชำระผ่านแอพธนาคาร</h1>
                </div>
                <div class="container" style="height: 95px;text-align: left;padding-top: 9px;">
                    <div class="row" style="text-align: center;">
                        <div class="col d-flex justify-content-center" style="text-align: center;">
                            <div class="card d-flex justify-content-center" style="border-radius: 0;border-style: none;margin-bottom: 13px;background: rgba(255,255,255,0);height: 90px;padding-right: 30px;padding-left: 30px;margin-top: 6px;width: auto;max-width: 400px;">
                                <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 5px rgba(102,102,102,0.46);background: linear-gradient(160deg, rgb(75,115,255), rgb(170,78,242)), #79ff57;text-align: center;font-family: Sarabun, sans-serif;margin-top: 0px;height: 103px;width: auto;min-width: 290px;max-width: auto;">
                                    <div style="height: 100%;width: 100%;">
                                        <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                                            <div class="col-md-6">
                                                <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;height: 100%;font-size: 22px;margin-top: auto;color: rgb(255,255,255);">ยอดรวม</h4>
                                            </div>
                                            <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;">
                                                <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: bold;font-family: Roboto, sans-serif;height: 30px;color: rgb(255,255,255);">${totalprice}.-</h4>
                                            </div>
                                        </div>
                                        <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: normal;font-family: Roboto, sans-serif;height: 30px;font-size: 24px;color: rgb(255,255,255);">THB</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!PP----->
                <%
                    }
                %>

                <%
                    if (request.getAttribute("paymenttype") != null && request.getAttribute("paymenttype") == "promptpay") {
                %>
                <div class="container" style="text-align: center;">
                    <div></div>
                    <h1 class="d-flex justify-content-center align-items-center" style="font-size: 22px;font-family: Sarabun, sans-serif;padding-top: 20px;text-align: center;padding-bottom: 5px;font-weight: bold;">พร้อมเพย์</h1><i class="fab fa-paypal" style="font-size: 81px;margin-top: 50px;margin-bottom: 50px;color: #3575ff;"></i>
                    <h1 style="font-size: 16px;font-family: Sarabun, sans-serif;padding-top: 8px;">โอนเงินที่เลขพร้อมเพย์</h1>
                    <div class="d-flex justify-content-center align-items-center" >
                        <h1 class="d-flex justify-content-center align-items-center" style="font-size: 17px;font-family: Roboto, sans-serif;padding-top: 5px;text-align: center;padding-bottom: 5px;background: #e7e7e7;border-radius: 24px;color: rgb(74,74,74);font-weight: bold;width: 234px;" id="phonenumber">${adminPhone}</h1>
                    </div>
                    <h1 class="d-flex justify-content-center align-items-center" style="font-size: 16px;font-family: Sarabun, sans-serif;padding-top: 5px;text-align: center;padding-bottom: 5px;">${adminfirstname} ${adminlastname}<br /></h1>
                    <h4 class="text-left d-flex justify-content-center" style="width: auto;margin-bottom: 20px;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;"><button class="btn btn-primary d-flex d-xl-flex justify-content-center align-items-center justify-content-xl-center align-items-xl-center" role="button" onclick="CopyToClipboard('phonenumber')" style="height: 100%;background: rgb(53,117,255);border-style: none;box-shadow: 0px 0px 10px 3px rgba(53,117,255,0.48);width: 100%;margin-right: 10px;margin-left: 10px;"
                                                                                                                                                                                               href="Report"><i class="far fa-clipboard" style="margin-right: 10px;"></i>คัดลอกเบอร์พร้อมเพย์</button></h4>
                </div>

                <div class="col d-flex justify-content-center" style="text-align: center;">
                    <div class="card d-flex justify-content-center" style="border-radius: 0;border-style: none;margin-bottom: 13px;background: rgba(255,255,255,0);height: 90px;padding-right: 30px;padding-left: 30px;margin-top: 6px;width: auto;max-width: 400px;">
                        <div class="card-body" style="border-radius: 15px;border-style: none;box-shadow: 0px 0px 6px 1px rgba(102,102,102,0.46);background: linear-gradient(160deg, rgb(63,175,255), rgb(45,78,255)), #dadada;text-align: center;font-family: Sarabun, sans-serif;margin-top: 0px;height: 103px;width: auto;min-width: 290px;max-width: auto;">
                            <div style="height: 100%;width: 100%;">
                                <div class="row no-gutters row-cols-2" style="width: 100%;margin-left: 0px;margin-right: 0px;">
                                    <div class="col-md-6">
                                        <h4 class="text-left" style="width: 256px;margin-bottom: auto;font-style: normal;font-weight: bold;font-family: Sarabun, sans-serif;height: 100%;font-size: 22px;margin-top: auto;color: rgb(255,255,255);">ยอดรวม</h4>
                                    </div>
                                    <div class="col-md-6 text-right" style="text-align: right;margin-top: auto;margin-bottom: auto;font-weight: normal;">
                                        <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: bold;font-family: Roboto, sans-serif;height: 30px;color: rgb(255,255,255);"><strong>${totalprice}.-</strong><br /></h4>
                                    </div>
                                </div>
                                <h4 class="text-right" style="width: auto;margin-bottom: 0px;font-style: normal;font-weight: normal;font-family: Roboto, sans-serif;height: 30px;font-size: 24px;color: rgb(255,255,255);">THB</h4>
                            </div>
                        </div>
                    </div>
                </div>

                <%
                    }
                %>

                <div class="modal-body">

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
    <script>
        
    function CopyToClipboard(containerid) {
            if (document.selection) {
                var range = document.body.createTextRange();
                range.moveToElementText(document.getElementById(containerid));
                range.select().createTextRange();
                document.execCommand("copy");
            } else if (window.getSelection) {
                var range = document.createRange();
                range.selectNode(document.getElementById(containerid));
                window.getSelection().addRange(range);
                document.execCommand("copy");
                alert("คัดลอกเลขพร้อมเพย์เรียบร้อย")
            }
        }
            
    </script>
</body>

</html>