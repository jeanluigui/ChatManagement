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
        public int AgentId { get; set; }
        public string AccountAgentName { get; set; }
        public string AccountManagerConnectDateStart { get; set; }
        public int AccountManagerConnecChatActive { get; set; }
        public short AccountManagerIsActive { get; set; }
        public Boolean AccountManagerIsAgent { get; set; }
        public int ManagerId { get; set; }
        public String ManagerName { get; set; }
        public AccountManagerConnect() { }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow)) return;

            AccountManagerConnectId = Convert.ToInt32(dataRow["AccountManagerConnectId"]);
            AgentId = Convert.ToInt32(dataRow["AccountManagerId"]);
            AccountAgentName = Convert.ToString(dataRow["AccountManagerName"]);
            AccountManagerConnectDateStart = Convert.ToString(dataRow["AccountManagerConnectDateStart"]);
            AccountManagerConnecChatActive = Convert.ToInt32(dataRow["AccountManagerConnecChatActive"]);
            AccountManagerIsActive = Convert.ToInt16(dataRow["AccountManagerIsActive"]);
            AccountManagerIsAgent = Convert.ToBoolean(dataRow["AccountManageIsAgent"]);
            ManagerId = Convert.ToInt32(dataRow["ManagerId"]);
            ManagerName = Convert.ToString(dataRow["ManageName"]);
        }

    }

    public class ListAccountManagerConnect
    {
        public List<AccountManagerConnect> Elements { get; set; }

        public ListAccountManagerConnect()
        {

        }

        public ListAccountManagerConnect(DataTable dataTable)
        {
            Elements = new List<AccountManagerConnect>();

            foreach (DataRow item in dataTable.Rows)
            {
                AccountManagerConnect entidad = new AccountManagerConnect();
                entidad.Fill(item);

                Elements.Add(entidad);
            }
        }
    }
}
