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
    
    public partial class DocumentoUsuario_tb
    {
        public DocumentoUsuario_tb()
        {
            this.RespostaDocumentoUsuario_tb = new HashSet<RespostaDocumentoUsuario_tb>();
        }
    
        public int idDocumentouser { get; set; }
        public Nullable<int> idUserReceiver { get; set; }
        public Nullable<int> idUserSender { get; set; }
        public string Assunto { get; set; }
        public string Nota { get; set; }
        public string Estado { get; set; }
        public string CodigoDocumneto { get; set; }
        public Nullable<int> idPedido { get; set; }
        public Nullable<System.DateTime> DataEnvio { get; set; }
        public Nullable<System.TimeSpan> HoraEnvio { get; set; }
        public string GuidMap { get; set; }
    
        public virtual ICollection<RespostaDocumentoUsuario_tb> RespostaDocumentoUsuario_tb { get; set; }
        public virtual Pedidos_tb Pedidos_tb { get; set; }
    }
}
