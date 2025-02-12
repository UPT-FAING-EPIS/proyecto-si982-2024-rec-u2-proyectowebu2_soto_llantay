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
    public partial class Web_Postular : System.Web.UI.Page
    {

        Postulante_Entidad cliente_entidad = new Postulante_Entidad();

        Postulante_Neg cliente_neg = new Postulante_Neg();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {




                txtcod.Text = (String)Session["n"];

                txtfecha.Text = (String)Session["publicacion"];

                txtcargo.Text = (String)Session["cargo_area"];

                txtlugar.Text = (String)Session["lugar"];

                txtempresa.Text = (String)Session["empresa"];

                txttitulo.Text = (String)Session["titulo"];
                txtresumen.Text = (String)Session["resumen"];
                txtrequirimiento.Text = (String)Session["requirimiento"];
                txtoferta.Text = (String)Session["oferta"];

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {





            if (txttitulo.Text == "" || txtcargo.Text == "" || txtempresa.Text == "" || txtlugar.Text == "")
            {

                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese los Datos Correctamente')</script>");
            }

            else
            {

                cliente_entidad.fecha = txtfecha.Text;

                cliente_entidad.trabajo = txtcod.Text;

                cliente_entidad.archivo = FileUpload1.FileName;

     

                cliente_neg.insert(cliente_entidad);

                this.Response.Write("<script language='JavaScript'>window.alert('Asido Guardado los Datos Correctamente')</script>");




                txttitulo.Text = "";
                txtempresa.Text = "";
                txtcod.Text = "";
                txtcargo.Text = "";
                txtlugar.Text = "";
                txtresumen.Text = "";
                txtrequirimiento.Text = "";
                txtoferta.Text = "";

                txtfecha.Text = "";

            }














        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Web_Menu.aspx");
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
}