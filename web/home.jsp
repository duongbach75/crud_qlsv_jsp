<%-- 
    Document   : index
    Created on : Aug 20, 2019, 4:20:31 AM
    Author     : DUONG BACH
--%>

<%@page import="com.java.bean.Student"%>
<%@page import="com.java.model.StudentModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body><%
        if (session.getAttribute("login") != null) {
        %>
        <form action="delete_action.jsp" method="post">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col"><input type="checkbox" id="select_all"></th>
                        <th scope="col">id</th>
                        <th scope="col">họ tên</th>
                        <th scope="col">Địa chỉ  </th>
                        <th scope="col">Email</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">chuc nang </th>

                    </tr>
                </thead>

                <%
                    try {
                        StudentModel sm = new StudentModel();
                        List<Student> listStudent = sm.getStudent();
                        int i = 0;
                        for (Student st : listStudent) {%>
                <tr class="table-primary">     
                    <td>
                        <input class="checkbox" type="checkbox" name="delete" value="<%= st.getId()%>" >
                    </td>
                    <td>
                        <%= st.getId()%>  
                    </td>
                    <td>
                        <% out.print(st.getName()); %>  
                    </td>
                    <td>
                        <% out.print(st.getAdress()); %>  
                    </td>
                    <td>
                        <% out.print(st.getEmail()); %>  
                    </td>

                    <td>
                        <% out.print(st.getPhone());%>  
                    </td>
                    <td>
                        <a href="Update.jsp?id=<%=st.getId()%>"><button type="button" class="btn btn-success">UPDATE</button></a>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                    }
                %>          
            </table>
            <a href="add.jsp"><button type="button" class="btn btn-secondary">ADD</button></a>
            <button type="submit" class="btn btn-danger" onclick="return ConfirmDelete()" id="delete">DELETE</button> 
            <a href="logout.jsp"><button type="button" class="btn btn-outline-secondary">Logout</button></a>
        </form>
        <%} else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>

    <script>
        function ConfirmDelete()
        {
            var x = confirm("Are you sure you want to delete?");
            if (x)
                return true;
            else
                return false;
        }
        var select_all = document.getElementById("select_all"); //select all checkbox
        var checkboxes = document.getElementsByClassName("checkbox"); //checkbox items

//select all checkboxes
        select_all.addEventListener("change", function (e) {
            for (i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = select_all.checked;
            }
        });

        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].addEventListener('change', function (e) { //".checkbox" change 
                //uncheck "select all", if one of the listed checkbox item is unchecked
                if (this.checked == false) {
                    select_all.checked = false;
                }
                //check "select all" if all checkbox items are checked
                if (document.querySelectorAll('.checkbox:checked').length == checkboxes.length) {
                    select_all.checked = true;
                }
            });
        }

    </script>

</html>
