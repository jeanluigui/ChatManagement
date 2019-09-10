using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ChatToken : EntityBaseClass
    {
        public String Token { get; set; }
        public short TypeToken { get; set; }
        public String ChatId { get; set; }
        public String UserName { get; set; }

        public override void Fill(DataRow dataRow)
        {
            Token = dataRow["TokenList"].ToString();
            TypeToken = Convert.ToInt16(dataRow["TypeToken"]);
            ChatId = dataRow["ChatId"].ToString();
            UserName = dataRow["UserName"].ToString();
        }
    }
}
