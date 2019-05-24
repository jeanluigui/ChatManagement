using System.Data;

namespace xChatEntities
{
    public class SkillAgentLanguage : EntityBaseClass
    {
        public int AgentId { get; set; }
        public int LanguageId { get; set; }
        public short SkillLevel { get; set; }
        public short PriorityLevel { get; set; }
        public short StatusId { get; set; }
        public int CreateBy { get; set; }

        public override void Fill(DataRow dataRow)
        {
            
        }
    }
}
