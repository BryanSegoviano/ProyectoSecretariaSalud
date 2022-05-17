<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Buscar Expediente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid" style="background-color:#9f2043">
                <div class="navbar-header">
                    <a class="navbar-brand" style="color:white">Secretaria de Salud</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="menuPrincipal.jsp" style="color:white">Inicio</a></li>
                    <li><a href="registrarCita.jsp" style="color:white">Registrar Cita</a></li>
                    <li><a href="verExpediente.jsp" style="color:white">Ver expediente</a></li>
                    <li><a href="consultarCitas.jsp" style="color:white">Consultar todas las citas</a></li>
                    <li><a href="consultarExpedientes.jsp" style="color:white">Consultar todos los expedientes</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html" style="color:white"><span class="glyphicon glyphicon-log-in"></span> Sign Out</a></li>
                </ul>
            </div>
        </nav>
        <br><br>
        <div class = "container">
            <div class = "card" style="width: 64rem;">
                <div class="card-body">
                    <h1>Consultar Expediente</h1>   
                    <br>
                    <form method="POST" action="expedienteHabitante" >
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-sm">Numero de Seguridad Social:</span>
                        <input type="text" class="txt" id="nss" name="nss" placeholder="Ej. 5553321343" required="">
                    </div>
                    
                    
                        <input type="submit" class="btn btn-primary" value = "Aceptar"/>
                    </form>


                </div>
            </div>
        </div>


    </body>
</html>
