﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelControlExperto.aspx.cs" Inherits="QUIEN_LO_HACE.PanelControlExperto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
<body>

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
                                <li class="dropdown active"><a href="PanelControlCliente.aspx">Inicio</a></li>
								<li class="dropdown"><a href="PublicarTareas.aspx">Publicar Tarea</a></li>
                                <li class="dropdown"><a href="#">Trabaja con nosotros</a></li>
                                <li class="dropdown">
                                    <a href="page.html" class="dropdown-toggle">Mi Cuenta <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="full.html">Mi Perfil</a></li>
                                            <li><a href="AltayContrasena.aspx">Configuración</a></li>
                                            <li><a href="3-column.html">Cerrar Sesión</a></li>
							            </ul></li>
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

    <div id="contentOuterSeparator"></div>

    <!--Mapa de sitio lineal-->
    <div class="container">
        <div class="divPanel page-content">
            <div class="breadcrumbs">
                <span>Panel de Control</span>
            </div> 
        </div>

        <div class="row-fluid">
                <div class="span12">

                    <h1>Panel de Control</h1>

                    <div id="gridArea">
                        
                        <ul id="tiles">
                            <li>
                                <a href="PublicarTareas.aspx"><img src="img/publicar.jpg" alt="Sticky" title="Sticky"/></a>
                                <h4><a href="PublicarTareas.aspx">Publicar nueva tarea</a></h4>                            
                            </li>
                            <li>
                                <a href="#"><img src="img/pendientes.jpg" alt="Sticky" title="Sticky"/></a>
                                <h4><a href="#">Tareas pendientes</a></h4>                            
                            </li> 
                            <li>
                                <a href="#"><img src="img/historial.jpg" alt="Sticky" title="Sticky"/></a>
                                <h4><a href="#">Historial de Tareas Publicadas</a></h4>                            
                            </li>    
                        </ul>
                    </div>
                </div>
            </div>
     </div>

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
    
    <script src="Css/scripts/wookmark/js/jquery.wookmark.js" type="text/javascript"></script>
    <script type="text/javascript">$(window).load(function () { var options = { autoResize: true, container: $('#gridArea'), offset: 10 }; var handler = $('#tiles li'); handler.wookmark(options); $('#tiles li').each(function () { var imgm = 0; if ($(this).find('img').length > 0) imgm = parseInt($(this).find('img').not('p img').css('margin-bottom')); var newHeight = $(this).find('img').height() + imgm + $(this).find('div').height() + $(this).find('h4').height() + $(this).find('p').not('blockquote p').height() + $(this).find('iframe').height() + $(this).find('blockquote').height() + 5; if ($(this).find('iframe').height()) newHeight = newHeight + 15; $(this).css('height', newHeight + 'px'); }); handler.wookmark(options); handler.wookmark(options); });</script>
    <script src="Css/scripts/prettyphoto/js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script type="text/javascript">    $("a[rel^='prettyPhoto']").prettyPhoto({ social_tools: false }); $("a[rel^='prettyPhoto'] img").hover(function () { $(this).animate({ opacity: 0.7 }, 300) }, function () { $(this).animate({ opacity: 1 }, 300) });</script>
</body>
</html>
