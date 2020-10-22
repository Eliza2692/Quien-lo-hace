<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltayContrasena.aspx.cs" Inherits="QUIEN_LO_HACE.AltayContraseña" %>

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
								<li class="dropdown"><a href="#">Publicar Tarea</a></li>
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
                <span>Configuración</span>
            </div> 
        </div>

        <div class="row-fluid">
            <!--Formulario-->
            <br />

            <h2>Configuración</h2>
            <form id="form1" runat="server">
    		<hr>	
            <div class="accordion" id="accordion2">
                <!--Cambiar contraseña-->
                <div class="accordion-group">
                    <div class="accordion-heading alert alert-info">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                            Cambiar Contraseña
                        </a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse in lead">
                        <div class="accordion-inner">
                        <!--Contraseña Actual-->
                            <div>
                                <label>Contraseña actual: </label>
                                <asp:TextBox ID="TextBox1" runat="server" class="input-xlarge" textMode="Password"></asp:TextBox><br/>
                            </div>
                        <!--Contraseña-->
                            <div>
                                <label>Nueva Contraseña: </label>
                                <asp:TextBox ID="txtContraseña" runat="server" class="input-xlarge" textMode="Password"></asp:TextBox><br/>
                            </div>
                        <!--Contraseña-->
                            <div>
                                <label>Confirma tu nueva contraseña: </label>
                                <asp:TextBox ID="txtValContraseña" runat="server" class="input-xlarge" textMode="Password"></asp:TextBox><br/>
                                <asp:Button ID="btnCambiarCotrasena" runat="server" text="Cambiar Contraseña" CssClass="btn btn-primary btn-xlarge"/><br/>
                            </div>
                        </div>
                        </div>
                    </div>

                <!--Eliminar Cuenta-->
                <div class="accordion-group">
                    <div class="accordion-heading alert alert-info">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                            Desactivar Cuenta
                        </a>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse collapse lead">
                        <div class="accordion-inner">
                            <br/><asp:Button ID="btnEliminarCuenta" runat="server" text="Desactivar mi cuenta" CssClass="btn btn-primary btn-xlarge"/><br/>
                        </div>
                        </div>
                    </div>

                </div>
            </form>	
        </div>

    <!--PIE DE PAGINA-->
    <div id="footerOuterSeparator"></div>

    <div id="divFooter" class="footerArea">
 
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
    <script src="Css/scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script>
    

</body>
</html>
