using System.Collections.Generic;
using xChatEntities;

namespace xChatWeb.Models
{
    public class VMChatManager
    {
        public string TitleAgent { get; set; }
        public string TitleUsers { get; set; }
        public string TitleConversation { get; set; }

        public List<AccountManagerConnect> ListAccountManagerConnect { get; set; }
        public List<UserConnect> ListUserConnects { get; set; }
        public List<ConversationEntity> ListConversation { get; set; }

    }
}