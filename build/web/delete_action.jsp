<%-- 
    Document   : delete_action
    Created on : Aug 21, 2019, 2:23:19 AM
    Author     : DUONG BACH
--%>
<%@page import="com.java.model.StudentModel"%>
<%@page import="com.java.bean.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    StudentModel stm= new StudentModel();
String[] ids=request.getParameterValues("delete");
if(ids!=null){   
for(String id:ids){
        stm.deleteStudent(id);
     // do something with id, this is checkbox value
    }
    	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", "home.jsp");
} else response.sendRedirect("home.jsp");
%>