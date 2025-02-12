using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using Entidades;
using Negocios;

namespace Systm_Web
{
    public partial class Web_Bolsa : System.Web.UI.Page
    {

        Trabajo_Entidad cliente_entidad = new Trabajo_Entidad();

        Trabajo_Neg cliente_neg = new Trabajo_Neg();



        protected void Page_Load(object sender, EventArgs e)
        {
            txtfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");

           


            if (!IsPostBack)
            {


                area();

                lugar();






            }

        }

        private void area()
        {

            DataTable dt = new DataTable();
            dt = cliente_neg.LISTAR_AREA();

            cbocargo.DataSource = dt;

            this.cbocargo.DataTextField = "nombre";

            this.cbocargo.DataValueField = "id_area";

            this.cbocargo.DataBind();

            cbocargo.Items.Insert(0, new ListItem("[Seleccionar Cargo o Area]", "0"));
        }

        private void lugar()
        {

            DataTable dt = new DataTable();
            dt = cliente_neg.LISTAR_LUGAR();

            cbolugar.DataSource = dt;

            this.cbolugar.DataTextField = "Nombre";

            this.cbolugar.DataValueField = "id_lugar";

            this.cbolugar.DataBind();

            cbolugar.Items.Insert(0, new ListItem("[Seleccionar Lugar]", "0"));
        }
        private void borar()
        {



            txttitulo.Text = "";
            txtempresa.Text = "";

            txtresumen.Text = "";
            txtrequirimiento.Text = "";
            txtoferta.Text = "";



          

           // cbocargo.Items.Insert(0, new ListItem("[Seleccionar Cargo o Area]", "0"));

            // cbolugar.Items.Insert(0, new ListItem("[Seleccionar Lugar]", "0"));


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txttitulo.Text == "" || cbocargo.Text == "" || txtempresa.Text == "" || cbolugar.Text == "")
            {

                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese los Datos Correctamente')</script>");
            }

            else
            {

                cliente_entidad.fecha = txtfecha.Text;

              


                cliente_entidad.area= cbocargo.SelectedValue.ToString();

                cliente_entidad.lugar = cbolugar.SelectedValue.ToString();

                cliente_entidad.empresa = txtempresa.Text;

                cliente_entidad.titulo = txttitulo.Text;

                cliente_entidad.resumen = txtresumen.Text;


               cliente_entidad.requirimiento = txtrequirimiento.Text;



                cliente_entidad.costo = decimal.Parse(txtoferta.Text);


                cliente_entidad.usuario = txtusuario.Text;









                cliente_neg.insert(cliente_entidad);

                this.Response.Write("<script language='JavaScript'>window.alert('Asido Guardado los Datos Correctamente')</script>");

                borar();




            }
        }
    }
}