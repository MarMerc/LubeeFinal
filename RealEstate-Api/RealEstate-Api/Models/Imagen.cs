using System;
using System.Collections.Generic;

namespace RealEstate_Api.Models
{
    public partial class Imagen
    {
        public int IdImagen { get; set; }
        public string? UbicacionImg { get; set; }
        public int? IdInmueble { get; set; }

        public virtual Inmueble? oInmueble { get; set; }
    }
}
