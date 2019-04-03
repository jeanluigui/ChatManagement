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

        public ListUserConnect GetListUserConnectByAccountManagerId(ObjectRequest objectRequest)
        {
            ListUserConnect listUserConnect = new ListUserConnect();

            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_accountmanagerid"] = objectRequest.SenderObject;

                DataTable dtresult = xSqlService.XirectServiceSQL.Instancia.EjecutarTabla("chat.AccountManager", "GetListUserConnect", htparam);

                listUserConnect = new ListUserConnect(dtresult);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return listUserConnect;
        }

        public ListConversationResponseEntity GetListConversationByChatId(ObjectRequest objectRequest)
        {
            ListConversationResponseEntity listUserConnect = new ListConversationResponseEntity();

            try
            {
                Hashtable htparam = new Hashtable();

                htparam["@p_chatid"] = objectRequest.SenderObject;

                DataTable dtresult = xSqlService.XirectServiceSQL.Instancia.EjecutarTabla("chat.AccountManager", "GetListConversationsByChatId", htparam);

                listUserConnect = new ListConversationResponseEntity(dtresult);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return listUserConnect;
        }

    }
}
