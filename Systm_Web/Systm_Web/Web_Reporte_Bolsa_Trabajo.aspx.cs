using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

using System.Data.SqlClient;


using System.Data;

using Entidades;
using Negocios;

namespace Systm_Web
{
    public partial class Web_Reporte_Bolsa_Trabajo : System.Web.UI.Page
    {

        Trabajo_Entidad cliente_entidad = new Trabajo_Entidad();

        Trabajo_Neg cliente_neg = new Trabajo_Neg();


        protected void Page_Load(object sender, EventArgs e)
        {





            DataSet dset = new DataSet();

            DataTable dt = new DataTable();

            dt = cliente_neg.BUSCAR();

            Web_reporte_trabajo reportar = new Web_reporte_trabajo();

            reportar.SetDataSource(dt);

            CrystalReportViewer1.ReportSource = reportar;

















        }
    }
}