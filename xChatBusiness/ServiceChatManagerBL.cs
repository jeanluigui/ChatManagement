using System;
using xChatDAO;
using xChatEntities;
using xChatUtilities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;
using encryp = xss.EncryptionHandler;

namespace xChatBusiness
{
    /// <summary>
    /// Clase que gestiona las operaciones del chat.
    /// </summary>
    public class ServiceChatManagerBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);
        private static readonly ServiceChatManagerBL _service = new ServiceChatManagerBL();

        /// <summary>
        /// Patrón Singleton.
        /// </summary>
        public static ServiceChatManagerBL Instancia
        {
            get { return _service; }
        }

        /// <summary>
        /// Obtener la lista de usuarios conectados de un Manager.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtener listado de conversación de un chat.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                result = ServiceChatManagerDAO.GetListConversationByChatId(objectRequest);

                result.Elements.ForEach(x => x.Message = encryp.Encryption.Decrypt(x.Message));
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        /// <summary>
        /// Mover una conversación a otro chat.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtener la lista de agentes por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtener un Agente por su ID.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtener una conversación para el Reporte Chat.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByReport(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                result = ServiceChatManagerDAO.GetListConversationByReport(objectRequest.SenderObject);

                result.Elements.ForEach(x => x.Message = encryp.Encryption.Decrypt(x.Message));
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        /// <summary>
        /// Desconectar a un Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtenre información de Reporte.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
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
