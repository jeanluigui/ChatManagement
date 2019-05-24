using System.Data;

namespace xChatEntities
{
    public class SkillAgentModule : EntityBaseClass
    {
        public int AgentId { get; set; }
        public int ModuleId { get; set; }
        public short SkillLevel { get; set; }
        public short PriorityLevel { get; set; }
        public short StatusId { get; set; }
        public int CreateBy { get; set; }

        public override void Fill(DataRow dataRow)
        {
            
        }
    }
}
