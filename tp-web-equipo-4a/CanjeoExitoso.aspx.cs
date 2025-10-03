using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp_web_equipo_4a
{
    public partial class CanjeoExitoso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["VoucherActivo"] == null)
                {
                    Response.Redirect("Default.aspx", false);
                }
                else
                {
                    Vouchers voucher = (Vouchers)Session["VoucherActivo"];
                    lblMensaje.Text = "El canjeo del voucher " + voucher.CodigoVoucher + " fue exitoso. Recibirás un email de confirmación.";
                    Session.Clear();
                }
            }
        }
        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}