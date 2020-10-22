﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionEstadoUsuario.aspx.cs" Inherits="QUIEN_LO_HACE.GestionEstado" %>

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
                                <li class="dropdown active"><a href="#">Inicio</a></li>
								<li class="dropdown"><a href="#">Registar Tarea</a></li>
                                <li class="dropdown">
                                    <a href="page.html" class="dropdown-toggle">Mi Cuenta <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="full.html">Mi Perfil</a></li>
                                            <li><a href="2-column.html">Panel de Control</a></li>
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
                <a href="PanelControlAdmon.aspx">Panel de Control</a> &nbsp;/&nbsp; <span>Administrar Estados</span>
            </div> 
        </div>

        <div class="row-fluid">
            <!--Formulario-->
            <br />

            <h2>Gestion de Estados</h2>
            <form id="form1" runat="server">

                <!--Id-->
                <div>
                    <label>Id: </label>
                    <asp:TextBox ID="txtId" runat="server" CssClass="input-xlarge"></asp:TextBox><br/>
                    <asp:Button ID="btnBuscar" runat="server" text="Buscar" CssClass="btn btn-info" OnClick="btnBuscar_Click"/><br/>
                </div>

                <!--Nombre-->
                <div>
                    <label>Estado: </label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="input-xxlarge"></asp:TextBox><br/>
                </div>

                <!--Descripción-->
                <div>
                    <label>Descripción: </label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-xxlarge" TextMode="MultiLine"></asp:TextBox><br/>
                </div>

                <!--Botones-->
                <div class="form-group">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click" />
                    <asp:Button ID="btnElimminar" runat="server" Text="Eliminar" CssClass="btn btn-warning" OnClick="btnElimminar_Click" />
                </div>

                <!--Mensaje de Error-->
                <div class="form-group">
                    <div id="msgBox" runat="server" class="alert-info"></div>
                </div>

                <br /><br />

                <!--Grid-->
                <div class="table-responsive">
                    <asp:GridView ID="dgEstado" runat="server" style="width:60%" CssClass="table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" OnPageIndexChanging="dgEstado_PageIndexChanging" OnSelectedIndexChanging="dgEstado_SelectedIndexChanging" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Estado" HeaderText="ESTADO" />
                            <asp:BoundField DataField="Descripcion" HeaderText="DESCRIPCIÓN" />
                            <asp:CommandField SelectText="Editar" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
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

</body>
</html>

