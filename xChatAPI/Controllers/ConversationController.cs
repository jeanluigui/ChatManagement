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
            ObjectResult<ListUserConnect> list = new ObjectResult<ListUserConnect>();

            try
            {
                list = new ObjectResult<ListUserConnect>()
                {
                    Data = ServiceChatManagerBL.Instancia.GetListUserConnectByAccountManagerId(objectRequest),
                    Id = 0,
                    Message = string.Empty
                };
            }
            catch(Exception ex)
            {
                list = new ObjectResult<ListUserConnect>()
                {
                    Data = null,
                    Id = 1,
                    Message = ex.Message
                };
            }

            return list;
        }

        /// <summary>
        /// Devuelve la conversación de un ChatId.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListConversationByChatId")]
        [Route("api/Conversation/GetListConversationByChatId/")]
        public ObjectResult<ListConversationResponseEntity>  GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResult<ListConversationResponseEntity> list = new ObjectResult<ListConversationResponseEntity>();

            try
            {
                list = new ObjectResult<ListConversationResponseEntity>()
                {
                    Data = ServiceChatManagerBL.Instancia.GetListConversationByChatId(objectRequest),
                    Id = 0,
                    Message = string.Empty
                };
            }
            catch (Exception ex)
            {
                list = new ObjectResult<ListConversationResponseEntity>()
                {
                    Data = null,
                    Id = 1,
                    Message = ex.Message
                };
            }

            return list;
        }

    }
}
