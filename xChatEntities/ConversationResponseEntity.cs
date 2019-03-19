using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ConversationResponseEntity
    {
        public ConversationResponseEntity(DataRow item)
        {
            if (item == null) return;

            AccountManagerName = item["AccountManagerName"].ToString();
            Message = item["Message"].ToString();
            DateMessage = Convert.ToDateTime(item["DateMessage"]);
            Type = Convert.ToInt16(item["Type"]);
        }

        public string AccountManagerName { get; set; }
        public string Message { get; set; }
        public DateTime DateMessage { get; set; }
        private short Type { get; set; } // (1) Propietario-derecha (2) No Propietario-izquierda
    }
}
