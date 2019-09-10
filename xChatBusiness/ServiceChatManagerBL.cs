using System;
using System.Collections.Generic;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;
using static xChatEntities.clsTypeList;
using encryp = xss.EncryptionHandler;

namespace xChatBusiness
{
    /// <summary>
    /// Clase que gestiona las operaciones del chat.
    /// </summary>
    public class ServiceChatManagerBL : IServiceChatManagerBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        private IServiceChatManagerDAO _IServiceChatManagerDAO;

        /// <summary>
        /// Constructor para injección de dependencia.
        /// </summary>
        /// <param name="serviceChatManagerDAO"></param>
        public ServiceChatManagerBL(IServiceChatManagerDAO serviceChatManagerDAO)
        {
            _IServiceChatManagerDAO = serviceChatManagerDAO;
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
                result = _IServiceChatManagerDAO.GetListUserConnectByAccountManagerId(objectRequest);
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
        /// Obtener la lista de usuarios de un Manager.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<UserConnect> GetListUserByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> result = new ObjectResultList<UserConnect>();

            try
            {
                result = _IServiceChatManagerDAO.GetListUserByAccountManagerId(objectRequest);
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
        /// Obtener listado de conversación de un chat.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                if (objectRequest.SenderObject < 1)
                {
                    throw new Exception("Debe especificar valor para ChatId.");
                }

                result = _IServiceChatManagerDAO.GetListConversationByChatId(objectRequest);

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
        /// Obtener la lista de agentes por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result = _IServiceChatManagerDAO.GetListAccountManagerConnectByModuleAppId(objectRequest);
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
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result = _IServiceChatManagerDAO.GetAccountManagerById(objectRequest);
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
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result = _IServiceChatManagerDAO.GetListConversationByReport(objectRequest.SenderObject);

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
                if (objectRequest.SenderObject < 1)
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result.Data = _IServiceChatManagerDAO.AccountManagerDisconnect(objectRequest);
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
                if (objectRequest.SenderObject.MarketId < 1)
                {
                    throw new Exception("Debe especificar valor de MarketId.");
                }

                result = _IServiceChatManagerDAO.GetReport(objectRequest.SenderObject);
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
        public ObjectResultList<ConversationResponseEntity> GetListConversationByFilter(ObjectRequest<ConversationResponseEntity> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                if (objectRequest ==  null)
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                tBaseProducFiltersList ListMarkets = new tBaseProducFiltersList();
                tBaseProducFiltersList ListAgents = new tBaseProducFiltersList();

                if (objectRequest.SenderObject.ListIdsMarkets != null)
                {                   
                    foreach (Int32 item in objectRequest.SenderObject.ListIdsMarkets)
                    {
                        ListMarkets.Add(new srProductFilters
                        {
                            Id = item,
                        });
                    }
                }
                else
                {
                    ListMarkets = null;
                }

                if (objectRequest.SenderObject.ListIdsAgents != null)
                {                   
                    foreach (Int32 item in objectRequest.SenderObject.ListIdsAgents)
                    {
                        ListAgents.Add(new srProductFilters
                        {
                            Id = item,
                        });
                    }
                }
                else
                {
                    ListAgents = null;
                }
                objectRequest.SenderObject.ListMarkets = ListMarkets;
                objectRequest.SenderObject.ListAgents = ListAgents;

                result = _IServiceChatManagerDAO.GetListConversationByFilter(objectRequest);

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

        public ObjectResult<UserRoleType> UsersGetRoleType(ObjectRequest<string> objectRequest)
        {
            ObjectResult<UserRoleType> result = new ObjectResult<UserRoleType>();
            try
            {
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                    throw new Exception("Debe enviar un valor para el UserId.");
                               
                result = _IServiceChatManagerDAO.UsersGetRoleType(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = -1;
                result.Message = "NoOk";
                log.Save(EnumLogLevel.Fatal, ex);
            }
            return result;
        }

        public ObjectResultList<AccountManagerConnect> GetListAgentByManager(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result = _IServiceChatManagerDAO.GetListAgentByManager(objectRequest);
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
        /// Obtener listado de conversación de un chat.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatAndAgentId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result = _IServiceChatManagerDAO.GetListConversationByChatAndAgentId(objectRequest);
                if (result.Id == 0 && result.Elements != null) {
                    result.Elements.ForEach(x => x.Message = encryp.Encryption.Decrypt(x.Message));
                }
                else
                {
                    result.Elements = new List<ConversationResponseEntity>();
                }
                
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
        /// Obtener listado de conversación de un chat de manager.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatAndManagerId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> result = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                if (string.IsNullOrEmpty(objectRequest.SenderObject))
                {
                    throw new Exception("Debe especificar valor de filtro.");
                }

                result = _IServiceChatManagerDAO.GetListConversationByChatAndManagerId(objectRequest);
                if (result.Id == 0 && result.Elements != null)
                {
                    result.Elements.ForEach(x => x.Message = encryp.Encryption.Decrypt(x.Message));
                }
                else
                {
                    result.Elements = new List<ConversationResponseEntity>();
                }
                
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
