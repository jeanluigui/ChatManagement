using System;
using System.Data;
using static xChatEntities.clsTypeList;
using System.Collections.Generic;
namespace xChatEntities
{
    public class ConversationResponseEntity : EntityBaseClass
    {
        public string ChatMessagesId { get; set; }
        public string Message { get; set; }
        public DateTime Date { get; set; }
        public short IsUser { get; set; }

        public int ChatId { get; set; }
        public string UserToken { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public int ModuleAppId { get; set; }

        public int AccountManagerId { get; set; }
        public string AccountManagerToken { get; set; }
        public string AccountManagerName { get; set; }

        public Int64 Distributorid { get; set; }
        public Byte IsUserSend { get; set; }
        public Byte IsRead { get; set; }
        public String Language { get; set; }
        public String Module { get; set; }
        public String DateStart { get; set; }
        public String DateEnd { get; set; }
        public String WritedBy { get; set; }
        public List<Int32> ListIdsMarkets { get; set; }
        public List<Int32> ListIdsAgents { get; set; }
        public tBaseProducFiltersList ListMarkets { get; set; }
        public tBaseProducFiltersList ListAgents { get; set; }
        public ConversationResponseEntity() { }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;
            
            ChatMessagesId = Utilities.ValidateDataRowKey(dataRow, "ChatMessagesId", typeof(String));
            Message = Utilities.ValidateDataRowKey(dataRow, "ChatMessagesEntry", typeof(String)); 
            Date = Convert.ToDateTime(dataRow["ChatMessagesDate"]);
            IsUser = Convert.ToInt16(Utilities.ValidateDataRowKey(dataRow, "ChatMessageIsUserSend", typeof(Int16))); 

            ChatId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "ChatId", typeof(Int32)));
            ModuleAppId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow,"ModuleAppId", typeof(Int32)));
            UserToken = Utilities.ValidateDataRowKey(dataRow, "UserToken", typeof(String));
            UserName = Utilities.ValidateDataRowKey(dataRow, "UserName", typeof(String)); 
            UserEmail = Utilities.ValidateDataRowKey(dataRow, "UserEmail", typeof(String));
            AccountManagerId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "AccountManagerId", typeof(Int32)));
            AccountManagerToken = Utilities.ValidateDataRowKey(dataRow, "AccountManagerToken", typeof(String)); 
            AccountManagerName = Utilities.ValidateDataRowKey(dataRow, "AccountManagerName", typeof(String));

            Distributorid = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "Distributorid", typeof(Int64)));
            IsUserSend = Convert.ToByte(Utilities.ValidateDataRowKey(dataRow, "Chatmessageisusersend", typeof(Byte)));  
            //IsRead = Convert.ToByte(Utilities.ValidateDataRowKey(dataRow, "Chatmessagesisread", typeof(Byte)));
            Language = Utilities.ValidateDataRowKey(dataRow, "Languagename", typeof(String)); 
            Module = Utilities.ValidateDataRowKey(dataRow, "Modulename", typeof(String));
            WritedBy = Utilities.ValidateDataRowKey(dataRow, "WritedBy", typeof(String));

            //UserConnect = new UserConnect(item);
        }
    }
}
