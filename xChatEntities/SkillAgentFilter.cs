using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class SkillAgentFilter
    {
        public short PerspectiveId { get; set; }
        public int AgentId { get; set; }
        public int ModuleId { get; set; }
        public int LanguageId { get; set; }
        public int SkillLevelModule { get; set; }
        public int SkillLevelLanguage { get; set; }
    }
}
