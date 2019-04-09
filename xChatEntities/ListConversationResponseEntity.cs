using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ListConversationResponseEntity
    {
        public List<ConversationResponseEntity> Elementos { get; set; }

        public ListConversationResponseEntity() { }

        public ListConversationResponseEntity(DataTable dataTable)
        {
            if (dataTable is null || dataTable.Rows == null || dataTable.Rows.Count == 0)
                return;

            Elementos = new List<ConversationResponseEntity>();

            foreach (DataRow item in dataTable.Rows)
            {
                Elementos.Add(new ConversationResponseEntity(item));
            }
        }
    }
}
