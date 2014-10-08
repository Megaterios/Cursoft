<%-- 
    Document   : usuario
    Created on : 27/09/2014, 05:56:04 PM
    Author     : Manuel
--%>


<!DOCTYPE html>
<html>
    <head>
        <!--Codificaci�n de caracteres-->
        <meta charset="utf-8">
        <!--Titulo-->
        <title>CURSOFT - Sistema de Informaci�n</title>
        <!--Visualizaci�n-->
        <meta content="width=device-width, heigth=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!--Informaci�n-->
        <meta content="CURSOFT - Sistema de informaci�n para la administraci�n de curso de profundizaci�n" name="description">
        <meta content="Megaterios" name="author">
        <meta content="index, follow" name="robots">
        <!--Normalizar estilos-->
        <link href="../../css/normalize.css" rel="stylesheet">
        <!--Bootstrap-->
        <link href="../../css/bootstrap.css" rel="stylesheet">
        <link href="../../css/bootstrap-theme.css" rel="stylesheet">
        <link href="../../css/bootstrap-formhelpers.css" rel="stylesheet">
        <!--Hojas de estilo-->
        <link href="../../css/style.css" rel="stylesheet">
        <!--Iconos-->
        <link href="../../img/favicon.ico" rel="shortcut icon">
    </head>
   <section>
       <div class="container">
            <header>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="contenido">
                        <figure>
                            <img alt="CURSOFT" class="img-responsive" id="banner_cursoft" src="../../img/banne_cursoft.png">
                        </figure>
                    </div>
                </div>
            </header>
       </div>
    <div class="row">
        <div id="subtitulo">
            <h2>Iniciar sesi�n</h2>
        </div>
        
        <div class="col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-3 col-lg-6">
            <div class="row">
                <div class="col-xs-offset-2 col-xs-8 panel panel-default">
                    <div id="formulario">
                        <form action="administrarUsuario.jsp" class="form-horizontal" method="get" role="form">
                            <div class="form-group">
                                <label for="tipo">Tipo de usuario:</label>
                                <select class="form-control" id="tipo" name = "tipo">
                                  <option value="1">Aspirante</option>
                                  <option value="3">Estudiante</option>
                                  <option value="2">Profesor</option>
                                </select>
                                <p class="help-block">Selecciona tu tipo de usuario</p>
                            </div>
                            <div class="[CLASS_CORREO]">
                                <label for="correo">Correo electr�nico:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                    <input class="form-control" id="correo" name = "correo" placeholder="Ingresa tu correo electr�nico" type="text">
                                </div>
                            </div>
                            <div class="[CLASS_CONTRASENIA]">
                                <label for="contrase�a">Contrase�a:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                    <input class="form-control" id="contrase�a" name = "contrasenia" placeholder="Ingresa tu contrase�a" type="password">
                                </div>
                                <div id="recordar">
                                    <p><a href="index.php?mostrar=IU_RECUPERAR_CONTRASENIA">�Olvidaste tu contrase�a?</a></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <div id="botones">
                                    <button class="btn btn-danger" id="registrar" name = "requerimiento" value="iniciarSesion" type="submit">Iniciar Sesi�n</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="registro">
                <p><strong>�Es tu primera vez en CURSOFT?</strong></p>
                
                <a class="btn btn-danger" role="button" href="../estudiante/estudiante.jsp">Registrar - Aspirante</a>
            </div>
        </div>
    </div>
       <footer>
                <p><strong>Copyright � 2014. Programa de Ingenier�a de Sistemas - UFPS</strong></p>
                <p>Desarrollado por: <span class="icon-github"></span><strong><a id="megaterios" href="https://github.com/Megaterios/"> Megaterios</a></strong></p>
            </footer>
            <!--Scripts-->
            <script src="../../js/modernizr.js"></script>
            <script src="../../js/main.js"></script>
            <script src="../../js/jquery.js"></script>
            <!--Scripts Bootstrap-->
            <script src="../../js/bootstrap.js"></script>
            <script src="../../js/vendor/bootstrap-filestyle.js"></script>
            <script src="../../js/vendor/bootstrap-formhelpers.js"></script>
</section>
</html>