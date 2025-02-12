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
    public partial class Web_Menu : System.Web.UI.Page
    {


        Trabajo_Entidad cliente_entidad = new Trabajo_Entidad();

        Trabajo_Neg cliente_neg = new Trabajo_Neg();


        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();

            dt = cliente_neg.BUSCAR();
      

            GridView1.DataSource = dt;
            GridView1.DataBind();


               if (!IsPostBack)
            {


               cargo();


               lugar();


            }


        
         


         






        }
        private void cargo()
        {

            DataTable dt = new DataTable();
            dt = cliente_neg.LISTAR_AREA();

            cbocargo.DataSource = dt;

            this.cbocargo.DataTextField = "nombre";

            //this.cbocargo.DataValueField = "id_area";

            this.cbocargo.DataBind();

            cbocargo.Items.Insert(0, new ListItem("[Seleccionar Cargo o Area]", "0"));
        }

        private void lugar()
        {

            DataTable dt = new DataTable();
            dt = cliente_neg.LISTAR_LUGAR();

            cbolugar.DataSource = dt;

            this.cbolugar.DataTextField = "nombre";

            //this.cbolugar.DataValueField = "id_lugar";

            this.cbolugar.DataBind();

            cbolugar.Items.Insert(0, new ListItem("[Seleccionar Lugar]", "0"));
        }


        protected void Button1_Click(object sender, EventArgs e)
        {






            DataTable dt = new DataTable();

            String a = cbocargo.Text;
            String l =cbolugar.Text;

            dt = cliente_neg.BUSCAR_TRABAJO(cbocargo.Text,cbolugar.Text);

            GridView1.DataSource = cliente_neg.BUSCAR_TRABAJO(cbocargo.Text, cbolugar.Text);
            GridView1.DataBind();








        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {



            Session["n"] = GridView1.SelectedRow.Cells[1].Text;



            Session["publicacion"] = GridView1.SelectedRow.Cells[2].Text;


            Session["cargo_area"] = GridView1.SelectedRow.Cells[3].Text;

            Session["lugar"] = GridView1.SelectedRow.Cells[4].Text;

            Session["empresa"] = GridView1.SelectedRow.Cells[5].Text;


            Session["titulo"] = GridView1.SelectedRow.Cells[6].Text;



            Session["resumen"] = GridView1.SelectedRow.Cells[7].Text;




            Session["requirimiento"] = GridView1.SelectedRow.Cells[8].Text;


            Session["oferta"] = GridView1.SelectedRow.Cells[9].Text;










            Response.Redirect("Web_Postular.aspx");





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Web_Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Web_Usuarios.aspx");
        }
       
    }
}