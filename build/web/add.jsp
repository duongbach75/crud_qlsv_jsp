<%-- 
    Document   : add
    Created on : Aug 20, 2019, 3:38:19 PM
    Author     : DUONG BACH
--%>

<%@page import="com.java.bean.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD Page</title>
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body><%
        if (session.getAttribute("login") != null) {
        %>
        <div class="container">
            <h1> ADD </h1><br>
            <form id="myform"action="add_action.jsp" method="post" onsubmit="return validateForm()">

                <div class="form-group">
                    <label for="formGroupExampleInput">Name</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Example input">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Address</label>
                    <input type="text" class="form-control" name="address" id="address" placeholder="Another input">
                </div>

                <div class="form-group">
                    <label for="formGroupExampleInput">Email</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Example input">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Phone</label>
                    <input type="text" class="form-control" name="phone" id="phone" placeholder="Another input">
                </div>
                <input type="submit" class="btn btn-primary" id="save" value="ADD" >
            </form>
            <%} else {
                    response.sendRedirect("login.jsp");
                }
            %>
        </div>
    </body>

    <script>
//        function validateForm() {
//            var x = document.getElementById("name").value;
//            var y = document.getElementById("email").value;
//            var z = document.getElementById("address").value;
//            var t = document.getElementById("phone").value;
//            if (x == "") {
//                alert("Please enter your Username");
//                return false;
//            }
//            if (y == "") {
//                alert("Please enter you email");
//                return false;
//            }
//
//            if (z == "") {
//                alert("Please enter you Address");
//                return false;
//            }
//
//            if (t == "") {
//                alert("Please enter you Phone");
//                return false;
//            }
//
//            alert("Bây giờ tôi sẽ thêm thông tin cho bạn ")
//
//            return true;
//        }
        
        $(document).ready(function() {
 
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#myform").validate({
            rules: {
                name: "required",
                email: "required",
                address: "required",
                phone: "required",
               
            },
            messages: {
                name: "nhập tên đi a ơi",
                email: "quên email à anh",
                address: "nhớ nhập địa chỉ",
                phone: "số điện thoại mà k nhớ",
            }
        });
    });
        
    </script>

</html>
