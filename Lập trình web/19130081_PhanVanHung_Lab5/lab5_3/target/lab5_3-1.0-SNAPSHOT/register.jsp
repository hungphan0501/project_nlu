<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String error =  (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        html {
            font-family: Helvetica, Arial, sans-serif;
        }
        #main {
            position: relative;
        }
        #main a {
            text-decoration: none;
        }
        #main .img-bg {
            width: 100%;
            height: 90%;
        }
        .container {
            position: absolute;
            width: 400px;
            height: 650px;
            background-color: #fff;
            margin-top: -700px;
            margin-left: 600px;
            border-radius: 10px;
        }
        .container .header {
            text-align: center;
            margin-top: 30px ;
            margin-bottom: -30px;
            font-size: 30px;
            font-weight: bold;
            color: #6c0081;
        }
        .container .form-content {
            text-align: center;
            margin: 50px;
        }
        .container .form-content .input {
            width: 87%;
            padding: 20px;
            margin: 8px 0;
            border-radius: 20px;
            border: none;
            outline: none;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            font-weight: bold;
            color: #6c0081;
        }
        .container .form-content .input::placeholder {
            color:#6c0081 ;
        }
        .container .icon {
            width: 50px;
            border-radius: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            cursor: pointer;
            margin: 5px;
        }
        .container  .form-content .sign-in {
            width: 50%;
            padding: 10px;
            margin: 20px 0 20px 70px;
            background-color: #bd59d7;
            color: #fff;
            box-shadow: 0 5px 8px #e57fff;
            text-decoration: none;
            border-radius: 30px;
            border: none;
            font-weight: bold;
            display: block;
        }
        .container  .form-content .sign-in:hover {
            background-color: #b400e0;
            color: #fff;
            box-shadow: 0 5px 8px #e064ff;
        }
        .container .form-content .login-another {
            margin-bottom: 5px;
            color: rgb(138, 138, 138);
        }
        .container .sign-up {
            color: #6c0081;
            font-weight: bold;
            text-align: center;
            display: block;
            position: relative;
        }
    </style>
</head>
<body>
<div id="main">
    <img class="img-bg" src="./css/background.jpg" alt="">
    <div class="container">
        <form action="/lab5_3/doRegister" method="post">
            <div class="header">Sign Up</div>
            <div class="form-content">
                <%
                    if (error != null) {
                        %>
                        <div class="alert alert-danger" style="color: red;background: aliceblue;padding: 5px 0;border-radius: 3px" role="alert">
                            <%= error %>
                        </div>
                        <%
                    }
                %>
                <input type="text" class="input" name="username" <% if (request.getParameter("username") != null) { %> value="<%=request.getParameter("username") %>" <% } %> placeholder="username or email">
                <input type="password" class="input" name="password" placeholder="password">
                <input type="password" class="input" name="confirm" placeholder="Re-password">
                <input type="tel" class="input" name="phone" placeholder="Phone number">

                <button href="#" class="sign-in">SIGN UP</button>
                <p class="login-another">Or login with</p>
                <div class="icon-section">
                    <img src="./css/icon_fb.png" alt="" class="icon">
                    <img src="./css/icon_gg.png" alt="" class="icon">
                </div>
            </div>
            <a href="/lab5_3/login.jsp" class="sign-up">Sign In</a>
        </form>
    </div>
</div>
</body>
</html>