using System;
using System.Data;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatAPI.Controllers
{
    public class ConversationController : ApiController
    {
        /// <summary>
        /// Devuelve la lista de usuarios conectados asociados al Account Manager.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListUserConnectByAccountManagerId")]
        [Route("api/Conversation/GetListUserConnectByAccountManagerId/")]
        public ObjectResult<ListUserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ListUserConnect listUserConnect = new ListUserConnect();

            try
            {
                listUserConnect = ServiceChatManagerBL.Instancia.GetListUserConnectByAccountManagerId(objectRequest);
            }
            catch(Exception ex)
            {
                throw ex;
            }

            ObjectResult<ListUserConnect> list = new ObjectResult<ListUserConnect>()
            {
                Data = listUserConnect,
                Id = 0,
                Message = string.Empty
            };

            return list;
        }

        /// <summary>
        /// Devuelve la conversación de un ChatId.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        public ListConversationResponseEntity GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ListConversationResponseEntity listUserConnect = new ListConversationResponseEntity();

            try
            {
                listUserConnect = ServiceChatManagerBL.Instancia.GetListConversationByChatId(objectRequest);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return listUserConnect;
        }

    }
}
