using System;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Data;
using xChatEntities;
using xAPI.Library.Connection;
//using xss.ConnectionManager;
//using xss.Logger.Enums;
//using xss.Logger.Factory;
//using xss.Logger.Interfaces;

namespace xChatDAO
{
    /// <summary>
    /// Clase gestora de la Capa de Datos.
    /// </summary>
    public static class ServiceChatDAO
    {
        //private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

        /// <summary>
        /// Crea y genera un ID de un Chat específico.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <param name="accountManagerConnectId"></param>
        /// <returns></returns>
        public static int ChatCreate(ConversationEntity conversationEntity, Int32 accountManagerConnectId)
        {
            Int32 chatId = 0;
            SqlCommand ObjCmd = null;
            Boolean success = false;
            DataTable rowResult = new DataTable();
            try
            {
                ObjCmd = new SqlCommand("chat.Chat_Insert_Sp", clsConnection.GetConnection());
                ObjCmd.CommandType = CommandType.StoredProcedure;
                ObjCmd.Parameters.AddWithValue("@distributorid", conversationEntity.DistributorId);
                ObjCmd.Parameters.AddWithValue("@username", conversationEntity.UserName);
                ObjCmd.Parameters.AddWithValue("@useremail", conversationEntity.UserEmail);
                ObjCmd.Parameters.AddWithValue("@usertoken", conversationEntity.UserToken);
                ObjCmd.Parameters.AddWithValue("@moduleappid", conversationEntity.ModuleAppId);
                ObjCmd.Parameters.AddWithValue("@accountmanagerconnectid", accountManagerConnectId);
                                  
                ObjCmd.Parameters.AddWithValue("@language", conversationEntity.ChatBySkillLanguageId);
                ObjCmd.Parameters.AddWithValue("@module", conversationEntity.ChatBySkillModuleId);

                //CommandParameter queryCommand = new CommandParameter("chat.Chat_Insert_Sp", parameters);
                //DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);
                SqlDataAdapter da = new SqlDataAdapter(ObjCmd);
                da.Fill(rowResult);
                success = true;
                foreach (DataRow item in rowResult.Rows) {
                    chatId = Convert.ToInt32(item["Chatid"]);
                }
                
            }
            catch (TimeoutException tout)
            {
                //log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                //log.Save(EnumLogLevel.Fatal, ex);
            }

            return chatId;
        }

        /// <summary>
        /// Actualiza el estado de un chat como desconectado.
        /// </summary>
        /// <param name="connectionId"></param>
        /// <returns></returns>
        public static ObjectResultList<ChatToken> ChatDisconnected(string connectionId)
        {
            ObjectResultList<ChatToken> tokenDestino = new ObjectResultList<ChatToken>();

            try
            {
                //ListParameters parameters = new ListParameters();
                //parameters.Add("@chattoken", connectionId);

                //CommandParameter queryCommand = new CommandParameter("chat.Chat_Disconnected_Sp", parameters);
                //DataTable dataTable = DbManager.Instance.ExecuteTable(queryCommand);

                //tokenDestino = new ObjectResultList<ChatToken>(dataTable);
            }
            catch (TimeoutException tout)
            {
                //log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                //log.Save(EnumLogLevel.Fatal, ex);
            }

            return tokenDestino;
        }

