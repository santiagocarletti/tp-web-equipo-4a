<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElegirPremio.aspx.cs" Inherits="tp_web_equipo_4a.ElegirPremio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>¡Promo Ganá! - Elegir premio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</head>
<body>
    <header class="bg-dark py-3 mb-4">
        <h3 class="text-light m-0">Promo Ganá!</h3>
    </header>
    <form id="form1" runat="server">
        <h2 class="text-center mb-4">Elegí tu premio</h2>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater ID="repRepetidor" runat="server">
                <ItemTemplate>
                    <div class="col">
                <div class="card">
                    <img src="<%#((List<string>)Eval("Imagen"))[0]%>" class="card-img-top" style="height:180px; object-fit:contain;" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("Nombre")%></h5>
                        <p class="card-text"><%#Eval("Descripcion")%></p>
                    </div>
                </div>
                        <asp:Button Text="Quiero este!" cssclass="btn btn-primary" runat="server" id="btnEjemplo" CommandArgument= '<%#Eval("Id") %>' CommandName="ArticuloId" OnClick="btnEjemplo_Click"/>
            </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
