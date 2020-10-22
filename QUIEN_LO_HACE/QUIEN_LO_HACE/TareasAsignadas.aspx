<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TareasAsignadas.aspx.cs" Inherits="QUIEN_LO_HACE.TareasAsignadas" %>

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

        <!--Cargar imagen con el file upload-->
    <script type="text/javascript">
        function showimagepreview(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#foto1').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
    </script>
    
    <!--Validar imagen-->

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
                <a href="PanelControlCliente.aspx">Panel de Control</a> &nbsp;/&nbsp;<span>Tareas Asignadas</span>
            </div> 
        </div>

    <div class="row-fluid">
        <form id="form1" runat="server">
                <div class="table-responsive">
                    <asp:GridView ID="dgRol" runat="server" style="width:60%" CssClass="table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Rol" HeaderText="ROL" />
                            <asp:BoundField DataField="Descripcion" HeaderText="DESCRIPCIÓN" />
                            <asp:CommandField SelectText="Editar" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
    <!--Descripción quien lo hace-->
        <div class="span12">                    
            <br />

            <h2>Nueva Tarea</h2>
            

                <!--Título-->
                <div class="span12">
                    <label>Título: </label>
                    <asp:TextBox ID="txtId" runat="server" CssClass="input-xxlarge"></asp:TextBox><br/>
                </div>

                <!--Area-->
                <div class="span12">
                    <label>Área: </label>
                    <asp:DropDownList ID="cbxArea" runat="server" CssClass="form-control"></asp:DropDownList><br/>
                </div>

                <!--Subarea-->
                <div class="span12">
                    <label>Subárea: </label>
                    <asp:DropDownList ID="cbxSubarea" runat="server" CssClass="form-control"></asp:DropDownList><br/>
                </div>

                <!--Descripción-->
                <div class="span12">
                    <label>Descripción: </label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-xxlarge" TextMode="MultiLine"></asp:TextBox><br/>
                </div>

                <!--Monto a pagar-->
                <div class="span12">
                    <label>Valor a pagar: </label>
                    <asp:TextBox ID="txtValorPagado" runat="server" CssClass="input-xxlarge"></asp:TextBox><br/>
                </div>

                <!--Fecha Vencimiento-->
                <div class="span12">
                    <label>Fecha de vencimiento: </label>
                    <asp:TextBox ID="txtFechaVencimiento" runat="server" CssClass="input-xlarge"></asp:TextBox><br/><br />
                </div>

                <!--Fotos-->
                <div class="span12">
                     <div class="span3">
                        <img id="foto1" src="http://placehold.it/140x140" class="img-polaroid" alt="" />
                        <br/>   
                    </div>
                    <div class="span3">
                        <img id="foto2" src="http://placehold.it/140x140" class="img-polaroid" alt="" />
                        <br/>   
                    </div>  
                    <div class="span3">
                        <img id="foto3" src="http://placehold.it/140x140" class="img-polaroid" alt="" />
                        <br/> 
                    </div>  
                    <div class="span3">
                        <img id="foto4" src="http://placehold.it/140x140" class="img-polaroid" alt="" />
                        <br/>   
                    </div>                
                </div>
                
                <!--Botones-->
                <div class="form-group span12">
                    <br/>
                    <asp:Button ID="btnGuardar" runat="server" Text="Aceptar" CssClass="btn btn-success"  />
                    <asp:Button ID="btnCancelar" runat="server" Text="Rechazar" CssClass="btn btn-warning" />
                    <br/>
                </div>

                <!--Mensaje de Error-->
                <div class="form-group span12">
                    <div id="msgBox" runat="server" class="alert-info"></div>
                </div>

            
        </div>
     				
        </form>                             
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
