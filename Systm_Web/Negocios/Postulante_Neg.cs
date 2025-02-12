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
    public class Postulante_Neg
    {
        Postulante_Dato movimiento_dato = new Postulante_Dato();



        public void insert(Postulante_Entidad movimiento_entidad)
        {



            movimiento_dato.Insert(movimiento_entidad);


        }



        public DataTable BUSCAR(String parametro)
        {

            return movimiento_dato.BUSCAR(parametro);

        }





    }
}

