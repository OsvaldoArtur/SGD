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
    
    public partial class categoria
    {
        public categoria()
        {
            this.EnviarDocumentos = new HashSet<EnviarDocumentos>();
        }
    
        public int idCategoria { get; set; }
        public string NomeCategoria { get; set; }
        public string DescricaoCategoria { get; set; }
        public string GuidMap { get; set; }
    
        public virtual ICollection<EnviarDocumentos> EnviarDocumentos { get; set; }
    }
}
