using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class UserConnect : EntityBaseClass
    {
        public int ChatId { get; set; }
        public string UserToken { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }

        public UserConnect() { }

        public override void Fill (DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;

            ChatId = Convert.ToInt32(dataRow["ChatId"]);
            UserToken = dataRow["UserToken"].ToString();
            UserName = dataRow["UserName"].ToString();
            UserEmail = dataRow["UserEMail"].ToString();
        }

    }
}