        /// <summary>
        /// Registra mensajes del chat.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <returns></returns>
        public static int ChatMessageCreate(ConversationEntity conversationEntity)
        {
            int chatMessageId = 0;
            SqlCommand ObjCmd = null;
            DataTable rowResult = new DataTable();
            try
            {
                ObjCmd = new SqlCommand("chat.ChatMessages_Insert_Sp", clsConnection.GetConnection());
                ObjCmd.CommandType = CommandType.StoredProcedure;
                ObjCmd.Parameters.AddWithValue("@chatid", conversationEntity.ChatId);
                ObjCmd.Parameters.AddWithValue("@chatmessagesentry", conversationEntity.Message);
                ObjCmd.Parameters.AddWithValue("@chatdate", DateTime.Now);
                ObjCmd.Parameters.AddWithValue("@chatmessageisusersend", conversationEntity.IsSendUser);
                ObjCmd.Parameters.AddWithValue("@managertoken", conversationEntity.ManagerToken);
                ObjCmd.Parameters.AddWithValue("@module", conversationEntity.ChatBySkillModuleId);
                ObjCmd.Parameters.AddWithValue("@language", conversationEntity.ChatBySkillLanguageId);

                //CommandParameter queryCommand = new CommandParameter("chat.ChatMessages_Insert_Sp", parameters);
                //DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);
                SqlDataAdapter da = new SqlDataAdapter(ObjCmd);
                da.Fill(rowResult);

                foreach (DataRow item in rowResult.Rows)
                {
                    chatMessageId = Convert.ToInt32(item["chatMessageId"]);
                    conversationEntity.UserToken = item["UserToken"].ToString();
                    conversationEntity.AgentToken = item["AccountManagerToken"].ToString();
                    conversationEntity.AgentId = Convert.ToInt32(item["AccountManagerId"]);
                }
               
            }
            catch (TimeoutException tout)
            {
                //log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                //log.Save(EnumLogLevel.Fatal, ex);
            }

            return chatMessageId;
        }

        /// <summary>
        /// Establece el CHATID como Leído por el Manager
        /// </summary>
        /// <param name="conversationEntity"></param>
        //public static void SetMessageReadForManager(ConversationEntity conversationEntity)
        //{
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@chatid", conversationEntity.ChatId);
        //        parameters.Add("@chatdate", DateTime.Now);

        //        CommandParameter queryCommand = new CommandParameter("chat.Chat_SetMessageReadForManager_Sp", parameters);
        //        DbManager.Instance.ExecuteCommand(queryCommand);
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        ///// <summary>
        ///// Registrar desconexión de un usuario.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        //public static Int32 UserDisconnectForManager(ConversationEntity conversationEntity)
        //{
        //    Int32 success = 0;
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@chatid", conversationEntity.ChatId);
        //        parameters.Add("@chatdate", DateTime.Now);

        //        CommandParameter queryCommand = new CommandParameter("chat.Chat_UserDisconnect_Sp", parameters);
        //        DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);
        //        if (rowResult != null)
        //        {
        //            success = Convert.ToInt32(rowResult["RowsAffect"].ToString());
        //        }
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        success = 0;
        //        log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        success = 0;
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //    return success;
        //}

        ///// <summary>
        ///// Obtener el tocken de un manager.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        ///// <returns></returns>
        //public static string GetManagerToken(ConversationEntity conversationEntity)
        //{
        //    string managerToken = string.Empty;

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@chatid", conversationEntity.ChatId);

        //        CommandParameter queryCommand = new CommandParameter("chat.ManagerAccountConnect_GetTokenActive_Sp", parameters);
        //        DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

        //        managerToken = rowResult["AccountManagerToken"].ToString();
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return managerToken;
        //}
        ///// <summary>
        ///// Obtener el token de un manager conectado por medio del id del agente.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        ///// <returns></returns>
        //public static string GetManagerTokenValue(ConversationEntity conversationEntity)
        //{
        //    string managerToken = string.Empty;

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@agentid", conversationEntity.AgentId);

        //        CommandParameter queryCommand = new CommandParameter("chat.ManagerConnect_GetTokenActive_Sp", parameters);
        //        DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

        //        managerToken = rowResult["AccountManagerToken"].ToString();
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return managerToken;
        //}

        ///// <summary>
        ///// Obtener el token de manager conectado por medio del su IdManager.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        ///// <returns></returns>
        //public static string GetManagerTokenValueByManagerId(ConversationEntity conversationEntity)
        //{
        //    string managerToken = string.Empty;

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@managerid", conversationEntity.ManagerId);

        //        CommandParameter queryCommand = new CommandParameter("chat.ManagerConnect_GetTokenActiveByManagerId_Sp", parameters);
        //        DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

