<%-- 
    Document   : logout
    Created on : Aug 22, 2019, 11:20:15 PM
    Author     : DUONG BACH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    session.invalidate();
    response.sendRedirect("login.jsp");
    %>    
</html>
