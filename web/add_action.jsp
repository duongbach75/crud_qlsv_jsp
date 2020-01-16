<%-- 
    Document   : add_action
    Created on : Aug 20, 2019, 4:33:53 PM
    Author     : DUONG BACH
--%>

<%@page import="com.java.model.StudentModel"%>
<%@page import="com.java.bean.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Student s= new Student();
    StudentModel stm= new StudentModel();
    s.setName(request.getParameter("name"));
    s.setAdress(request.getParameter("address"));
    s.setEmail(request.getParameter("email"));
    s.setPhone(request.getParameter("phone"));
    stm.addStudent(s);
    	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", "home.jsp");
    %>