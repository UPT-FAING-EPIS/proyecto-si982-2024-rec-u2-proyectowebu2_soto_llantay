using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using Entidades;


namespace AccesoDato
{
    public class Postulante_Dato
    {


        Conexion con = new Conexion();


        public void Insert(Postulante_Entidad cliente_entidad)
        {
            //    try
            //    {

            SqlCommand cmd = new SqlCommand("insert into postulante values (@fecha_postulacion,@id_trabajo,@archivo)", con.con);

            cmd.CommandType = CommandType.Text;




            cmd.Parameters.Add("@fecha_postulacion", SqlDbType.VarChar, 50).Value = cliente_entidad.fecha;

            cmd.Parameters.Add("@id_trabajo", SqlDbType.VarChar, 100).Value = cliente_entidad.trabajo;

            cmd.Parameters.Add("@archivo", SqlDbType.VarChar,150).Value = cliente_entidad.archivo;










            con.con.Open();

            cmd.ExecuteNonQuery();

            con.con.Close();
            //}

            //catch (Exception ex)

            //{
            //    string error = "Error" + ex;

            //}


        }

      

        public DataTable BUSCAR(String Nombres)
        {



            string query = "SELECT        TRABAJO.FECHA_PUBLICACION, AREA.NOMBRE, LUGAR.NOMBRE AS LUGAR, TRABAJO.EMPRESA, TRABAJO.TITULO, TRABAJO.RESUMEN, TRABAJO.REQUIRIMIENTO, TRABAJO.OFERTA, POSTULANTE.ARCHIVO FROM            POSTULANTE INNER JOIN TRABAJO ON POSTULANTE.ID_TRABAJO = TRABAJO.ID_TRABAJO INNER JOIN   AREA ON TRABAJO.ID_AREA = AREA.ID_AREA INNER JOIN LUGAR ON TRABAJO.ID_LUGAR = LUGAR.ID_LUGAR  where  (TRABAJO.EMPRESA Like rtrim(@param)+'%')";
            SqlCommand cmd = new SqlCommand(query, con.con);
            cmd.Parameters.AddWithValue("@param", "%" + Nombres);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;





        }





    }

}