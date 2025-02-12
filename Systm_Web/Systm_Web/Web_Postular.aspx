<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Postular.aspx.cs" Inherits="Systm_Web.Web_Postular" %>

<!DOCTYPE html>




  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">

  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">

  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <link rel="stylesheet" href="bower_components/morris.js/morris.css">

  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">

  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">

  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">








<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-color: #003399;
        }
        .auto-style3 {
            width: 793px;
            height: 409px;
        }
        .auto-style5 {
            width: 195px;
        }
        .auto-style10 {
            background-color: #000099;
            font-size: medium;
            font-family: Arial;
        }
        .auto-style13 {
            width: 222px;
            background-color: #003399;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style21 {
            width: 137px;
            height: 126px;
        }
        .auto-style23 {
            width: 131px;
            height: 124px;
        }
        .auto-style25 {
            width: 163px;
        }
        .auto-style27 {
            width: 289px
        }
        .auto-style29 {
            width: 166px;
            background-color: #003399;
        }
        .auto-style30 {
            width: 166px
        }
        .auto-style32 {
            width: 346px;
        }
        .auto-style33 {
            width: 346px;
            height: 22px;
        }
        .auto-style34 {
            width: 163px;
            height: 22px;
        }
        .auto-style35 {
            height: 22px;
        }
        .auto-style36 {
            width: 222px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br class="auto-style10" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style36">
                    <asp:Label ID="Label4" runat="server" BackColor="White" CssClass="auto-style10" Font-Bold="True" Text="Bolsa de Trabajo"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" BackColor="White" CssClass="auto-style10" style="font-weight: 700" Text="Te ayudamos a encontrar el empleo ideal para ti al instante"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Inicio" Width="161px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style19">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td>
                    <img alt="" class="auto-style21" src="ICONOS/1qa.jpg" /></td>
                <td>
                    <img alt="" class="auto-style23" src="ICONOS/121.jpg" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br class="auto-style10" />
    
    </div>
        <table class="auto-style19">
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table class="auto-style19">
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="txtcod" runat="server" BackColor="White" ForeColor="White" Text="1"></asp:Label>
                </td>
                <td>



                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label5" runat="server" class="form-control" Text="Fecha Publicacion"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfecha" runat="server" class="form-control" Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style34">
                    <asp:Label ID="Label6" runat="server"  class="form-control" Text="Cargo o Area"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtcargo" runat="server" class="form-control" Width="367px"></asp:TextBox>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label7" runat="server" class="form-control" Text="Lugar"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlugar" runat="server" class="form-control"  Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label8" runat="server"   class="form-control" Text="Empresa"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtempresa" runat="server" class="form-control"  Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label9" runat="server" class="form-control" Text="Titulo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttitulo" runat="server" class="form-control" Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label13" runat="server"   class="form-control" Text="Resumen"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtresumen"  class="form-control" runat="server" Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label10" runat="server"  class="form-control" Text="Requirimiento"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtrequirimiento" runat="server" class="form-control" Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label11" runat="server" class="form-control" Text="Oferta"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtoferta" runat="server" class="form-control" Width="367px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label12" runat="server" class="form-control" Text="Subir Curriculum"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"  Width="373px" BackColor="#FF9933" ForeColor="#FF6600" />
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server"  class="btn btn-success" Text="Postular" Width="245px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <br />
                <br />
            </td>
            <td>
                <img alt="" class="auto-style3" src="ICONOS/c1.jpg" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
