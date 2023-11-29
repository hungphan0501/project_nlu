
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error =  (String) request.getAttribute("error");
%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
<div id="main">
    <div class="container">
        <form action="/lab5_4/doLogin" class="container-section" method="post">
            <div class="form-header">Contact Us</div>
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
                <div class="full-name box">
                    <h6 class="title">USER NAME*</h6>
                    <input type="text" class="input" name="username" placeholder="Enter Your Name">
                </div>
                <div class="email box">
                    <h6 class="title">EMAIL*</h6>
                    <input type="email" class="input" name="email" placeholder="Enter Your Email">
                </div>
                <div class="phone box">
                    <h6 class="title">PHONE</h6>
                    <input type="tel" class="input " name="phone" placeholder="Enter Your Phone">
                </div>
                <div class="select-main box-sub">
                    <h6 class="title">NEEDED SERVICES*</h6>
                    <select name="" id="services">
                        <option value="">Please chooses</option>
                        <option value="">Hổ trợ kĩ thuật</option>
                        <option value="">Tư vấn khách hàng</option>
                        <option value="">Trả góp lãi xuất 0%</option>
                        <option value="">A</option>
                        <option value="">B</option>
                        <option value="">C</option>
                        <option value="">D</option>
                        <option value="">E</option>
                        <option value="">F</option>
                    </select>
                </div>
                <div class="message box">
                    <h6 class="title">MESSAGE</h6>
                    <input type="text" class="input input-message" placeholder="Your message here">
                </div>
                <div class="submit-section">
                    <button href="#">Submit <i class="ti-arrow-right"></i> </button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
