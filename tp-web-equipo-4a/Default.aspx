<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web_equipo_4a.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>¡Promo Ganá! - Ingresá el código</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCodigoVoucher" runat="server" Text="Label">¡Ingresá el código del voucher!</asp:Label>
            <asp:TextBox ID="txtCodigoVoucher" runat="server"></asp:TextBox>
            <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" />
        </div>
    </form>
</body>
</html>
