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
    
    public partial class EnviarDocumentos
    {
        public EnviarDocumentos()
        {
            this.documentosenviados = new HashSet<documentosenviados>();
            this.RecebimentoDocumentos = new HashSet<RecebimentoDocumentos>();
            this.RespostaDocumento = new HashSet<RespostaDocumento>();
        }
    
        public int idEnvio { get; set; }
        public Nullable<System.DateTime> DataEnvio { get; set; }
        public Nullable<int> idUsuario { get; set; }
        public Nullable<int> idPastaDepartamento { get; set; }
        public string Estado { get; set; }
        public string Mensagem { get; set; }
        public string Titulo { get; set; }
        public string Contacto { get; set; }
        public string NivelUrgencia { get; set; }
        public Nullable<int> idCategoria { get; set; }
        public string GuidMap { get; set; }
        public string CodExpediente { get; set; }
    
        public virtual categoria categoria { get; set; }
        public virtual ICollection<documentosenviados> documentosenviados { get; set; }
        public virtual user user { get; set; }
        public virtual ICollection<RecebimentoDocumentos> RecebimentoDocumentos { get; set; }
        public virtual ICollection<RespostaDocumento> RespostaDocumento { get; set; }
    }
}
