using System;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatBusiness
{
    public class ServiceChatBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        private static readonly ServiceChatBL _service = new ServiceChatBL();

        public static ServiceChatBL Instancia
        {
            get { return _service; }
        }

        public int ChatCreate(ConversationEntity conversationEntity)
        {
            int chatId = 0;

            try
            {
                chatId = ServiceChatDAO.ChatCreate(conversationEntity);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return chatId;
        }

        public int ChatMessageCreate(ConversationEntity conversationEntity)
        {
            int result = 0;

            try
            {
                result = ServiceChatDAO.ChatMessageCreate(conversationEntity);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ServiceChatDAO.AccountManagerConnect(accountManagerEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        public string GetManagerToken(ConversationEntity conversationEntity)
        {
            string managerToken = string.Empty;

            try
            {
                managerToken = ServiceChatDAO.GetManagerToken(conversationEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return managerToken;
        }

        public void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ServiceChatDAO.AccountManagerDisconnect(accountManagerEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        public void UserDisconnectForManager(ConversationEntity conversationEntity)
        {
            try
            {
                ServiceChatDAO.UserDisconnectForManager(conversationEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }
    }
}
