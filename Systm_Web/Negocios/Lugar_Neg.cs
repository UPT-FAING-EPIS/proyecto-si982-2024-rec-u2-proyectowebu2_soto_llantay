﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Entidades;
using AccesoDato;
using System.Data;
namespace Negocios
{
    public class Lugar_Neg
    {
        Lugar_Dato movimiento_dato = new Lugar_Dato();



        public void insert(Lugar_Entidad movimiento_entidad)
        {



            movimiento_dato.Insert(movimiento_entidad);


        }





    }
}

