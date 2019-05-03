using System;
using System.Data;

namespace xChatWeb.Models
{
    public class VMReport
    {
        public int ChatId { get; set; }
        public int ChatMessageId { get; set; }
        public int AccountManagerId { get; set; }
        public int UserId { get; set; }
        public int MarketId { get; set; }
        public string AccountManagerName { get; set; }
        public string UserName { get; set; }
        public string MarketName { get; set; }
        public int MessageNumber { get; set; }
        public DateTime LastMessageDate { get; set; }

        public VMReport() { }

        public VMReport(DataRow dataRow)
        {
            ChatId = Convert.ToInt32(dataRow["ChatId"]);
            ChatMessageId = Convert.ToInt32(dataRow["ChatMessageId"]);
            AccountManagerId = Convert.ToInt32(dataRow["AccountManagerId"]);
            UserId = Convert.ToInt32(dataRow["UserId"]);
            MarketId = Convert.ToInt32(dataRow["MarketId"]);
            AccountManagerName = dataRow["AccountManagerName"].ToString();
            UserName = dataRow["UserName"].ToString();
            MarketName = dataRow["MarketName"].ToString();
            MessageNumber = Convert.ToInt32(dataRow["MessageNumber"]);
            LastMessageDate = Convert.ToDateTime(dataRow["LastMessageDate"]);
        }
    }
}