using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatAPI.Controllers
{
    public class ConversationController : ApiController
    {
        //private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        /// <summary>
        /// Devuelve la lista de usuarios conectados asociados al Account Manager.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListUserConnectByAccountManagerId")]
        [Route("api/Conversation/GetListUserConnectByAccountManagerId/")]
        public ObjectResultList<UserConnect> GetListUserConnectByAccountManagerId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<UserConnect> result = new ObjectResultList<UserConnect>();

            try
            {
                result = ServiceChatManagerBL.Instancia.GetListUserConnectByAccountManagerId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Devuelve la conversación de un ChatId.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListConversationByChatId")]
        [Route("api/Conversation/GetListConversationByChatId/")]
        public ObjectResultList<ConversationResponseEntity> GetListConversationByChatId(ObjectRequest<int> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> list = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                list = ServiceChatManagerBL.Instancia.GetListConversationByChatId(objectRequest);
            }
            catch (Exception ex)
            {
                list.Id = 1;
                list.Message = ex.Message;
            }

            return list;
        }

        /// <summary>
        /// Mueve una conversación hacia otro Agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("ConversationMoveTo")]
        [Route("api/Conversation/ConversationMoveTo/")]
        public ObjectResult<int> ConversationMoveTo(ObjectRequest<ConversationMoveEntity> objectRequest)
        {
            ObjectResult<int> result = new ObjectResult<int>();

            try
            {
                result = new ObjectResult<int>()
                {
                    Data = ServiceChatManagerBL.Instancia.ConversationMoveTo(objectRequest),
                    Id = 0,
                    Message = string.Empty
                };
            }
            catch (Exception ex)
            {
                result = new ObjectResult<int>()
                {
                    Data = 0,
                    Id = 1,
                    Message = ex.Message
                };
            }

            return result;
        }

        /// <summary>
        /// Retorna lista de agentes conectados de un determinado módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListAccountManagerConnectByModuleAppId")]
        [Route("api/Conversation/GetListAccountManagerConnectByModuleAppId/")]
        public ObjectResultList<AccountManagerConnect> GetListAccountManagerConnectByModuleAppId(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                result = ServiceChatManagerBL.Instancia.GetListAccountManagerConnectByModuleAppId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Permite desconectar a un agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("AccountManagerDisconnect")]
        [Route("api/Conversation/AccountManagerDisconnect/")]
        public ObjectResult<bool> AccountManagerDisconnect(ObjectRequest<int> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                result = ServiceChatManagerBL.Instancia.AccountManagerDisconnect(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }


        /// <summary>
        /// Permite desconectar a un agente.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpGet]
        [ActionName("DemoTest")]
        [Route("api/Conversation/DemoTest/")]
        public ObjectResult<string> DemoTest()
        {
            ObjectResult<string> result = new ObjectResult<string>();

            try
            {
                IServiceNotificationBL _service = new ServiceNotificationBL();

                _service.Send(new ConversationEntity()
                {
                    UserName = "Juan Perez",
                    Message = "Hola, tengo problemas con mi correoo..",
                });
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
