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
        public int UserId { get; set; }
        public string UserToken { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }

        public UserConnect() { }

        public UserConnect(DataRow drow)
        {
            if (drow == null) return;

            UserId = Convert.ToInt32(drow["userid"]);
            UserToken = drow["usertoken"].ToString();
            UserName = drow["username"].ToString();
            UserEmail = drow["useremail"].ToString();
        }

    }
}
