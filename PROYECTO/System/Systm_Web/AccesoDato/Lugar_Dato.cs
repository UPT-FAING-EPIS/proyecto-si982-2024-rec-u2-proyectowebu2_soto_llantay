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
    public class Lugar_Dato
    {


        Conexion con = new Conexion();


        public void Insert(Lugar_Entidad cliente_entidad)
        {
            //    try
            //    {

            SqlCommand cmd = new SqlCommand("insert into lugar values (@nombre)", con.con);

            cmd.CommandType = CommandType.Text;




            cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value = cliente_entidad.nombre;






            con.con.Open();

            cmd.ExecuteNonQuery();

            con.con.Close();
            //}

            //catch (Exception ex)

            //{
            //    string error = "Error" + ex;

            //}


        }








    }

}
