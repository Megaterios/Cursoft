<%-- 
    Document   : index.jsp
    Created on : 18-oct-2014, 14:59:13
    Author     : Jhorman Perez
--%>

<%@page session='true'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.setAttribute("Mensaje", "");
    response.sendRedirect("jsp/usuario/iniciarSesion.jsp");

%>
