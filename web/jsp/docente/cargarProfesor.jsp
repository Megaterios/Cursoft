<%-- 
    Document   : cargarProfesor
    Created on : 20/10/2014, 09:12:09 PM
    Author     : Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="facade" class="com.cursoft.facade.Facade" ></jsp:useBean>

<%
    /*
    cuando se conecte con la interfaz de inicio de session se debe redireccionar a esta pagina con el codigo del profesor
    que va a acceder al sistema para poder hacer la consulta, por ahora se hará con un codigo de docente que ya este registrado
    */
    //String cod = session.getAttribute("codigoProfesor");
    String cod = "12043";
    String lista = facade.listarModulosProfesor(cod);
    String listadoHtml = "";
    if(!lista.isEmpty()){
        String modulos [] = lista.split(";");
        for(int i = 0; i < modulos.length; i++){
            String mod [] = modulos[i].split(",,");
            listadoHtml += "<tr><td><a href=\"../modulos/cargarModulo.jsp\">"+mod[0]+"</a></td>";
            String hor[] = mod[1].split(":,");
            listadoHtml += "<td><ul>";
            for(int j =0; j<hor.length; j++){
                listadoHtml += "<li>"+hor[j]+"</li>";
            }
            listadoHtml += "</ul></td></tr>";
        }
    }
    if(listadoHtml.isEmpty()){
        listadoHtml = "Sin Modulos";
    }
    session.setAttribute("modulosDictados", listadoHtml);
    response.sendRedirect("principalProfesor.jsp");
%>