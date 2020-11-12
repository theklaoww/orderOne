
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login Admin Portal</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sarabun">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/css/pikaday.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
</head>

<body>
<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container">
        <div class="container d-flex d-xl-flex justify-content-center justify-content-xl-center"><img class="d-flex d-xl-flex justify-content-center align-items-center align-items-xl-center" src="orderOneLogo.png" style="width: 423px;min-width: 211px;max-width: 195px;text-align: center;" />
            <h4 class="text-center" style="margin-bottom: 0px;font-family: Alata, sans-serif;background: #ffffff;border-radius: 14px;color: #6f6f70;font-size: 17px;width: 137px;">Admin Portal</h4>
        </div>
    </div>
</nav>
    <div class="login-clean">
        <div style="height: 59px;"></div>
        <form data-aos="fade-up" data-aos-once="true" method="post" style="height: 459px;" action="LoginAdmin">
            <h2 class="sr-only">Login Form</h2>
            <h1 style="text-align: center;font-family: Sarabun, sans-serif;font-size: 29px;font-weight: bold;color: rgb(117,117,118);">admin</h1>
            <div class="illustration"><i class="fas fa-user-cog" style="color: rgb(54,143,252);"></i></div>
            <div class="form-group"><input class="form-control" type="text" name="username" placeholder="username"></div>
            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                <%
                    if (request.getAttribute("loginResult") != null && request.getAttribute("loginResult") == "falseja") {
                %>
            <div role="alert" class="alert alert-danger d-flex justify-content-center" style="border-style: none;box-shadow: 0px 0px 3px 0px rgb(248,215,218);"><i class="far fa-sad-tear" style="font-size: 22px;"></i><span style="padding-left: 11px;font-family: Sarabun, sans-serif;"><strong>รหัสไม่ถูกต้อง</strong></span></div>
                    <%
                        }
                    %>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="border-radius: 44px;background: rgb(54,143,252);">Log In</button></form>



    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/pikaday.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
