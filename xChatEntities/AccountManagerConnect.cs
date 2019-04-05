using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class AccountManagerConnect : EntityBaseClass
    {
        public int AccountManagerConnectId { get; set; }
        public int AccountManagerId { get; set; }
        public string AccountManagerName { get; set; }
        public string AccountManagerConnectDateStart { get; set; }
        public int AccountManagerConnecChatActive { get; set; }

        public AccountManagerConnect() { }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow)) return;

            AccountManagerConnectId = Convert.ToInt32(dataRow["AccountManagerConnectId"]);
            AccountManagerId = Convert.ToInt32(dataRow["AccountManagerId"]);
            AccountManagerName = Convert.ToString(dataRow["AccountManagerName"]);
            AccountManagerConnectDateStart = Convert.ToString(dataRow["AccountManagerConnectDateStart"]);
            AccountManagerConnecChatActive = Convert.ToInt32(dataRow["AccountManagerConnecChatActive"]);
        }

    }
}
