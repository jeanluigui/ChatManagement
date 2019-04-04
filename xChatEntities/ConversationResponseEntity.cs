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
        public ConversationResponseEntity() { }

        public ConversationResponseEntity(DataRow item)
        {
            if (item == null) return;

            ChatMessagesId = item["ChatMessagesId"].ToString();
            Message = item["ChatMessagesEntry"].ToString();
            Date = Convert.ToDateTime(item["ChatMessagesDate"]);
            IsUser = Convert.ToInt16(item["ChatMessageIsUserSend"]);
        }

        public string ChatMessagesId { get; set; }
        public string Message { get; set; }
        public DateTime Date { get; set; }
        private short IsUser { get; set; } 
    }
}
