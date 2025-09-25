<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresarDatos.aspx.cs" Inherits="tp_web_equipo_4a.IngresarDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>¡Promo Ganá! - Ingresá tus datos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="lblTitulo" runat="server" Text="Ingresá tus datos"></asp:Label>            
            
            <!-- Datos persolanles -->            
            <div ID="frmDNI">
                <asp:Label ID="lblDNI" runat="server" Text="DNI"></asp:Label>
                <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
            </div>         
            <div ID="frmNombre">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div ID="frmApellido">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </div>
            <div ID="frmEmail">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <!-- Dirección -->            
            <div ID="frmDireccion">
                <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </div>
            <div ID="frmCiudad">
                <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
            </div>
            <div ID="frmCP">
                <asp:Label ID="lblCP" runat="server" Text="CP"></asp:Label>
                <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
            </div>

            <div>
                <input id="ckbTerminosCondiciones" type="checkbox" />
                <asp:Label ID="lblTerminosCondiciones" runat="server" Text="Acepto los términos y condiciones"></asp:Label>
            </div>

            <asp:Button ID="btnParticipar" runat="server" Text="¡Participá!" />

        </div>
    </form>
</body>
</html>
