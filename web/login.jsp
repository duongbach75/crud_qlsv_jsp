<%-- 
    Document   : login
    Created on : Aug 21, 2019, 3:05:33 PM
    Author     : DUONG BACH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <p>
            <h1> LOGIN </h1><br>
            <form method="post" onsubmit="return validateForm()" action="login_action.jsp" id="myform">
                <div class="form-group">
                    <label for="exampleInputEmail1">UserName</label>
                    <input type="text" class="form-control" id="email" name="user" placeholder="Enter UserName">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="pass" name="pass" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
             <a  href="register.jsp"><button type="button" class="btn btn-primary">Register</button></a> 
            </form>
        </p>
    </div>

</body>

<script>//
//    function validateForm() {
//        var y = document.getElementById("email").value;
//        var z = document.getElementById("pass").value;
//        if (y == "") {
//            alert("Please enter you user ");
//            return false;
//        }
//
//        if (z == "") {
//            alert("Please enter you passwork");
//            return false;
//        }
//        return true;
//    }

 
        $(document).ready(function() {
 
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#myform").validate({
            rules: {
                user: "required",
                pass: "required",
                
            },
            messages: {
                user: "nhập tên đăng nhập vào đi a ơi",
                pass: "quên pass rồi à",
            }
        });
    });

</script>

</html>
