using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using Entidades;
using Negocios;
using System.Net;


namespace Systm_Web
{
    public partial class Web_Consulta : System.Web.UI.Page
    {



        Postulante_Entidad cliente_entidad = new Postulante_Entidad();

        Postulante_Neg cliente_neg = new Postulante_Neg();




        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();

            String dato = TextBox1.Text;

            dt = cliente_neg.BUSCAR(dato);

            GridView1.DataSource = dt;
            GridView1.DataBind();




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            String dato = TextBox1.Text;

            dt = cliente_neg.BUSCAR(dato);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }







        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{











        //}

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
                try
                {


            int rowIndex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;

            string filelocation = GridView1.Rows[rowIndex].Cells[8].Text;
            string FilePath = Server.MapPath("~/ARCHIVO");


            WebClient User = new WebClient();


            Byte[] FileBuffer = User.DownloadData(FilePath);


            if (FileBuffer != null)
            {

                Response.ContentType = "application/pdf";


                Response.AddHeader("Content-length", FileBuffer.Length.ToString());

                Response.BinaryWrite(FileBuffer);



            }

                }

                catch (Exception ex)
                {
                    //string error = "Error" + ex;

                }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}