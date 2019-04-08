using System;
using System.Data;

namespace xChatEntities
{
    public class ConversationResponseEntity : EntityBaseClass
    {
        public string ChatMessagesId { get; set; }
        public string Message { get; set; }
        public DateTime Date { get; set; }
        private short IsUser { get; set; }

        public ConversationResponseEntity() { }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;

            ChatMessagesId = dataRow["ChatMessagesId"].ToString();
            Message = dataRow["ChatMessagesEntry"].ToString();
            Date = Convert.ToDateTime(dataRow["ChatMessagesDate"]);
            IsUser = Convert.ToInt16(dataRow["ChatMessageIsUserSend"]);
        }
    }
}
