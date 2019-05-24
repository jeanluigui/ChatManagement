using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatWebApi.Controllers
{
    /// <summary>
    /// Controlador para llamadas al API.
    /// </summary>
    public class ConversationController : ApiController
    {
        //private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);
        private IServiceChatManagerBL _serviceChatManagerBL;

        /// <summary>
        /// Constructor para injectar instancia de clase de negocio.
        /// </summary>
        /// <param name="serviceChatManagerBL"></param>
        public ConversationController(IServiceChatManagerBL serviceChatManagerBL)
        {
            _serviceChatManagerBL = serviceChatManagerBL;
        }

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
                result = _serviceChatManagerBL.GetListUserConnectByAccountManagerId(objectRequest);
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
                list = _serviceChatManagerBL.GetListConversationByChatId(objectRequest);
            }
            catch (Exception ex)
            {
                list.Id = 1;
                list.Message = ex.Message;
            }

            return list;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListConversationByReport")]
        [Route("api/Conversation/GetListConversationByReport/")]
        public ObjectResultList<ConversationResponseEntity> GetListConversationByReport(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<ConversationResponseEntity> list = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                list = _serviceChatManagerBL.GetListConversationByReport(objectRequest);
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
                    Data = _serviceChatManagerBL.ConversationMoveTo(objectRequest),
                    Id = 0,
                    Message = string.Empty
                };
            }
            catch (Exception ex)
            {
                result.Data = 0;
                result.Id = 1;
                result.Message = ex.Message;
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
                result = _serviceChatManagerBL.GetListAccountManagerConnectByModuleAppId(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Retorna lista de agentes conectados de un determinado módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetAccountManagerById")]
        [Route("api/Conversation/GetAccountManagerById/")]
        public ObjectResultList<AccountManagerConnect> GetAccountManagerById(ObjectRequest<string> objectRequest)
        {
            ObjectResultList<AccountManagerConnect> result = new ObjectResultList<AccountManagerConnect>();

            try
            {
                result = _serviceChatManagerBL.GetAccountManagerById(objectRequest);
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
                result = _serviceChatManagerBL.AccountManagerDisconnect(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }


        /// <summary>
        /// Reporte Main.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetReport")]
        [Route("api/Conversation/GetReport/")]
        public ObjectResult<ListReportChat> GetReport(ObjectRequest<ReportFilter> objectRequest)
        {
            ListReportChat listResult = new ListReportChat();
            ObjectResult<ListReportChat> result = new ObjectResult<ListReportChat>();

            try
            {
                listResult.Elements = _serviceChatManagerBL.GetReport(objectRequest).Elements;

                result.Data = listResult;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }


        /// <summary>
        /// METODO PARA REALZIAR PRUEBAS DIVERSAS.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [ActionName("DemoTest")]
        [Route("api/Conversation/DemoTest/")]
        public ObjectResult<string> DemoTest()
        {
            ObjectResult<string> result = new ObjectResult<string>();

            #region Probar proceso de encriptación

            //ServiceChatBL.Instancia.ProcessSetEncrypMessage();

            #endregion

            #region Probar envío de correo.

            //try
            //{
            //    IServiceNotificationBL _service = new ServiceNotificationBL();

            //    _service.Send(new ConversationEntity()
            //    {
            //        UserName = "Juan Perez",
            //        Message = "Hola, tengo problemas con mi correoo..",
            //    });
            //}
            //catch (Exception ex)
            //{
            //    result.Id = 1;
            //    result.Message = ex.Message;
            //}

            #endregion

            return result;
        }
    }
}
