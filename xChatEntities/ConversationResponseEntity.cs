using System;
using System.Data;

namespace xChatEntities
{
    public class ConversationResponseEntity : EntityBaseClass
    {
        public string ChatMessagesId { get; set; }
        public string Message { get; set; }
        public DateTime Date { get; set; }
        public short IsUser { get; set; }
        public UserConnect UserConnect { get; set; }

        public int ChatId { get; set; }
        public string UserToken { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public int ModuleAppId { get; set; }

        public int AccountManagerId { get; set; }
        public string AccountManagerToken { get; set; }

        public ConversationResponseEntity() { }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;

            ChatMessagesId = dataRow["ChatMessagesId"].ToString();
            Message = dataRow["ChatMessagesEntry"].ToString();
            Date = Convert.ToDateTime(dataRow["ChatMessagesDate"]);
            IsUser = Convert.ToInt16(dataRow["ChatMessageIsUserSend"]);
            ChatId = Convert.ToInt32(dataRow["ChatId"]);
            ModuleAppId = Convert.ToInt32(dataRow["ModuleAppId"]);
            UserToken = dataRow["UserToken"].ToString();
            UserName = dataRow["UserName"].ToString();
            UserEmail = dataRow["UserEmail"].ToString();
            AccountManagerId = Convert.ToInt32(dataRow["AccountManagerId"]);
            AccountManagerToken = dataRow["AccountManagerToken"].ToString();

            //UserConnect = new UserConnect(dataRow);
        }
    }
}
