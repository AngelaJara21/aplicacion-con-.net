<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calcular_Imc.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 706px;
        }
        .auto-style3 {
            
            width: 629px;
            margin-right: 0px;
        }
        .auto-style4 {
            
            width: 44%;
        }
        .auto-style5 {
            width: 338px;
        }
        .auto-style6 {
            width: 399px;
        }
        .auto-style7 {
            width: 44%;
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style9 {
            width: 644px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 762px;
        }
        .auto-style15 {
            width: 912px;
        }
        .auto-style16 {
            width: 560px;
        }
        .auto-style13 {
            margin-left: 3px;
        }
        .auto-style18 {
            width: 1640px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
        </div>
        <table class="auto-style4">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Calculadora indice masa corporal" Font-Bold="True"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="L_peso" runat="server"  Text="Peso"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtPeso" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="L_altura" runat="server" Text="Altura"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtAltura" runat="server" CssClass="auto-style11"></asp:TextBox>
                </td>
                
            </tr>
        </table>
    <table class="auto-style7">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Resultados" Font-Bold="True"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="I.M.C"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtImc" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="L_OMS" runat="server" Text="Clasificacion OMS"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtOMS" runat="server"></asp:TextBox>
            </td>
            
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label4" runat="server" Text="Riesgo enfermedad vascular"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtRiesgo" runat="server" CssClass="auto-style13"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label5" runat="server" Text="Peso a"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtPesoa" runat="server" CssClass="auto-style13" Width="282px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style16">
                <asp:Button ID="B_consultar" runat="server" Font-Bold="True" OnClick="B_consultar_Click" Text="Consultar" />
            </td>
            <td class="auto-style15">
                <asp:Button ID="B_restablecer" runat="server" Font-Bold="True" Text="Restablecer" OnClick="B_restablecer_Click" />
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="L_mensajes" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="Zona de mensajes"></asp:Label>
            </td>
            
        </tr>
       
    </table>
    </form>
    </body>
</html>
