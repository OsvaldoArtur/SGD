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
    
    public partial class Curso_tb
    {
        public Curso_tb()
        {
            this.Cartas_tb = new HashSet<Cartas_tb>();
            this.Submissao_tb = new HashSet<Submissao_tb>();
        }
    
        public int idCurso { get; set; }
        public string Curso { get; set; }
        public string DescricaoCurso { get; set; }
    
        public virtual ICollection<Cartas_tb> Cartas_tb { get; set; }
        public virtual ICollection<Submissao_tb> Submissao_tb { get; set; }
    }
}
