using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ConversationRequestEntity
    {
        public int ModuleAppId { get; set; }
        public int AccountManagerId { get; set; }
        public string User { get; set; }
        public string Email { get; set; }
        public string Message { get; set; }
        public DateTime DateMessage { get; set; }
    }
}
