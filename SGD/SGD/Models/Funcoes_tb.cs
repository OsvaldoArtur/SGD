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
    
    public partial class Funcoes_tb
    {
        public Funcoes_tb()
        {
            this.Condicao_tb = new HashSet<Condicao_tb>();
        }
    
        public int idFuncao { get; set; }
        public string Funcao { get; set; }
        public string Descricao { get; set; }
        public Nullable<int> idTipoFuncao { get; set; }
        public string GuidMap { get; set; }
    
        public virtual ICollection<Condicao_tb> Condicao_tb { get; set; }
        public virtual TipoFuncao_tb TipoFuncao_tb { get; set; }
    }
}
