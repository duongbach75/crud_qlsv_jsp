<%-- 
    Document   : login_action
    Created on : Aug 21, 2019, 4:46:24 PM
    Author     : DUONG BACH
--%>

<%@page import="com.java.model.LoginModel"%>
<%@page import="com.java.bean.login"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    login l= new login();
 LoginModel lm= new LoginModel();
 String name=request.getParameter("user");
 String pass=request.getParameter("pass");
 int c= lm.checkLogin(name, pass);
 if (c==1){
     session.setAttribute("login", name);
 response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", "home.jsp");
        }
else if(c==0){
    session.setAttribute("login", "");
response.sendRedirect("login.jsp");
}
%>
</html>
