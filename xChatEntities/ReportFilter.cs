using System;

namespace xChatEntities
{
    public class ReportFilter
    {
        public int AgentId { get; set; }
        public int UserId { get; set; }
        public int MarketId { get; set; }
        public DateTime ConversationDateStart { get; set; }
        public DateTime ConversationDateEnd { get; set; }
    }
}
