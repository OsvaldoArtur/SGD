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
    
    public partial class Cartas_tb
    {
        public Cartas_tb()
        {
            this.Anexos_Cartas_tb = new HashSet<Anexos_Cartas_tb>();
            this.RespostaCartas_tb = new HashSet<RespostaCartas_tb>();
        }
    
        public int idCarta { get; set; }
        public string NomeRequerente { get; set; }
        public Nullable<int> idCurso { get; set; }
        public string Periodo { get; set; }
        public Nullable<int> idPedido { get; set; }
        public string CodigoCarta { get; set; }
        public Nullable<System.DateTime> DataCarta { get; set; }
        public Nullable<int> idUsuario { get; set; }
        public int idPastaDepartamento { get; set; }
        public string Estado { get; set; }
        public string GuidMap { get; set; }
        public string Descricao { get; set; }
        public string ContactoCelular { get; set; }
        public string AnoLectivo { get; set; }
    
        public virtual ICollection<Anexos_Cartas_tb> Anexos_Cartas_tb { get; set; }
        public virtual Curso_tb Curso_tb { get; set; }
        public virtual pastadepartamento pastadepartamento { get; set; }
        public virtual Pedidos_tb Pedidos_tb { get; set; }
        public virtual ICollection<RespostaCartas_tb> RespostaCartas_tb { get; set; }
    }
}
