using System;
using xChatDAO;
using xChatEntities;

namespace xChatBusiness
{
    public class ServiceChatManagerBL
    {
        private static readonly ServiceChatManagerBL _service = new ServiceChatManagerBL();

        public static ServiceChatManagerBL Instancia
        {
            get { return _service; }
        }

        public ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> result = new ObjectResultList<UserConnect>();

            try
            {
                result = ServiceChatManagerDAO.Instancia.GetListUserConnectByAccountManagerId(objectRequest);
            }
            catch(Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                result = ServiceChatManagerDAO.Instancia.GetListConversationByChatId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        public int ConversationMoveTo(ObjectRequest<ConversationMoveEntity> objectRequest)
        {
            try
            {
                ServiceChatManagerDAO.Instancia.ConversationMoveTo(objectRequest);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return 1;
        }

        public ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                result = ServiceChatManagerDAO.Instancia.GetListAccountManagerConnectByModuleAppId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        public ObjectResult<bool> AccountManagerDisconnect(ObjectRequest<int> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                result.Data = ServiceChatManagerDAO.Instancia.AccountManagerDisconnect(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }
    }
}
