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
    public class Area_Neg
    {
        Area_Dato movimiento_dato = new Area_Dato();



        public void insert(Area_Entidad movimiento_entidad)
        {



            movimiento_dato.Insert(movimiento_entidad);


        }


     


    }
}

