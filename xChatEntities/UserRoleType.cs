using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class UserRoleType : EntityBaseClass
    {
        public Int32 UserRolTypeId { get; set; }
        public Int16 RoleTypeId { get; set; }
        public String RoleTypeName { get; set; }
        public String UserName { get; set; }
        public Int32 UserId { get; set; }
        public Int16 StatusId { get; set; }
        public Int32 CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public Int32 UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }

        public override void Fill(DataRow dataRow)
        {
            if (!DataRowValidate(dataRow))
                return;

            UserRolTypeId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "UserRolTypeId", typeof(Int32)));
            UserId = Convert.ToInt32(Utilities.ValidateDataRowKey(dataRow, "UserId", typeof(Int32)));
            RoleTypeId = Convert.ToInt16(Utilities.ValidateDataRowKey(dataRow, "RoleTypeId", typeof(Int16)));
            UserName =  Utilities.ValidateDataRowKey(dataRow, "Fullname", typeof(String));
            RoleTypeName = Utilities.ValidateDataRowKey(dataRow, "RolTypeName", typeof(String));
        }
        
    }
}