        //        managerToken = rowResult["AccountManagerToken"].ToString();
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return managerToken;
        //}
        //public static ConversationEntity GetAgentAndManagerIdByToken(string token)
        //{
        //    ConversationEntity obj = new ConversationEntity();
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@token", token);

        //        CommandParameter queryCommand = new CommandParameter("chat.ManagerConnect_GetAgentIdActive_Sp", parameters);
        //        DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

        //        obj.ManagerId = Convert.ToInt32(rowResult["AccountManagerId"].ToString());
        //        obj.AgentId = Convert.ToInt32(rowResult["AgentId"].ToString());

        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return obj;
        //}

        ///// <summary>
        ///// Desconectar a un manager.
        ///// </summary>
        ///// <param name="accountManagerEntity"></param>
        //public static void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        //{
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@accountmanagerid", accountManagerEntity.AccountUserId);
        //        parameters.Add("@moduleappid", accountManagerEntity.ModuloAppId);

        //        CommandParameter queryCommand = new CommandParameter("chat.ManagerAccountConnect_GetTokenActive_Sp", parameters);

        //        DbManager.Instance.ExecuteCommand(queryCommand);
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        ///// <summary>
        ///// Conectar un Manager.
        ///// </summary>
        ///// <param name="accountManagerEntity"></param>
        public static void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            SqlCommand ObjCmd = null; Boolean success = false;
            try
            {
                ObjCmd = new SqlCommand("chat.AccountManagerConnect_Insert_Sp", clsConnection.GetConnection());
                ObjCmd.CommandType = CommandType.StoredProcedure;
                ObjCmd.Parameters.AddWithValue("@moduleappid", accountManagerEntity.ModuloAppId);
                ObjCmd.Parameters.AddWithValue("@accountmanagerid", accountManagerEntity.AccountUserId);
                ObjCmd.Parameters.AddWithValue("@accountmanagertoken", accountManagerEntity.Token);
                ObjCmd.Parameters.AddWithValue("@accountmanagerconnectdatestart", DateTime.Now);
                
                ObjCmd.ExecuteNonQuery();
                success = true;           
            }
            catch (TimeoutException tout)
            {
                //log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                //log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        ///// <summary>
        ///// Retorna un identificador de Conexión de Agente que cumpla las habilidades para atender el chat.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        ///// <param name="MinSkillLevelByModule"></param>
        ///// <param name="MinSkillLevelByLanguage"></param>
        ///// <returns></returns>
        //public static int GetAccountManagerConnectBySkillLevel(ConversationEntity conversationEntity)
        //{
        //    Int32 accountManagerConnectId = -2;

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@languageid", conversationEntity.ChatBySkillLanguageId);
        //        parameters.Add("@moduleid", conversationEntity.ChatBySkillModuleId);

        //        CommandParameter queryCommand = new CommandParameter("chat.AccountManager_SearchBySkill_Sp", parameters);

        //        DataRow drresult = DbManager.Instance.ExecuteRegister(queryCommand);

        //        if (drresult != null && !drresult.IsNull("AccountManagerConnectId"))
        //        {
        //            accountManagerConnectId = Convert.ToInt32(drresult["AccountManagerConnectId"]);
        //            conversationEntity.AgentToken = drresult["AccountManagerToken"].ToString();
        //        }
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return accountManagerConnectId;
        //}

        /// <summary>
        /// Obtener un Account Manager disponible.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <returns></returns>
        public static int GetAccountManagerConnectId(ConversationEntity conversationEntity)
        {
            Int32 accountManagerConnectId = 0;
            SqlCommand ObjCmd = null;
            DataTable rowResult = new DataTable();
            try
            {

                ObjCmd = new SqlCommand("chat.AccountManager_SearchByModulo_Sp", clsConnection.GetConnection());
                ObjCmd.CommandType = CommandType.StoredProcedure;
                ObjCmd.Parameters.AddWithValue("@moduleappid", conversationEntity.ModuleAppId);

                SqlDataAdapter da = new SqlDataAdapter(ObjCmd);
                da.Fill(rowResult);

                foreach (DataRow item in rowResult.Rows)
                {
                    accountManagerConnectId = Convert.ToInt32(item["AccountManagerConnectId"]);
                    conversationEntity.AgentToken = item["accountmanagertoken"].ToString();
                }               
            }
            catch (TimeoutException tout)
            {
                //log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                //log.Save(EnumLogLevel.Fatal, ex);
            }

            return accountManagerConnectId;
        }

        //#region Métodos Util para encriptar las conversaciones.

        ///// <summary>
        ///// Obtener todos los mensajes.
        ///// </summary>
        //public static List<ConversationEntity> GetAllMessages()
        //{
        //    List<ConversationEntity> result = new List<ConversationEntity>();

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();

        //        CommandParameter queryCommand = new CommandParameter("chat.Chat_GetAllMessages_Sp", parameters);

        //        DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

        //        foreach (DataRow dataRow in dtresult.Rows)
        //        {
        //            result.Add(new ConversationEntity()
        //            {
        //                Message = dataRow["messageAux"].ToString(),
        //                ChatId = Convert.ToInt32(dataRow["chatMessagesId"])
        //            }
        //            );
        //        }
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return result;
        //}

        ///// <summary>
        ///// Encriptar los mensajes
        ///// </summary>
        //public static void SetEncrypMessages(List<ConversationEntity> listaConversation)
        //{
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();

        //        foreach (ConversationEntity conversationEntity in listaConversation)
        //        {
        //            parameters = new ListParameters();

        //            parameters.Add("@id", conversationEntity.ChatId);
        //            parameters.Add("@message", conversationEntity.Message);

        //            CommandParameter queryCommand = new CommandParameter("chat.Chat_SetEncrypMessage_Sp", parameters);

        //            DbManager.Instance.ExecuteCommand(queryCommand);
        //        }

        //    }
        //    catch (TimeoutException tout)
        //    {
        //        log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public static ObjectResultList<AccountManagerConnect> GetListAgentByManager(ConversationEntity objectRequest)
        //{
        //    ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@managerId", objectRequest.ManagerId);

        //        CommandParameter queryCommand = new CommandParameter("chat.Accountmanagerconnect_Getbymanagerid_Sp", parameters);

        //        DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

        //        result = new ObjectResultList<AccountManagerConnect>(dtresult);

        //        ListAccountManagerConnect listAMC = new ListAccountManagerConnect(dtresult);

        //    }
        //    catch (TimeoutException tout)
        //    {
        //        result.Id = 2;
        //        result.Message = tout.Message;

        //        log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = 1;
        //        result.Message = ex.Message;

        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return result;
        //}
        //#endregion

        ///// <summary>
        ///// Mueve una conversación de un chat a otro.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public static Int32 ConversationMoveTo(ConversationEntity conversationEntity)
        //{
        //    Int32 success = 0;
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@accountManagerId", conversationEntity.AgentId); //Agente a quien se le transfiere
        //        parameters.Add("@chatid", conversationEntity.ChatId);           // Chat de usuario

        //        CommandParameter queryCommand = new CommandParameter("chat.Conversation_MoveTo_Sp", parameters);
        //        DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);
        //        if (rowResult != null)
        //        {
        //            conversationEntity.AgentToken = rowResult["AccountManagerToken"].ToString(); //Token del agente que se le transfirio chat
        //            conversationEntity.AgentId = Convert.ToInt32(rowResult["AccountManagerId"].ToString());  //Id del agente que se le transfirio chat
        //            conversationEntity.UserToken = rowResult["Accountusertoken"].ToString();  //Token del usuario del chat
        //            success = Convert.ToInt32(rowResult["RowsAffect"].ToString());
        //        }              
        //    }
        //    catch (TimeoutException tout)
        //    {
        //        success = 0;
        //        //log.Save(EnumLogLevel.Fatal, tout.Message);
        //    }
        //    catch (Exception ex)
        //    {
        //        success = 0; 
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //    return success;

        //}

    }

}
