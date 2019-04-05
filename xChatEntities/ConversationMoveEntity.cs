using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ConversationMoveEntity
    {
        public int ChatIdSource { get; set; }
        public int ChatIdTarget { get; set; }

        public ConversationMoveEntity() { }
    }
}
