using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using xChatEntities;

namespace xChatWeb.Models
{
    public class VMReportFilter
    {
        public int AgentId { get; set; }
        public int UserId { get; set; }

        [Display(Name = "Filtro")]
        public string TituloFiltro { get; set; }

        [Display(Name = "Mercado")]
        public int MarketId { get; set; }

        [Display(Name ="Fecha Inicio")]
        [DataType(DataType.Date)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime ConversationDateStart { get; set; }

        [Display(Name ="Fecha Fin")]
        [DataType(DataType.Date)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime ConversationDateEnd { get; set; }

        public VMColumnsReport ColumnReport { get; set; }
        public List<ReportChat> ReportMain { get; set; }

        public VMReportFilter()
        {
            //MarketId = 159;
            ConversationDateEnd = DateTime.Now.Date;
            ConversationDateStart = DateTime.Now.Date;
        }
    }
}