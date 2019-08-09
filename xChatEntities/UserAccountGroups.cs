using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class UserAccountGroups : EntityBaseClass
    {
        public Int32 AccountManagerGroupId { get; set; }
        public Int32 AccountManagerId { get; set; }
        public Int32 AccountManagerChildId { get; set; }
        public String UserName { get; set; }
        public String RoleTypeName { get; set; }
        public String ManagerName { get; set; }
        public Int16 StatusId { get; set; }
        public Int32 CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public Int32 UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;

            AccountManagerGroupId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "AccountManagerGroupId", typeof(Int32)));
            AccountManagerId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "AccountManagerId", typeof(Int32)));
            AccountManagerChildId = Convert.ToInt16(Utilities.ValidateDataRowKey(dataRow, "AccountManagerChildId", typeof(Int16)));
            UserName = Utilities.ValidateDataRowKey(dataRow, "Fullname", typeof(String));
            RoleTypeName = Utilities.ValidateDataRowKey(dataRow, "RolTypeName", typeof(String));
            ManagerName = Utilities.ValidateDataRowKey(dataRow, "Manager", typeof(String));
        }
    }
}
