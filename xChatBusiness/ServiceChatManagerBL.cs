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

        public ListUserConnect GetListUserConnectByAccountManagerId(ObjectRequest objectRequest)
        {
            ListUserConnect result = new ListUserConnect();

            try
            {
                result = ServiceChatManagerDAO.Instancia.GetListUserConnectByAccountManagerId(objectRequest);
            }
            catch(Exception ex)
            {
                throw ex;
            }

            return result;
        }

        public ListConversationResponseEntity GetListConversationByChatId(ObjectRequest objectRequest)
        {
            ListConversationResponseEntity result = new ListConversationResponseEntity();

            try
            {
                result = ServiceChatManagerDAO.Instancia.GetListConversationByChatId(objectRequest);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return result;
        }

    }
}
