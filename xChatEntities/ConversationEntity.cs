﻿using System;

namespace xChatEntities
{
    public class ConversationEntity
    {
        public int ChatId { get; set; }
        public int ModuleAppId { get; set; }
        public int AccountManagerId { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public string Message { get; set; }
        public string DateMessage { get; set; }
        public string UserToken { get; set; }
        public string ManagerToken { get; set; }

        public ConversationEntity() { }
    }
}