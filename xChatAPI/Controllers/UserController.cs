using System.Web.Http;
using xChatEntities;

namespace xChatAPI.Controllers
{
    public class UserController : ApiController
    {
        public ObjectResult<ConversationResponseEntity> ConversationRequest(ConversationRequestEntity conversationRequestEntity)
        {
            ObjectResult<ConversationResponseEntity> result = new ObjectResult<ConversationResponseEntity>()
            {
                Id = 100,
                Message = "Hola Mundo...",
                Data = new ConversationResponseEntity()
            };

            return result;
        }
    }
}
