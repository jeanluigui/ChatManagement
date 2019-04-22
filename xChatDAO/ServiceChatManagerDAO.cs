using System;
using System.Collections;
using System.Data;
using xChatEntities;
using xss.ConnectionManager;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatDAO
{
    public static class ServiceChatManagerDAO
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

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

        public static ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@p_userid", objectRequest.SenderObject.Split(';')[0].ToString());
                parameters.Add("@p_moduleappid", objectRequest.SenderObject.Split(';')[1].ToString());
                parameters.Add("@p_rolid", objectRequest.SenderObject.Split(';')[2].ToString());

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

    }
}
