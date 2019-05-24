using xChatEntities;

namespace xChatBusiness
{
    public interface IServiceSkillAgentBL
    {
        void ChangeStateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest);
        void ChangeStateSkillModule(ObjectRequest<SkillAgentModule> objectRequest);
        void CreateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest);
        void CreateSkillModule(ObjectRequest<SkillAgentModule> objectRequest);
        ObjectResultList<SkillAgent> GetListSkillByAgent(ObjectRequest<SkillAgentFilter> objectRequest);
        void UpdateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest);
        void UpdateSkillModule(ObjectRequest<SkillAgentModule> objectRequest);
    }
}
