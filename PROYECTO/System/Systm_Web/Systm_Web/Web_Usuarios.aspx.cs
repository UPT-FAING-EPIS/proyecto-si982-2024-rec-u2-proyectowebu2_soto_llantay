using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocios;

namespace Systm_Web
{
    public partial class Web_Usuarios : System.Web.UI.Page
    {


        Usuario_Entidad cliente_entidad = new Usuario_Entidad();

        Usuario_Neg cliente_neg = new Usuario_Neg();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Web_Login.aspx");
        }
        private void borar()
        {

            txtusuario.Text = "";

            //txtcargo.Text = "";



            txtcontraseña.Text = "";



        }
        protected void Button1_Click(object sender, EventArgs e)
        {
             if (txtusuario.Text == "" || txtcontraseña.Text == "" || txtcargo.Text == "")
            {

                this.Response.Write("<script language='JavaScript'>window.alert('Ingrese los Datos Correctamente')</script>");
            }

            else
            {

                cliente_entidad.usuario = txtusuario.Text;

                cliente_entidad.contraseña = txtcontraseña.Text;





                cliente_entidad.cargo = txtcargo.Text;



                cliente_neg.insert(cliente_entidad);

                this.Response.Write("<script language='JavaScript'>window.alert('Asido Guardado los Datos Correctamente')</script>");

                borar();

        }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Web_Menu.aspx");
        }
        
    }
}