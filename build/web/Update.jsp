<%-- 
    Document   : Update
    Created on : Aug 20, 2019, 4:07:48 PM
    Author     : DUONG BACH
--%>

<%@page import="com.java.model.StudentModel"%>
<%@page import="com.java.bean.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <%
            Student s= new Student();
            StudentModel stm= new StudentModel();
            s = stm.getStudentbyId(Integer.parseInt(request.getParameter("id")));
        %>
        <form action="update_action.jsp" method="post">
        <div class="input-group flex-nowrap">
            <div class="input-group-prepend">
                <span class="input-group-text" id="id">id</span>
            </div>
            <input type="text" class="form-control" name="id" aria-describedby="addon-wrapping" value="<%=s.getId() %>" readonly="">
            
            <div class="input-group-prepend">
                <span class="input-group-text" id="name">Name</span>
            </div>
            <input type="text" class="form-control" name="name" aria-describedby="addon-wrapping" value="<%=s.getName() %>">
            <br>
            <div class="input-group-prepend">
                <span class="input-group-text" id="address">Address</span>
            </div>
            <input type="text" class="form-control" name="address" aria-describedby="addon-wrapping"value="<%=s.getAdress()%>">
            <br>
            <div class="input-group-prepend">
                <span class="input-group-text" id="email">Email</span>
            </div>
            <input type="text" class="form-control" name="email" aria-describedby="addon-wrapping" value="<%=s.getEmail() %>">
            <br>
            <div class="input-group-prepend">
                <span class="input-group-text" id="phone">Phone Number</span>
                <br>
            </div>
            <input type="text" class="form-control" name="phone" aria-describedby="addon-wrapping" value="<%=s.getPhone() %>">
            <button type="submit" class="btn btn-primary">UPDATE</button>

        </div>
            </form>
    </body>
   
</html>