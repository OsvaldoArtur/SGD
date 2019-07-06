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
    
    public partial class user
    {
        public user()
        {
            this.EnviarDocumentos = new HashSet<EnviarDocumentos>();
            this.PermissaoDeparramento_tb = new HashSet<PermissaoDeparramento_tb>();
            this.RespostaDocumento = new HashSet<RespostaDocumento>();
        }
    
        public int idUser { get; set; }
        public string NomeUsuario { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string GuidMap { get; set; }
        public string Naturalidade { get; set; }
        public string Local_residencia { get; set; }
        public Nullable<decimal> Altura { get; set; }
        public string Documento { get; set; }
        public string N_documento { get; set; }
        public string Local_emissao { get; set; }
        public Nullable<System.DateTime> Data_emissao { get; set; }
        public Nullable<System.DateTime> Data_nascimento { get; set; }
        public string Estado_civil { get; set; }
        public string Sexo { get; set; }
        public Nullable<int> idDepartamento { get; set; }
        public Nullable<int> id_tipo_usuario { get; set; }
    
        public virtual departamento departamento { get; set; }
        public virtual ICollection<EnviarDocumentos> EnviarDocumentos { get; set; }
        public virtual ICollection<PermissaoDeparramento_tb> PermissaoDeparramento_tb { get; set; }
        public virtual ICollection<RespostaDocumento> RespostaDocumento { get; set; }
        public virtual Tipo_usuario_tb Tipo_usuario_tb { get; set; }
    }
}
