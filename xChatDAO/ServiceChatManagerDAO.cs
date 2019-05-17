using System;
using System.Data;
using xChatEntities;
using xss.ConnectionManager;
using xss.EncryptionHandler;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatDAO
{
    /// <summary>
    /// Clase que gestiona información del Chat.
    /// </summary>
    public static class ServiceChatManagerDAO
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

        /// <summary>
        /// Obtiene la lista de usuarios conectados de un Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> listUserConnect = new ObjectResultList<UserConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_accountmanagerid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_GetListUserConnect_pa", parameters);
                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                listUserConnect = new ObjectResultList<UserConnect>(dtresult);

            }
            catch (TimeoutException tout)
            {
                listUserConnect.Id = 2;
                listUserConnect.Message = tout.Message;

                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                listUserConnect.Id = 1;
                listUserConnect.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return listUserConnect;
        }

        /// <summary>
        /// Devuelve conversación de un Chat.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> listUserConnect = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chatid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_GetListConversationsByChatId_pa", parameters);
                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                listUserConnect = new ObjectResultList<ConversationResponseEntity>(dtresult);
            }
            catch (TimeoutException tout)
            {
                listUserConnect.Id = 2;
                listUserConnect.Message = tout.Message;

                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                listUserConnect.Id = 1;
                listUserConnect.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return listUserConnect;
        }

        /// <summary>
        /// Mueve una conversación de un chat a otro.
        /// </summary>
        /// <param name="objectRequest"></param>
        public static void ConversationMoveTo(ObjectRequest<ConversationMoveEntity> objectRequest)
        {
            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chatidsource", objectRequest.SenderObject.ChatIdSource);
                parameters.Add("@p_chatidtarget", objectRequest.SenderObject.ChatIdTarget);

                CommandParameter queryCommand = new CommandParameter("chat.Conversation_MoveTo_pa", parameters);

                DbManager.Instance.ExecuteCommand(queryCommand);
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

        }

        /// <summary>
        /// Obtener conversación para un Report.
        /// </summary>
        /// <param name="senderObject"></param>
        /// <returns></returns>
        public static ObjectResultList<ConversationResponseEntity> GetListConversationByReport(string senderObject)
        {
            ObjectResultList<ConversationResponseEntity> listUserConnect = new ObjectResultList<ConversationResponseEntity>();

            string strDateStart = senderObject.Split(';')[2];
            string strDateEnd = senderObject.Split(';')[3];

            try
            {
                if (!DateTime.TryParse(strDateStart, result: out DateTime dateStart))
                {
                    throw new Exception("Error en formato de fecha inicio");
                }

                if (!DateTime.TryParse(strDateEnd, result: out DateTime dateEnd))
                {
                    throw new Exception("Error en formato de fecha inicio");
                }

                ListParameters parameters = new ListParameters();
                parameters.Add("@p_agentid", senderObject.Split(';')[0]);
                parameters.Add("@p_userid", senderObject.Split(';')[1]);
                parameters.Add("@p_datestart", dateStart);
                parameters.Add("@p_dateend", dateEnd);

                CommandParameter queryCommand = new CommandParameter("chat.ChatReport_GetListConversations_pa", parameters);

                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                listUserConnect = new ObjectResultList<ConversationResponseEntity>(dtresult);
            }
            catch (TimeoutException tout)
            {
                listUserConnect.Id = 2;
                listUserConnect.Message = tout.Message;

                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                listUserConnect.Id = 1;
                listUserConnect.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return listUserConnect;
        }

        /// <summary>
        /// Obtener información para el Reporte.
        /// </summary>
        /// <param name="senderObject"></param>
        /// <returns></returns>
        public static ObjectResultList<ReportChat> GetReport(ReportFilter senderObject)
        {
            ObjectResultList<ReportChat> result = new ObjectResultList<ReportChat>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_agentid", senderObject.AgentId);
                parameters.Add("@p_userid", senderObject.UserId);
                parameters.Add("@p_marketid", senderObject.MarketId);
                parameters.Add("@p_datestart", senderObject.ConversationDateStart);
                parameters.Add("@p_dateend", senderObject.ConversationDateEnd);

                CommandParameter queryCommand = new CommandParameter("chat.ChatReport_GetByFilter_pa", parameters);

                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                result = new ObjectResultList<ReportChat>(dtresult);
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        /// <summary>
        /// Desconectar un Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static bool AccountManagerDisconnect(ObjectRequest<int> objectRequest)
        {
            bool result = false;

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_accountmanagerid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_Disconnect_pa", parameters);

                DbManager.Instance.ExecuteCommand(queryCommand);

                result = true;
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        /// <summary>
        /// Obtener lista de agentes conectados por Aplication ID.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_userid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString()));
                parameters.Add("@p_moduleappid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[1].ToString()));
                parameters.Add("@p_rolid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[2].ToString()));

                CommandParameter queryCommand = new CommandParameter("chat.AccountManagerConnect_GetList_pa",parameters);

                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                result = new ObjectResultList<AccountManagerConnect>(dtresult);

                ListAccountManagerConnect listAMC = new ListAccountManagerConnect(dtresult);

            }
            catch (TimeoutException tout)
            {
                result.Id = 2;
                result.Message = tout.Message;

                log.Save(EnumLogLevel.Fatal, tout.Message);
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
        /// Obtener información de un Agente por su ID.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public static ObjectResultList<AccountManagerConnect> GetAccountManagerById(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_userid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString()));
                parameters.Add("@p_moduleappid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[1].ToString()));
                parameters.Add("@p_rolid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[2].ToString()));

                CommandParameter queryCommand = new CommandParameter("chat.AccountManagerConnect_GetById_pa", parameters);

                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                result = new ObjectResultList<AccountManagerConnect>(dtresult);

                ListAccountManagerConnect listAMC = new ListAccountManagerConnect(dtresult);

            }
            catch (TimeoutException tout)
            {
                result.Id = 2;
                result.Message = tout.Message;

                log.Save(EnumLogLevel.Fatal, tout.Message);
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
