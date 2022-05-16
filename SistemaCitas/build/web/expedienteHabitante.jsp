

<%@page import="java.util.Arrays"%>
<%@page import="dominio.Expediente"%>
<%@page import="dominio.Habitante"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Habitante habitante = (Habitante) session.getAttribute("habitante");
    Expediente expediente = habitante.getIdExpediente();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Expediente</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <img src="img/banner.png" alt="secretariasalud" width="1200">
        <h1 id="titulo">Expediente del habitante</h1>             
                    <%
                        out.print(
                                "<div id=\"divIzquierda\" class=\"caja1\">"
                                + "<h2>NSS: " + habitante.getNss() + "</h2>"
                                + "<div id=\"divDaosPersonales\"><br/>"
                                + "<img src=\"data:image/png;base64," + habitante.getDatoBiometricoConversion()+ "\" width=\"100\"  height=\"100\" /> <br/>"
                                + "<label><b>Nombre:</b> "
                                + habitante.getNombre()
                                + "</label><br/><br/>"
                                + "<label><b>Direccion:</b> "
                                + habitante.getDireccion()
                                + "</label><br/><br/>"
                                + "<label><b>Edad:</b> "
                                + habitante.getEdad()
                                + "</label><br/><br/>"
                                + "<label><b>Imagenes:</b></label> <br/> <br/>"
                                + "<img src=\"data:image/png;base64," + expediente.getImagenes() + "\" width=\"200\"  height=\"200\" />"
                                + "<br/><label><b>Documentos:</b></label> <br/> <br/>"
                                + "<img src=\"data:image/png;base64," + expediente.getDocumento() + "\" width=\"200\"  height=\"200\" />"
                                + "<br/><br/><label><b>Informacion general del habitante: </b>"
                                + expediente.getInformacionGeneral()
                                + "</label><br/><br/>"
                                + "<button id=\"botonHabitante\" onclick=\"location.href = 'index.html'\">Terminar registro</button>"
                                + "</div></div>"
                        );
                    %>           
                <br/>             
        <img src="img/bannerabajo.png" alt="gobiernomex" width="1200">  
    </body>
</html>
