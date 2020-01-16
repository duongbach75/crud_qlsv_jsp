<%-- 
    Document   : register_action
    Created on : Aug 21, 2019, 4:26:52 PM
    Author     : DUONG BACH
--%>

<%@page import="com.java.model.LoginModel"%>
<%@page import="com.java.bean.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
 login l= new login();
 LoginModel lm= new LoginModel();
 String name=request.getParameter("username");
 String pass=request.getParameter("pass");
 l.setUser(name);
 l.setPass(pass);
 lm.addLogin(l);%>
 
 <script>
     alert("đăng kí thành công")
 </script> 
<%
 response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", "home.jsp");
%>
</html>