<%-- 
    Document   : register
    Created on : Aug 21, 2019, 3:27:52 PM
    Author     : DUONG BACH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER Page</title>
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">

            <h1> REGISTER </h1><br>
            <form method="post" action="register_action.jsp" id="myform">
                <div class="form-group">
                    <label for="formGroupExampleInput">UserName</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="mời nhập User name">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Passwork</label>
                    <input type="password" class="form-control" id="pass" name="pass" placeholder="mời nhập Passwork">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Nhập lại Passwork</label>
                    <input type="password" class="form-control" id="pass2" name="pass2" placeholder="mời nhập Passwork">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form> 
        </p>
    </div>
</body>

<script>

    $(document).ready(function () {

        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#myform").validate({
            rules: {
                username: "required",
                pass: {
                    required: true,
                    minlength: 6
                },
                pass2: {
                    required: true,
                    minlength: 6,
                    equalTo: "#pass"
                },

            },
            messages: {
                username: "nhập tên vào",
                pass: {
                    required: 'Vui lòng nhập mật khẩu',
                    minlength: 'Vui lòng nhập ít nhất 6 kí tự'
                },
                pass2: {
                    required: 'Vui lòng nhập mật khẩu',
                    minlength: 'Vui lòng nhập ít nhất 6 kí tự',
                    equalTo: 'Mật khẩu không trùng'
                },
            }
        });
    });

</script>


</html>
