<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_web_equipo_4a.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>¡Promo Ganá! - Ingresá el código</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</head>
<body>
    <div class="mb-3">

        <form id="form1" runat="server">
            <div class="mb-3">
                <asp:Label ID="lblCodigoVoucher" runat="server" Text="Label" CssClass="form-label">¡Ingresá el código del voucher!</asp:Label>
                <asp:TextBox ID="txtCodigoVoucher" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lblTextoCodigoVoucher" runat="server" Text="Label" CssClass="form-text">Completá el campo con el código alfanumérico</asp:Label>
             </div>
            <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente"  CssClass="btn btn-primary mb-3" />
        </form>

    </div>

</body>
</html>
