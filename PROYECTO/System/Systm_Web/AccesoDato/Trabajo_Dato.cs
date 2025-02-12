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
    public class Trabajo_Dato
    {


        Conexion con = new Conexion();


        public void Insert(Trabajo_Entidad cliente_entidad)
        {
            //    try
            //    {

            SqlCommand cmd = new SqlCommand("insert into trabajo values (@fecha_publicacion,@id_area,@id_lugar,@empresa,@titulo,@resumen,@requirimiento,@oferta,@cod_usuario)", con.con);

            cmd.CommandType = CommandType.Text;




            cmd.Parameters.Add("@fecha_publicacion", SqlDbType.VarChar, 50).Value = cliente_entidad.fecha;

            cmd.Parameters.Add("@id_area", SqlDbType.VarChar, 50).Value = cliente_entidad.area;

            cmd.Parameters.Add("@id_lugar", SqlDbType.VarChar, 50).Value = cliente_entidad.lugar;

            cmd.Parameters.Add("@empresa", SqlDbType.VarChar, 70).Value = cliente_entidad.empresa;


            cmd.Parameters.Add("@titulo", SqlDbType.VarChar, 100).Value = cliente_entidad.titulo;

            cmd.Parameters.Add("@resumen", SqlDbType.VarChar, 400).Value = cliente_entidad.resumen;

            cmd.Parameters.Add("@requirimiento", SqlDbType.VarChar,200).Value = cliente_entidad.requirimiento;


            cmd.Parameters.Add("@oferta", SqlDbType.Decimal).Value = cliente_entidad.costo;


            cmd.Parameters.Add("@cod_usuario", SqlDbType.Decimal).Value = cliente_entidad.usuario;





            con.con.Open();

            cmd.ExecuteNonQuery();

            con.con.Close();
            //}

            //catch (Exception ex)

            //{
            //    string error = "Error" + ex;

            //}


        }


        public DataTable LISTADO_AREA()
        {


            SqlDataAdapter da = new SqlDataAdapter("select id_area,nombre from area ", con.con);
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;



        }
        public DataTable LISTADO_LUGAR()
        {


            SqlDataAdapter da = new SqlDataAdapter("select id_lugar,nombre from lugar ", con.con);
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;



        }
        public DataTable BUSCAR()
        {



            string query = "SELECT        TRABAJO.ID_TRABAJO AS N, TRABAJO.FECHA_PUBLICACION AS PUBLICACION, AREA.NOMBRE  AS DETALLE, LUGAR.NOMBRE AS LUGAR, TRABAJO.EMPRESA, TRABAJO.TITULO, TRABAJO.RESUMEN, TRABAJO.REQUIRIMIENTO, TRABAJO.OFERTA FROM            AREA INNER JOIN TRABAJO ON AREA.ID_AREA = TRABAJO.ID_AREA INNER JOIN  LUGAR ON TRABAJO.ID_LUGAR = LUGAR.ID_LUGAR";
            SqlCommand cmd = new SqlCommand(query, con.con);
     
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;





        }


        public DataTable BUSCAR_TRABAJO(String area,String lugar)
        {



            string query = "SELECT        TRABAJO.ID_TRABAJO AS N, TRABAJO.FECHA_PUBLICACION as PUBLICACION, AREA.NOMBRE  AS CARGO_AREA, LUGAR.NOMBRE AS LUGAR, TRABAJO.EMPRESA, TRABAJO.TITULO, TRABAJO.RESUMEN, TRABAJO.REQUIRIMIENTO, TRABAJO.OFERTA FROM    TRABAJO INNER JOIN AREA  ON AREA.ID_AREA = TRABAJO.ID_AREA INNER JOIN  LUGAR ON TRABAJO.ID_LUGAR = LUGAR.ID_LUGAR     where  AREA.NOMBRE=@area  AND  LUGAR.NOMBRE=@lugar";
            SqlCommand cmd = new SqlCommand(query, con.con);
           
            cmd.Parameters.AddWithValue("@area",   area);
            cmd.Parameters.AddWithValue("@lugar",  lugar);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;





        }

        public DataTable BUSCAR_TRABAJOS(String area)
        {



            string query = "SELECT        TRABAJO.ID_TRABAJO AS N, TRABAJO.FECHA_PUBLICACION as PUBLICACION, AREA.NOMBRE  AS CARGO_AREA, LUGAR.NOMBRE AS LUGAR, TRABAJO.EMPRESA, TRABAJO.TITULO, TRABAJO.RESUMEN, TRABAJO.REQUIRIMIENTO, TRABAJO.OFERTA FROM            AREA INNER JOIN TRABAJO ON AREA.ID_AREA = TRABAJO.ID_AREA INNER JOIN  LUGAR ON TRABAJO.ID_LUGAR = LUGAR.ID_LUGAR    where AREA.NOMBRE Like (@area)+'%'";
            SqlCommand cmd = new SqlCommand(query, con.con);

            cmd.Parameters.AddWithValue("@area", "%" + area);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;





        }






        public DataTable BUSCAR_EMPRESA(String Nombres)
        {

                                                                                     

            string query = "SELECT        TRABAJO.ID_TRABAJO AS N, TRABAJO.FECHA_PUBLICACION as PUBLICACION, AREA.NOMBRE  AS CARGO_AREA, LUGAR.NOMBRE AS LUGAR, TRABAJO.EMPRESA, TRABAJO.TITULO, TRABAJO.RESUMEN, TRABAJO.REQUIRIMIENTO, TRABAJO.OFERTA FROM            AREA INNER JOIN TRABAJO ON AREA.ID_AREA = TRABAJO.ID_AREA INNER JOIN  LUGAR ON TRABAJO.ID_LUGAR = LUGAR.ID_LUGAR  where  (EMPRESA Like rtrim(@param)+'%')";
            SqlCommand cmd = new SqlCommand(query, con.con);
            cmd.Parameters.AddWithValue("@param", "%" + Nombres);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;





        }




    }

}
