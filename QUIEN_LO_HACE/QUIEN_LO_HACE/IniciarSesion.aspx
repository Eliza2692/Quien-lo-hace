﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="QUIEN_LO_HACE.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quien Lo Hace</title>

    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Palatino+Linotype" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css"/>

    <link href="Css/scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Css/scripts/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"/>
    
    <link href="Css/scripts/carousel/style.css" rel="stylesheet" type="text/css" />
    
    <link href="Css/scripts/fontawesome/css/font-awesome.min.css" rel="stylesheet" />

    <link href="Css/scripts/icons/general/stylesheets/general_foundicons.css" media="screen" rel="stylesheet" type="text/css" />  
    <link href="Css/scripts/icons/social/stylesheets/social_foundicons.css" media="screen" rel="stylesheet" type="text/css" />

    <link href="Css/scripts/wookmark/css/style.css" rel="stylesheet" type="text/css" />
    
    <link href="Css/scripts/prettyphoto/css/prettyPhoto.css" rel="stylesheet" type="text/css" />

    <link href="Css/styles/custom.css" rel="stylesheet" type="text/css" />

</head>
<body id="pageBody">


    <div id="decorative2">
    <div class="container">
 
<!--ENCABEZADO-->
        <!-- Barra de Menu -->
        <div class="divPanel topArea notop nobottom">
            <div class="row-fluid">
                <div class="span12">

                    <!--Logo-->
                    <div id="divLogo" class="pull-left">
                        <a href="#" id="divSiteTitle">Quien Lo Hace</a><br />
                        <a href="#" id="divTagLine">Alguien más lo puede hacer</a>
                    </div>

                    <!--Menu Horizontal-->
                    <div id="divMenuRight" class="pull-right">
                    <div class="navbar">                      
                        <div class="nav-collapse">
                            <ul class="nav nav-pills ddmenu">
                                <li class="dropdown active"><a href="Index.aspx">Inicio</a></li>
                                <li class="dropdown"><a href="IniciarSesion.aspx">Iniciar Sesión</a></li>
                            </ul>
                        </div>
                    </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    </div>


<!--CUERPO-->

			
    <div id="decorative1" style="position:relative">
    <div class="container">
        <!--imagen-->
        <div class="divPanel headerArea">
            <div class="row-fluid">
                <div class="span12">

                        <div id="headerSeparator"></div>

                        <div id="divHeaderText" class="page-content">
                            <div id="divHeaderLine2">Disfruta de tu tiempo libre mientras nosotros haecemos tuts tareas</div><br />
                        </div>

                        <div id="headerSeparator2"></div>

                </div>
            </div>

        </div>

    </div>
    </div>

    <div id="contentOuterSeparator"></div>
    <form action="/" runat="server" method="post">
    <div class="container">
        <div class="row-fluid">
            
            <div class="span2"></div>
            <div class="span3">
                <!--Usuario-->
                    <label>Correo Electrónico: </label>
                    <asp:TextBox ID="txtUsuario" runat="server" class="input-xlarge"></asp:TextBox>
                    <p><a href="Index.aspx" title="" class="lead" style="font-size:14px">No estoy registrado. Registrarme</a></p>
            </div>
            <div class="span3">
                <!--Contraseña-->
                <label>Contraseña: </label>
                <asp:TextBox ID="txtContraseña" runat="server" class="input-xlarge" textMode="Password"></asp:TextBox>
                <p><a href="OlvidoContrasena.aspx" title="" class="lead" style="font-size:14px">¿Has olvidado tu contraseña?</a></p>
            </div>
            <div class="span3" style:"text-align: center">
                <br/>
                <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" />
            </div>
            
     
    </div>
        </form>

     
<!--PIE DE PAGINA-->
    <div id="footerOuterSeparator"></div>

 <div id="divFooter" class="footerArea">

    <div class="container">
 
            <div class="row-fluid">
                <div class="span12">
                    <p class="copyright">
                        Copyright ©2016 QuienLohace ADSI903738. All Rights Reserved.
                    </p>

                    <p class="social_bookmarks">
                        <a href="#"><i class="social foundicon-facebook"></i> Facebook</a>
			            <a href="#"><i class="social foundicon-twitter"></i> Twitter</a>
			            <a href="#"><i class="social foundicon-pinterest"></i> Pinterest</a>
			            <a href="#"><i class="social foundicon-rss"></i> Rss</a>
                    </p>
                </div>
            </div>
            <br />
    </div>

 </div> 

<!--SCRIPTS-->
    <script src="Css/scripts/jquery.min.js" type="text/javascript"></script> 
    <script src="Css/scripts/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="Css/scripts/default.js" type="text/javascript"></script>
    <script src="Css/scripts/bootstrap/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script>
    <script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: { width: 320, visible: { min: 2, max: 6 } } });</script>
    <script type="text/javascript">$('.ttip').tooltip();</script>
    <script src="Css/scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>


</body>
</html>

