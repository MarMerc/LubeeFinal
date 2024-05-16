using System;
using System.Collections.Generic;

namespace RealEstate_Api.Models
{
    public partial class Inmueble
    {
        public Inmueble()
        {
            Imagens = new HashSet<Imagen>();
        }

        public int IdInmueble { get; set; }
        public string TipoInmueble { get; set; } = null!;
        public string TipoOperación { get; set; } = null!;
        public string Descripción { get; set; } = null!;
        public int? Ambientes { get; set; }
        public int M2 { get; set; }
        public int? Antiguedad { get; set; }
        public string? LatUbicación { get; set; }
        public string? LongUbicación { get; set; }

        public virtual ICollection<Imagen> Imagens { get; set; }
    }
}
