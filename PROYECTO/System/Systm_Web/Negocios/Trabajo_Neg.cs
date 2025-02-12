using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Entidades;
using AccesoDato;
using System.Data;
namespace Negocios
{
    public class Trabajo_Neg
    {
        Trabajo_Dato movimiento_dato = new Trabajo_Dato();



        public void insert(Trabajo_Entidad movimiento_entidad)
        {



            movimiento_dato.Insert(movimiento_entidad);


        }

        public DataTable LISTAR_AREA()
        {

            return movimiento_dato.LISTADO_AREA();


        }

        public DataTable LISTAR_LUGAR()
        {

            return movimiento_dato.LISTADO_LUGAR();


        }



        public DataTable BUSCAR()
        {

            return movimiento_dato.BUSCAR();

        }

      


        public DataTable BUSCAR_EMPRESA(String parametro)
        {

            return movimiento_dato.BUSCAR_EMPRESA(parametro);

        }


        public DataTable BUSCAR_TRABAJO(String area,String lugar)
        {

            return movimiento_dato.BUSCAR_TRABAJO(area,lugar);

        }

        public DataTable BUSCAR_TRABAJOS(String area)
        {

            return movimiento_dato.BUSCAR_TRABAJOS(area);

        }
    }
}

