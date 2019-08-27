using System;
using System.Data;
using System.Data.SqlClient;
using xChatEntities;
using xss.ConnectionManager;
using xss.EncryptionHandler;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;
using static xChatEntities.clsTypeList;

namespace xChatDAO
{
    /// <summary>
    /// Clase que gestiona información del Chat.
    /// </summary>
    public class ServiceChatManagerDAO : IServiceChatManagerDAO
    {
        private ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

        /// <summary>
        /// Obtiene la lista de usuarios conectados de un Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> listUserConnect = new ObjectResultList<UserConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@accountmanagerid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_GetListUserConnect_sp", parameters);
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
        /// Obtiene la lista de usuarios de un Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<UserConnect> GetListUserByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> listUserConnect = new ObjectResultList<UserConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@accountmanagerid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.ManagerConnect_GetListUser_sp ", parameters);
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
        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> listUserConnect = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@chatid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_GetListConversationsByChatId_sp", parameters);
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
        /// Obtener conversación para un Report.
        /// </summary>
        /// <param name="senderObject"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByReport(string senderObject)
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
                parameters.Add("@agentid", senderObject.Split(';')[0]);
                parameters.Add("@userid", senderObject.Split(';')[1]);
                parameters.Add("@datestart", dateStart);
                parameters.Add("@dateend", dateEnd);

                CommandParameter queryCommand = new CommandParameter("chat.ChatReport_GetListConversations_Sp", parameters);

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
        public ObjectResultList<ReportChat> GetReport(ReportFilter senderObject)
        {
            ObjectResultList<ReportChat> result = new ObjectResultList<ReportChat>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@agentid", senderObject.AgentId);
                parameters.Add("@userid", senderObject.UserId);
                parameters.Add("@marketid", senderObject.MarketId);
                parameters.Add("@datestart", senderObject.ConversationDateStart);
                parameters.Add("@dateend", senderObject.ConversationDateEnd);

                CommandParameter queryCommand = new CommandParameter("chat.ChatReport_GetByFilter_Sp", parameters);

                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                result = new ObjectResultList<ReportChat>(dtresult);
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        /// <summary>
        /// Desconectar un Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public bool AccountManagerDisconnect(ObjectRequest<int> objectRequest)
        {
            bool result = false;

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@accountmanagerid", objectRequest.SenderObject);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_Disconnect_Sp", parameters);

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
        public ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@userid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString()));
                parameters.Add("@moduleappid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[1].ToString()));
                parameters.Add("@rolid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[2].ToString()));

                CommandParameter queryCommand = new CommandParameter("chat.AccountManagerConnect_GetList_Sp", parameters);

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
        public ObjectResultList<AccountManagerConnect> GetAccountManagerById(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@userid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString()));
                parameters.Add("@moduleappid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[1].ToString()));
                parameters.Add("@rolid", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[2].ToString()));

                CommandParameter queryCommand = new CommandParameter("chat.AccountManagerConnect_GetById_Sp", parameters);

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
        /// Obtener conversación para un Report.
        /// </summary>
        /// <param name="senderObject"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetListConversationByFilter(ObjectRequest<ConversationResponseEntity> senderObject)
        {
            ObjectResultList<ConversationResponseEntity> listUserConnect = new ObjectResultList<ConversationResponseEntity>();
            SqlCommand ObjCmd = null;
            DataTable dt = null;
            try
            {

                using (ObjCmd = new SqlCommand("chat.Chatmessage_Getlist_Sp", DbManager.Instance.OpenConnection()))
                {
                    ObjCmd.CommandType = CommandType.StoredProcedure;
                    ObjCmd.CommandTimeout = 0;
                    ObjCmd.Parameters.AddWithValue("@dateStart", senderObject.SenderObject.DateStart);
                    ObjCmd.Parameters.AddWithValue("@dateEnd", senderObject.SenderObject.DateEnd);
                    ObjCmd.Parameters.AddWithValue("@distributorid", senderObject.SenderObject.Distributorid);
                    ObjCmd.Parameters.AddWithValue("@username", senderObject.SenderObject.UserName);
                    ObjCmd.Parameters.Add(new SqlParameter { ParameterName = "@type_baseid_market", Value = senderObject.SenderObject.ListMarkets, SqlDbType = SqlDbType.Structured, TypeName = "dbo.TabType_ID" });
                    ObjCmd.Parameters.Add(new SqlParameter { ParameterName = "@type_baseid_agent", Value = senderObject.SenderObject.ListAgents, SqlDbType = SqlDbType.Structured, TypeName = "dbo.TabType_ID" });
                    dt = new DataTable();
                    dt.Load(ObjCmd.ExecuteReader());
                    listUserConnect = new ObjectResultList<ConversationResponseEntity>(dt);
                };

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

        public ObjectResult<UserRoleType> UsersGetRoleType(ObjectRequest<string> objectRequest)
        {
            SqlCommand ObjCmd = null;
            ObjectResult<UserRoleType> result = new ObjectResult<UserRoleType>();
            String parmUserId = Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString());
            try
            {
                using (ObjCmd = new SqlCommand("chat.Users_GetRoleType_Sp", DbManager.Instance.OpenConnection()))
                {
                    ObjCmd.CommandType = CommandType.StoredProcedure;
                    ObjCmd.CommandTimeout = 0;
                    #region ParametersOutPut
                    SqlParameter outputParam = ObjCmd.Parameters.Add("@rolOutput", SqlDbType.Int);
                    outputParam.Direction = ParameterDirection.Output;
                    #endregion ParametersOutPut
                    ObjCmd.Parameters.AddWithValue("@userId", parmUserId);
                    ObjCmd.ExecuteNonQuery();
                    result.Id = Convert.ToInt32(ObjCmd.Parameters["@rolOutput"].Value);
                };
            }
            catch (Exception ex)
            {
                result.Message = ex.Message;
                result.Id = -1;
            }
            return result;
        }

        public ObjectResultList<AccountManagerConnect> GetListAgentByManager(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@managerId", Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString()));

                CommandParameter queryCommand = new CommandParameter("chat.Accountmanagerconnect_Getbymanagerid_Sp", parameters);

                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                result = new ObjectResultList<AccountManagerConnect>(dtresult);
                result.Id = Convert.ToInt32(Encryption.Decrypt(objectRequest.SenderObject.Split(';')[0].ToString()));
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

        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatAndAgentId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> listUserConnect = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@chatid", objectRequest.SenderObject.Split(';')[0].ToString());
                parameters.Add("@agentid", objectRequest.SenderObject.Split(';')[1].ToString());

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_GetListConversationsByChatAndAgentId_Sp", parameters);
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

    }
}
