using System;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatBusiness
{
    public class ServiceChatManagerBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);
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
                result = ServiceChatManagerDAO.GetListUserConnectByAccountManagerId(objectRequest);
            }
            catch(Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                result = ServiceChatManagerDAO.GetListConversationByChatId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public int ConversationMoveTo(ObjectRequest<ConversationMoveEntity> objectRequest)
        {
            try
            {
                ServiceChatManagerDAO.ConversationMoveTo(objectRequest);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return 1;
        }

        public ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                result = ServiceChatManagerDAO.GetListAccountManagerConnectByModuleAppId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public ObjectResultList<AccountManagerConnect> GetAccountManagerById(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                result = ServiceChatManagerDAO.GetAccountManagerById(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public ObjectResultList<ConversationResponseEntity> GetListConversationByReport(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                result = ServiceChatManagerDAO.GetListConversationByReport(objectRequest.SenderObject);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public ObjectResult<bool> AccountManagerDisconnect(ObjectRequest<int> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                result.Data = ServiceChatManagerDAO.AccountManagerDisconnect(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public ObjectResultList<ReportChat> GetReport(ObjectRequest<ReportFilter> objectRequest)
        {
            ObjectResultList<ReportChat> result = new ObjectResultList<ReportChat>();

            try
            {
                result = ServiceChatManagerDAO.GetReport(objectRequest.SenderObject);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }
    }
}
