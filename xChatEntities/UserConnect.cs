using System;
using System.Data;

namespace xChatEntities
{
    public class UserConnect : EntityBaseClass
    {
        public int ChatId { get; set; }
        public int AgentId { get; set; }
        public string UserToken { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public short ChatIsReadForManager { get; set; }
        public short ChatIsReadForUser { get; set; } //por el momento esto no lo utilizo

        public UserConnect() { }

        public override void Fill (DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;

            ChatId = Convert.ToInt32(dataRow["ChatId"]);
            UserToken = dataRow["UserToken"].ToString();
            UserName = dataRow["UserName"].ToString();
            UserEmail = dataRow["UserEMail"].ToString();
            ChatIsReadForManager = Convert.ToInt16(dataRow["ChatIsReadForManager"]);
            ChatIsReadForUser = Convert.ToInt16(dataRow["ChatIsReadForUser"]);
        }

    }
}
