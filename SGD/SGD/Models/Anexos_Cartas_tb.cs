//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGD.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Anexos_Cartas_tb
    {
        public int idAnexosCartas { get; set; }
        public Nullable<int> idCarta { get; set; }
        public Nullable<System.DateTime> DataAnexo { get; set; }
        public Nullable<int> idUsuario { get; set; }
        public string Anexo_Nome { get; set; }
        public byte[] Anexo_Ficheiro { get; set; }
        public string Anexo_Type { get; set; }
        public string Anexo_Contentype { get; set; }
        public string Anexo_GuidMap { get; set; }
    
        public virtual Cartas_tb Cartas_tb { get; set; }
    }
}
