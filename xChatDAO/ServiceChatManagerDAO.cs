using System;
using System.Collections;
using System.Data;
using xChatEntities;

namespace xChatDAO
{
    public class ServiceChatManagerDAO
    {
        private static readonly ServiceChatManagerDAO _service = new ServiceChatManagerDAO();

        public static ServiceChatManagerDAO Instancia
        {
            get { return _service; }
        }

        public ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> listUserConnect = new ObjectResultList<UserConnect>();

            try
            {
                Hashtable htparam = new Hashtable
                {
                    ["@p_accountmanagerid"] = objectRequest.SenderObject
                };

                DataTable dtresult = xSqlService.XirectServiceSQL.Instancia.EjecutarTabla("chat.AccountManager", "GetListUserConnect", htparam);

                listUserConnect = new ObjectResultList<UserConnect>(dtresult);
            }
            catch (Exception ex)
            {
                listUserConnect.Id = 1;
                listUserConnect.Message = ex.Message;
            }

            return listUserConnect;
        }

        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> listUserConnect = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                Hashtable htparam = new Hashtable
                {
                    ["@p_chatid"] = objectRequest.SenderObject
                };

                DataTable dtresult = xSqlService.XirectServiceSQL.Instancia.EjecutarTabla("chat.AccountManager", "GetListConversationsByChatId", htparam);

                listUserConnect = new ObjectResultList<ConversationResponseEntity>(dtresult);
            }
            catch (Exception ex)
            {
                listUserConnect.Id = 1;
                listUserConnect.Message = ex.Message;
            }

            return listUserConnect;
        }

        public void ConversationMoveTo(ObjectRequest<ConversationMoveEntity> objectRequest)
        {
            try
            {
                Hashtable htparam = new Hashtable
                {
                    ["@p_chatidsource"] = objectRequest.SenderObject.ChatIdSource,
                    ["@p_chatidtarget"] = objectRequest.SenderObject.ChatIdTarget
                };

                xSqlService.XirectServiceSQL.Instancia.EjecutarComando("chat.Conversation", "MoveTo", htparam);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool AccountManagerDisconnect(ObjectRequest<int> objectRequest)
        {
            try
            {
                Hashtable htparam = new Hashtable
                {
                    ["@p_accountmanagerid"] = objectRequest.SenderObject
                };

                xSqlService.XirectServiceSQL.Instancia.EjecutarComando("chat.AccountManager", "Disconnect", htparam);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return true;
        }

        public ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                Hashtable htparam = new Hashtable
                {
                    ["@p_moduleappid"] = objectRequest.SenderObject
                };

                DataTable dtresult = xSqlService.XirectServiceSQL.Instancia.EjecutarTabla("chat.AccountManagerConnect", "GetList", htparam);

                result = new ObjectResultList<AccountManagerConnect>(dtresult);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;

        }

    }
}
