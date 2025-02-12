<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Menu.aspx.cs" Inherits="Systm_Web.Web_Menu" %>

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
<head runat="server">
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
            margin-left: 47px;
        }
        .auto-style5 {
            width: 195px;
        }
        .auto-style9 {
        }
        .auto-style10 {
            background-color: #000099;
            font-size: medium;
            font-family: Arial;
        }
        .auto-style13 {
            width: 616px;
            background-color: #003399;
            height: 22px;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            width: 103px;
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
        .auto-style25 {
            width: 55px;
        }
        .auto-style26 {
            width: 217px;
        }
        .auto-style27 {
            width: 289px
        }
        .auto-style29 {
            width: 166px;
            background-color: #003399;
            height: 22px;
        }
        .auto-style30 {
            width: 166px
        }
        .auto-style31 {
            width: 264px;
        }
        .auto-style33 {
            width: 267px;
            background-color: #003399;
            height: 22px;
        }
        .auto-style34 {
            width: 267px
        }
        .auto-style35 {
            width: 616px;
        }
        .auto-style37 {
            background-color: #000099;
            font-size: medium;
            font-family: Arial;
            width: 59px;
            height: 22px;
        }
        .auto-style38 {
            width: 59px;
        }
        .auto-style39 {
            background-color: #000099;
            font-size: medium;
            font-family: Arial;
            height: 22px;
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
                <td class="auto-style34">
                    <asp:Label ID="Label4" runat="server" BackColor="White" CssClass="auto-style10" Font-Bold="True" Text="Bolsa de Trabajo"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:Label ID="Label3" runat="server" BackColor="White" CssClass="auto-style10" style="font-weight: 700" Text="Te ayudamos a encontrar el empleo ideal para ti al instante"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:Button ID="Button3" runat="server"  class="btn btn-info" Text="Registrate" Width="90px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Login" Width="83px" OnClick="Button2_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style33"></td>
                <td class="auto-style13"></td>
                <td class="auto-style37"></td>
                <td class="auto-style39"></td>
                <td class="auto-style39"></td>
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
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" BackColor="White" CssClass="auto-style10" ForeColor="Black" Text="Cargo o Area"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="cbocargo" runat="server" class="form-control" Height="35px" Width="238px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" BackColor="White" CssClass="auto-style10" Text="Lugar"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:DropDownList ID="cbolugar" runat="server" class="form-control"  Height="41px" Width="254px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Height="38px" Text="Buscar Empleado" Width="157px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
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
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td>



       <asp:GridView ID="GridView1" runat="server" CellPadding="3" Width="1161px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CssClass="auto-style9" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="Vertical">

                    
                                  


                    
                                  


                    
                                  


                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />

                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

                                <RowStyle ForeColor="Black" BackColor="#EEEEEE" />

                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />


           
                                <AlternatingRowStyle BackColor="#DCDCDC" />


           
                                <Columns>

                                    
                                                
                                                  
                                          

                                    <asp:CommandField HeaderText="Postular" ShowSelectButton="True" ButtonType="Button" DeleteText="Detalle" SelectText="Ver Detalle" >
                                    <ControlStyle BackColor="#00CCFF" BorderColor="#00CCFF" BorderStyle="Solid" />
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>


          
                            </asp:GridView>








                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
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
