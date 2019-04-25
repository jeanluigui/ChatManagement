using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using xChatEntities;
using xss.ConnectionManager;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatDAO
{
    public static class ServiceChatDAO
    {
        //private static readonly ServiceChatDAO _service = new ServiceChatDAO();

        //public static ServiceChatDAO Instancia
        //{
        //    get { return _service; }
        //}
        
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

        public static int ChatCreate(ConversationEntity conversationEntity, Int32 accountManagerConnectId)
        {
            Int32 chatId = 0;

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_distributorid", conversationEntity.DistributorId);
                parameters.Add("@p_username", conversationEntity.UserName);
                parameters.Add("@p_useremail", conversationEntity.UserEmail);
                parameters.Add("@p_usertoken", conversationEntity.UserToken);
                parameters.Add("@p_moduleappid", conversationEntity.ModuleAppId);
                parameters.Add("@p_accountmanagerconnectid", accountManagerConnectId);

                CommandParameter queryCommand = new CommandParameter("chat.Chat_Insert_pa", parameters);
                DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

                chatId = Convert.ToInt32(rowResult["ChatId"]);
            }
            catch(TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return chatId;
        }

        public static ObjectResultList<ChatToken> ChatDisconnected(string connectionId)
        {
            ObjectResultList<ChatToken> tokenDestino = new ObjectResultList<ChatToken>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chattoken", connectionId);

                CommandParameter queryCommand = new CommandParameter("chat.Chat_Disconnected_pa", parameters);
                DataTable dataTable = DbManager.Instance.ExecuteTable(queryCommand);

                tokenDestino = new ObjectResultList<ChatToken>(dataTable);
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return tokenDestino;
        }

        public static int ChatMessageCreate(ConversationEntity conversationEntity)
        {
            int chatMessageId = 0;

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chatid", conversationEntity.ChatId);
                parameters.Add("@p_chatmessagesentry", conversationEntity.Message);
                parameters.Add("@p_chatdate", DateTime.Now);
                parameters.Add("@p_chatmessageisusersend", conversationEntity.IsSendUser);

                CommandParameter queryCommand = new CommandParameter("chat.ChatMessages_Insert_pa", parameters);
                DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

                chatMessageId = Convert.ToInt32(rowResult["chatMessageId"]);

                conversationEntity.UserToken = rowResult["UserToken"].ToString();
                conversationEntity.ManagerToken = rowResult["AccountManagerToken"].ToString();
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return chatMessageId;
        }

        /// <summary>
        /// Establece el CHATID como Leído por el Manager
        /// </summary>
        /// <param name="conversationEntity"></param>
        public static void SetMessageReadForManager(ConversationEntity conversationEntity)
        {
            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chatid", conversationEntity.ChatId);
                parameters.Add("@p_chatdate", DateTime.Now);

                CommandParameter queryCommand = new CommandParameter("chat.Chat_SetMessageReadForManager_pa", parameters);
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
        /// Registrar desconexión de un usuario.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public static void UserDisconnectForManager(ConversationEntity conversationEntity)
        {
            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chatid", conversationEntity.ChatId);
                parameters.Add("@p_chatdate", DateTime.Now);

                CommandParameter queryCommand = new CommandParameter("chat.Chat_UserDisconnect_pa", parameters);
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

        public static string GetManagerToken(ConversationEntity conversationEntity)
        {
            string managerToken = string.Empty;

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_chatid", conversationEntity.ChatId);

                CommandParameter queryCommand = new CommandParameter("chat.ManagerAccountConnect_GetTokenActive_pa", parameters);
                DataRow rowResult = DbManager.Instance.ExecuteRegister(queryCommand);

                managerToken = rowResult["AccountManagerToken"].ToString();
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return managerToken;
        }

        public static void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_accountmanagerid", accountManagerEntity.AccountManagerId);
                parameters.Add("@p_moduleappid", accountManagerEntity.ModuloAppId);

                CommandParameter queryCommand = new CommandParameter("chat.ManagerAccountConnect_GetTokenActive_pa", parameters);

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

        public static void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {

                ListParameters parameters = new ListParameters();
                parameters.Add("@p_moduleappid", accountManagerEntity.ModuloAppId);
                parameters.Add("@p_accountmanagerid", accountManagerEntity.AccountManagerId);
                parameters.Add("@p_accountmanagertoken", accountManagerEntity.Token);
                parameters.Add("@p_accountmanagerconnectdatestart", DateTime.Now);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManagerConnect_Insert_pa", parameters);

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

        public static Int32 GetAccountManagerConnectId(ConversationEntity conversationEntity)
        {
            Int32 accountManagerConnectId = 0;

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_moduleappid", conversationEntity.ModuleAppId);

                CommandParameter queryCommand = new CommandParameter("chat.AccountManager_SearchByModulo_pa", parameters);

                DataRow drresult = DbManager.Instance.ExecuteRegister(queryCommand);

                if (drresult != null && !drresult.IsNull("AccountManagerConnectId"))
                {
                    accountManagerConnectId = Convert.ToInt32(drresult["AccountManagerConnectId"]);
                    conversationEntity.ManagerToken = drresult["accountmanagertoken"].ToString();
                }
            }
            catch (TimeoutException tout)
            {
                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return accountManagerConnectId;
        }
    }

}
