using System;
using System.Data;

namespace xChatEntities
{
    public class SkillAgent : EntityBaseClass
    {
        public String Detalle { get; set; }
        public int SkillLevel { get; set; }
        public int PriorityLevel { get; set; }
        public int AccountManagerId { get; set; }
        public int TipoId { get; set; }
        public int KeyControlId { get; set; }

        public override void Fill(DataRow dataRow)
        {
            Detalle = dataRow["detalle"].ToString();
            SkillLevel = Convert.ToInt32(dataRow["skillLevel"]);
            PriorityLevel = Convert.ToInt32(dataRow["priorityLevel"]);
            AccountManagerId = Convert.ToInt32(dataRow["AccountManagerId"]);
            TipoId = Convert.ToInt32(dataRow["TipoId"]);
            KeyControlId = Convert.ToInt32(dataRow["keyControlId"]);
        }
    }
}
