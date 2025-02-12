<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Usuarios.aspx.cs" Inherits="Systm_Web.Web_Usuarios" %>

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
        .auto-style10 {
            background-color: #000099;
            font-size: medium;
            font-family: Arial;
        }
        .auto-style13 {
            width: 567px;
            background-color: #003399;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            width: 88px;
        }
        .auto-style21 {
            width: 137px;
            height: 126px;
            margin-left: 9px;
        }
        .auto-style23 {
            width: 131px;
            height: 124px;
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
        .auto-style31 {
            width: 264px;
        }
        .auto-style33 {
            width: 378px;
            background-color: #003399;
        }
        .auto-style35 {
            width: 567px;
        }
        .auto-style37 {
            background-color: #000099;
            font-size: medium;
            font-family: Arial;
            width: 59px;
        }
        .auto-style38 {
            width: 59px;
        }
        .auto-style40 {
            width: 259px
        }
        .auto-style41 {
            width: 16px;
        }
        .auto-style43 {
            width: 246px
        }
        .auto-style44 {
            width: 79px;
        }
        .auto-style45 {
            width: 259px;
            height: 20px;
        }
        .auto-style46 {
            width: 79px;
            height: 20px;
        }
        .auto-style47 {
            height: 20px;
        }
        .auto-style48 {
            width: 620px;
        }
        .auto-style49 {
            height: 20px;
            width: 620px;
        }
        .auto-style50 {
            width: 378px
        }
        .auto-style51 {
            width: 231px
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
                <td class="auto-style50">
                    <asp:Label ID="Label4" runat="server" BackColor="White" CssClass="auto-style10" Font-Bold="True" Text="Bolsa de Trabajo"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:Label ID="Label3" runat="server" BackColor="White" CssClass="auto-style10" style="font-weight: 700" Text="Empresa para Registrase "></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:Button ID="Button3" runat="server"  class="btn btn-info" Text="Inicio" Width="87px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Login" Width="84px" OnClick="Button2_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
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
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style19">
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">
                    <asp:Label ID="Label5" runat="server" class="form-control" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style48">



                    <asp:TextBox ID="txtusuario" runat="server" class="form-control" Width="593px"></asp:TextBox>








                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">
                    <asp:Label ID="Label6" runat="server" class="form-control" Text="Contraseña"></asp:Label>
                </td>
                <td class="auto-style48">



                    <asp:TextBox ID="txtcontraseña" runat="server" class="form-control" Width="592px"></asp:TextBox>








                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">
                    <asp:Label ID="Label7" runat="server" class="form-control" Text="Tipo"></asp:Label>
                </td>
                <td class="auto-style48">
                    <asp:DropDownList ID="txtcargo" class="form-control" runat="server" Width="591px">
                        <asp:ListItem>Cliente</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46"></td>
                <td class="auto-style49"></td>
                <td class="auto-style47"></td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">
                    &nbsp;</td>
                <td class="auto-style48">
                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Height="38px" Text="Registrar" Width="157px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style1">
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td>
                <img alt="" class="auto-style3" src="ICONOS/c1.jpg" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
