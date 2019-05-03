using System.ComponentModel.DataAnnotations;

namespace xChatWeb.Models
{
    public class VMColumnsReport
    {
        [Display(Name ="Agente")]
        public string Agente { get; set; }

        [Display(Name = "Usuario")]
        public string Usuario { get; set; }

        [Display(Name = "Ultimo Mensaje")]
        public string FechaUltimoMensaje { get; set; }
    }
}