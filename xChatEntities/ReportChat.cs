using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ReportChat : EntityBaseClass
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

        public ReportChat() { }

        public ReportChat(DataRow dataRow)
        {
            Fill(dataRow);
        }

        public override void Fill(DataRow dataRow)
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

    public class ListReportChat
    {
        public List<ReportChat> Elements { get; set; }

        public ListReportChat() { }

        public ListReportChat(DataTable dataTable)
        {
            if (dataTable == null || dataTable.Rows == null || dataTable.Rows.Count == 0) return;

            Elements = new List<ReportChat>();

            foreach (DataRow dataRow in dataTable.Rows)
                Elements.Add(new ReportChat(dataRow));
        }
    }
}
