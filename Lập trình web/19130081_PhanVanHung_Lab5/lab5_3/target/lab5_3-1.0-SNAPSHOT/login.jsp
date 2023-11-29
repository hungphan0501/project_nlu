<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String error =  (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
<div id="main">
    <img class="img-bg" src="./css/background.jpg" alt="">
    <div class="container">
        <form action="/lab5_3/doLogin" method="post">
            <div class="header">Sign In</div>
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
                <button href="#" class="sign-in">SIGN IN</button>
                <p class="login-another">Or login with</p>
                <div class="icon-section">
                    <img src="./css/icon_fb.png" alt="" class="icon">
                    <img src="./css/icon_gg.png" alt="" class="icon">
                </div>
            </div>
            <a href="/lab5_3/register.jsp" class="sign-up">Sign Up</a>
        </form>
    </div>
</div>
</body>
</html>