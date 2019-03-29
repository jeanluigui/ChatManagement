using System;
using xChatDAO;
using xChatEntities;

namespace xChatBusiness
{
    public class ServiceChatBL
    {
        private static readonly ServiceChatBL _service = new ServiceChatBL();

        public static ServiceChatBL Instancia
        {
            get { return _service; }
        }

        public Int32 ChatCreate(ConversationEntity conversationEntity)
        {
            Int32 chatId = 0;

            try
            {
                chatId = ServiceChatDAO.Instancia.ChatCreate(conversationEntity);
            }
            catch(Exception ex)
            {
                throw ex;
            }

            return chatId;
        }

        public Int32 ChatMessageCreate(ConversationEntity conversationEntity)
        {
            Int32 result = 0;

            try
            {
                result = ServiceChatDAO.Instancia.ChatMessageCreate(conversationEntity);
            }
            catch(Exception ex)
            {
                throw ex;
            }

            return result;
        }

        public void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ServiceChatDAO.Instancia.AccountManagerConnect(accountManagerEntity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string GetManagerToken(ConversationEntity conversationEntity)
        {
            string managerToken = string.Empty;

            try
            {
                managerToken = ServiceChatDAO.Instancia.GetManagerToken(conversationEntity);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return managerToken;
        }

        public void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ServiceChatDAO.Instancia.AccountManagerDisconnect(accountManagerEntity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
