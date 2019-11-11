using System;
using xChatEntities;
using static xChatEntities.clsTypeList;

namespace xChatBusiness
{
    public interface IServiceChatManagerBL
    {
        //ObjectResult<bool> AccountManagerDisconnect(ObjectRequest<int> objectRequest);  
        ObjectResultList<AccountManagerConnect> GetAccountManagerById(ObjectRequest<string> objectRequest);
        //ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest);
        //ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest);
        //ObjectResultList<ConversationResponseEntity> GetListConversationByReport(ObjectRequest<string> objectRequest);
        //ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest);
        ObjectResultList<UserConnect> GetListUserByAccountManagerId(ObjectRequest<int> objectRequest);
        //ObjectResultList<ReportChat> GetReport(ObjectRequest<ReportFilter> objectRequest);
        //ObjectResultList<ConversationResponseEntity> GetListConversationByFilter(ObjectRequest<ConversationResponseEntity> objectRequest);
        //ObjectResult<UserRoleType> UsersGetRoleType(ObjectRequest<string> objectRequest);
        //ObjectResultList<AccountManagerConnect> GetListAgentByManager(ObjectRequest<string> objectRequest);
        //ObjectResultList<AccountManagerConnect> Manager_GetListAgent(ObjectRequest<string> objectRequest);
        //ObjectResultList<ConversationResponseEntity> GetListConversationByChatAndAgentId(ObjectRequest<string> objectRequest);
        //ObjectResultList<ConversationResponseEntity> GetListConversationByChatAndManagerId(ObjectRequest<string> objectRequest);


    }
}