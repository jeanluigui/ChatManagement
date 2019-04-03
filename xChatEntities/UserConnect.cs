using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class UserConnect
    {
        public int ChatId { get; set; }
        public string UserToken { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }

        public UserConnect() { }

        public UserConnect(DataRow drow)
        {
            if (drow == null) return;

            ChatId = Convert.ToInt32(drow["ChatId"]);
            UserToken = drow["UserToken"].ToString();
            UserName = drow["UserName"].ToString();
            UserEmail = drow["UserEMail"].ToString();
        }

    }
}
