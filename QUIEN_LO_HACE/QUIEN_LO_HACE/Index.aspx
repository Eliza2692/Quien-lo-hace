<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QUIEN_LO_HACE.Index" %>

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
    <div class="container">
    <div class="divPanel page-content">
    <div class="row-fluid">
			
    <!--Descripción quien lo hace-->
        <div class="span6">                    
            <h3>¿Quién lo Hace?</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and <a href="#">typesetting industry</a>.</p>
			<p> Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.</p>
           
            <img src="img/limpieza.jpg" class="img-polaroid" style="margin:12px 0px;">       
		   
			<h3>Disfruta los beneficios</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and <a href="#">typesetting industry</a>.</p>
    		<p> Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.</p>                 	
        </div>
     				
   	<!--Registro-->
        <div class="span6" id="divMain">

            <form id="form1" runat="server">
            <h1>Regístrate</h1>
    		<hr>	
            <div class="accordion" id="accordion2">
            <!--Registro-->
                <!--Crear cuenta-->
                <div class="accordion-group">
                    <div class="accordion-heading alert alert-info">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                            Crea tu Cuenta
                        </a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse in">
                        <div class="accordion-inner">
                        <!--Usuario-->
                            <div>
                                <label>Usuario: </label>
                                <asp:TextBox ID="txtUsuario" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--Contraseña-->
                            <div>
                                <label>Contraseña: </label>
                                <asp:TextBox ID="txtContraseña" runat="server" class="input-xlarge" textMode="Password"></asp:TextBox><br/>
                            </div>
                        <!--Contraseña-->
                            <div>
                                <label>Confirma tu contraseña: </label>
                                <asp:TextBox ID="txtValContraseña" runat="server" class="input-xlarge" textMode="Password"></asp:TextBox><br/>
                                <asp:Button ID="btnValidar" runat="server" text="Validar Usuario" CssClass="btn btn-info"/><br/>
                            </div>
                        </div>
                        </div>
                    </div>

                <!--Datos personales-->
                <div class="accordion-group">
                    <div class="accordion-heading alert alert-info">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                            Datos Personales
                        </a>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse collapse">
                        <div class="accordion-inner">
                        <!--Nombre-->
                            <div>
                                <label>Nombres: </label>
                                <asp:TextBox ID="txtNombre" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--Apellidos-->
                            <div>
                                <label>Apellidos: </label>
                                <asp:TextBox ID="txtApellido" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--Direccion-->
                            <div>
                                <label>Dirección: </label>
                                <asp:TextBox ID="txtDireccion" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--Telefono-->
                            <div>
                                <label>Télefono: </label>
                                <asp:TextBox ID="txtTelefono" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--Celular-->
                            <div>
                                <label>Celular: </label>
                                <asp:TextBox ID="txtCelular" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--email-->
                            <div>
                                <label>Correo electrónico: </label>
                                <asp:TextBox ID="txtEmail" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        <!--Confirmacion email-->
                            <div>
                                <label>Confirma tu Correo electrónico: </label>
                                <asp:TextBox ID="txtConfEmail" runat="server" class="input-xlarge"></asp:TextBox><br/>
                            </div>
                        </div>
                        </div>
                    </div>

                </div>
                <!--Resgistrarme-->
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrarme" CssClass="btn btn-success" />
            </form>					
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
    <script type="text/javascript">$('.ttip').tooltip();</script>
    <script src="Css/scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="Css/scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script>
    

</body>
</html>
