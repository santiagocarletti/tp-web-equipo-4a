using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp_web_equipo_4a
{
    public partial class IngresarDatos : System.Web.UI.Page
    {
        public bool dni { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["VoucherActivo"] == null)
                {
                    Response.Redirect("IngresarVoucher.aspx", false);
                }
            }
            dni = false;
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            Clientes cliente = clienteNegocio.ChequearDNI(Convert.ToInt32(EliminarPuntos(txtDNI.Text)));

            if (cliente == null)
            {
                cliente = new Clientes();
                cliente.Documento = EliminarPuntos(txtDNI.Text);
                cliente.Nombre = txtNombre.Text;
                cliente.Apellido = txtApellido.Text;
                cliente.Email = txtEmail.Text;
                cliente.Direccion = txtDireccion.Text;
                cliente.Ciudad = txtCiudad.Text;
                cliente.CP = int.Parse(txtCp.Text);
                cliente.Id = clienteNegocio.agregar(cliente);
            }
            //LA SIGUIENTE LINEA DABA UN BOOL INCORRECTO
            //MANEJADO EN ElegirPremio.aspx.cs ---> btnEjemplo_Click E IngresarDatos.aspx.cs ---> btnParticipar_Click
            if (Session["VoucherActivo"] == null)
            {
                Session.Add("error", "Hubo un Error, intente nuevamente");
                Response.Redirect("Error.aspx", false);
                return;
            }

            Vouchers voucher = (Vouchers)Session["VoucherActivo"];
            voucher.IdCliente = cliente.Id;
            voucher.FechaCanje = DateTime.Now;
            // Valor por defecto: 1
            voucher.IdArticulo = int.Parse(Request.QueryString["idArticulo"]?.ToString() ?? "1");

            VoucherNegocio voucherNegocio = new VoucherNegocio();
            try
            {
                voucherNegocio.canjear(voucher);
                Response.Redirect("CanjeoExitoso.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }

            EmailService emailService = new EmailService();
            emailService.armarCorreo(txtEmail.Text, "Canje exitoso - ¡Gracias por tu participacion!", "<h1 style='text-align:center;'> ¡Gracias por realizar el canje del voucher! </h1>" +
            "<p> La elección del producto es ideal para vos. Esperamos encontrarte nuevamente. </p>");

            try
            {
                emailService.enviarEmail();

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
            }

        }

        protected void btnBuscarDni_Click(object sender, EventArgs e)
        {
            if (txtDNI.Enabled == false)
            {
                Response.Redirect("IngresarDatos.aspx", false);
                return;
            }

            ClienteNegocio clienteNegocio = new ClienteNegocio();
            Clientes cliente = clienteNegocio.ChequearDNI(Convert.ToInt32(EliminarPuntos(txtDNI.Text)));

            if (cliente != null)
            {
                txtDNI.Text = cliente.Documento;
                txtNombre.Text = cliente.Nombre;
                txtApellido.Text = cliente.Apellido;
                txtEmail.Text = cliente.Email;
                txtDireccion.Text = cliente.Direccion;
                txtCiudad.Text = cliente.Ciudad;
                txtCp.Text = cliente.CP.ToString();

                txtNombre.Enabled = false;
                txtApellido.Enabled = false;
                txtEmail.Enabled = false;
                txtDireccion.Enabled = false;
                txtCiudad.Enabled = false;
                txtCp.Enabled = false;
                dni = true;
            }

            btnBuscarDNI.Text = "Cambiar";
            dni = true;
            txtDNI.Enabled = false;
        }

        private string EliminarPuntos(string dni)
        {
            return dni.Replace(".", "");
        }
    }
}