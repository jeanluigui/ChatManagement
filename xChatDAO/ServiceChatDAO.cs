using System;
using System.Collections;
using System.Data;
using xChatEntities;

namespace xChatDAO
{
    public class ServiceChatDAO
    {
        private static readonly ServiceChatDAO _service = new ServiceChatDAO();

        public static ServiceChatDAO Instancia
        {
            get { return _service; }
        }

        public Int32 ChatCreate(ConversationEntity conversationEntity)
        {
            Int32 chatId = 0;

            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_username"] = conversationEntity.UserName;
                htparam["@p_useremail"] = conversationEntity.UserEmail;
                htparam["@p_usertoken"] = conversationEntity.UserToken;
                htparam["@p_moduleappid"] = conversationEntity.ModuleAppId;
                htparam["@p_accountmanagerconnectid"] = this.GetAccountManagerConnectId(conversationEntity);
                         
                DataRow drresult = xSqlService.XirectServiceSQL.Instancia.EjecutarRegistro("chat.Chat", "Insert", htparam);

                chatId = Convert.ToInt32(drresult["ChatId"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return chatId;
        }

        public Int32 ChatMessageCreate(ConversationEntity conversationEntity)
        {
            Int32 chatMessageId = 0;

            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_chatid"] = conversationEntity.ChatId;
                htparam["@p_chatmessagesentry"] = conversationEntity.Message;
                htparam["@p_chatdate"] = DateTime.Now;
                htparam["@p_chatmessageisusersend"] = conversationEntity.IsSendUser;

                DataRow drresult = xSqlService.XirectServiceSQL.Instancia.EjecutarRegistro("chat.ChatMessages", "Insert", htparam);

                chatMessageId = Convert.ToInt32(drresult["chatMessageId"]);

                conversationEntity.UserToken = drresult["UserToken"].ToString();
                conversationEntity.ManagerToken = drresult["AccountManagerToken"].ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return chatMessageId;
        }

        public string GetManagerToken(ConversationEntity conversationEntity)
        {
            string managerToken = string.Empty;

            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_chatid"] = conversationEntity.ChatId;

                DataRow drresult = xSqlService.XirectServiceSQL.Instancia.EjecutarRegistro("chat.ManagerAccountConnect", "GetTokenActive", htparam);

                managerToken = drresult["AccountManagerToken"].ToString();
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
                Hashtable htparam = new Hashtable();

                htparam["@p_accountmanagerid"] = accountManagerEntity.AccountManagerId;
                htparam["@p_moduleappid"] = accountManagerEntity.ModuloAppId;

                xSqlService.XirectServiceSQL.Instancia.EjecutarComando("chat.AccountManagerConnect", "Disable", htparam);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_moduleappid"] = accountManagerEntity.ModuloAppId;
                htparam["@p_accountmanagerid"] = accountManagerEntity.AccountManagerId;
                htparam["@p_accountmanagertoken"] = accountManagerEntity.Token;
                htparam["@p_accountmanagerconnectdatestart"] = DateTime.Now;

                xSqlService.XirectServiceSQL.Instancia.EjecutarComando("chat.AccountManagerConnect", "Insert", htparam);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Int32 GetAccountManagerConnectId(ConversationEntity conversationEntity)
        {
            Int32 accountManagerConnectId = 0;

            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_moduleappid"] = conversationEntity.ModuleAppId;

                DataRow drresult= xSqlService.XirectServiceSQL.Instancia.EjecutarRegistro("chat.AccountManager", "SearchByModulo", htparam);

                if (drresult != null && !drresult.IsNull("AccountManagerConnectId"))
                {
                    accountManagerConnectId = Convert.ToInt32(drresult["AccountManagerConnectId"]);
                    conversationEntity.ManagerToken = drresult["accountmanagertoken"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return accountManagerConnectId;
        }
    }

}
