using System.Data;

namespace xChatEntities
{
    public class EntityMaster : EntityBaseClass
    {
        public string EntityMasterId { get; set; }
        public string EntityMasterName { get; set; }
        public object EntityMasterTag { get; set; }

        public override void Fill(DataRow dataRow)
        {
            EntityMasterId = dataRow["EntityMasterId"].ToString();
            EntityMasterName = dataRow["EntityMasterName"].ToString();
            EntityMasterTag = dataRow["EntityMasterTag"].ToString();
        }
    }
}
