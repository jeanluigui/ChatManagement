using xChatEntities;
using static xChatEntities.clsTypeList;

namespace xChatDAO
{
    public interface IServiceChatManagerDAO
    {
        bool AccountManagerDisconnect(ObjectRequest<int> objectRequest);
        void ConversationMoveTo(ObjectRequest<ConversationMoveEntity> objectRequest);
        ObjectResultList<AccountManagerConnect> GetAccountManagerById(ObjectRequest<string> objectRequest);
        ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest);
        ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest);
        ObjectResultList<ConversationResponseEntity> GetListConversationByReport(string senderObject);
        ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest);
        ObjectResultList<ReportChat> GetReport(ReportFilter senderObject);
        ObjectResultList<ConversationResponseEntity> GetListConversationByFilter(ObjectRequest<ConversationResponseEntity> objectRequest);
    }
}