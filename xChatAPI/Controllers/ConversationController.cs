using System;
using System.Data;
using System.Web.Http;
using xChatEntities;
using xSqlService;

namespace xChatAPI.Controllers
{
    public class ConversationController : ApiController
    {
        [HttpPost]
        public ObjectResult SecurityAccess(SecurityAccessRequestEntity securityAccessReq)
        {
            DataTable dtresultado = new DataTable();

            SecurityAccessResponseEntity response = new SecurityAccessResponseEntity
            {
                Token = Guid.NewGuid().ToString()
            };

            ObjectResult result = new ObjectResult
            {
                Data = response
            };

            return result;
        }

        [HttpPost]
        protected ObjectResult ValidateAccess(SecurityAccessRequestEntity securityAccessReq)
        {
            DataTable dtresultado = new DataTable();

            SecurityAccessResponseEntity response = new SecurityAccessResponseEntity
            {
                Token = Guid.NewGuid().ToString()
            };

            ObjectResult result = new ObjectResult
            {
                Data = response
            };

            return result;
        }

        [HttpPost]
        public ObjectResult ListConversation(ConversationRequestEntity conversationRequest)
        {
            ObjectResult result = new ObjectResult();
            ListConversationResponseEntity listConversations = new ListConversationResponseEntity();

            try
            {

                result.Data = listConversations;
            }
            catch(Exception ex)
            {

            }

            return result;
        }
    }
}
