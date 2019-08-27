using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using xChatEntities;
using xChatUtilities;
using xChatWeb.Models;
using xss.EncryptionHandler;

namespace xChatWeb.Controllers
{
    /// <summary>
    /// Controlador para la gestión del Manager
    /// </summary>
    public class ManagerController : Controller
    {
        public ActionResult Index(string paramId, string paramAppId, string paramRolId)
        {
            // ----------------------------------------------
            // el parámetro paramId recibe el identificador del usuario
            // de corporate.
            // debe ser descriptado.
            // ----------------------------------------------

            String originalParamId = paramId; // Encryption.Decrypt(HttpUtility.UrlDecode(paramId));
            String originalParamAppId = paramAppId;// Encryption.Decrypt(HttpUtility.UrlDecode(paramAppId));
            String originalParamRolId = paramRolId; // Encryption.Decrypt(HttpUtility.UrlDecode(paramRolId));

            ViewBag.error = "";

            #region Get RolType by User
            ObjectResult<UserRoleType> resultRolUser = new ObjectResult<UserRoleType>();
            ObjectRequest<string> objectUser = new ObjectRequest<string>()
            {
                SenderObject = $"{originalParamId};"
            };
            resultRolUser = RequestService.Execute<UserRoleType, string>(Constants.UrlApiService.UsersGetRoleType, "POST", objectUser);
            if (resultRolUser.Id > 0)
            {
                if (resultRolUser.Id == (Int32)EnumRolTypeChat.Agent)
                {
                    // ----------------------------------------------
                    // Obtener lista de agentes conectados de un determinado módulo.
                    // ----------------------------------------------           

                    ObjectRequest<string> objectRequest = new ObjectRequest<string>()
                    {
                        //usuario-aplicacion-rol manager
                        SenderObject = $"{originalParamId};{originalParamAppId};{originalParamRolId}"
                    };

                    ObjectResultList<AccountManagerConnect> lstAgents = RequestService.ExecuteList<AccountManagerConnect, string>(Constants.UrlApiService.GetAccountManagerById
                        , "POST"
                        , objectRequest
                        );

                    ObjectResultList<AccountManagerConnect> lstAgentResult = lstAgents;
                    ViewBag.AgentActive = lstAgentResult;
                    ViewBag.RolType = (Int32)EnumRolTypeChat.Agent;
                }

                if (resultRolUser.Id == (Int32)EnumRolTypeChat.Manager)
                {
                    // ----------------------------------------------
                    // Obtener lista de agentes de determinado Manager.
                    // ----------------------------------------------     

                    ObjectRequest<string> objectRequest = new ObjectRequest<string>()
                    {
                        //userId
                        SenderObject = $"{originalParamId};"
                    };

                    ObjectResultList<AccountManagerConnect> lstAgentsByManager = RequestService.ExecuteList<AccountManagerConnect, string>(Constants.UrlApiService.GetListAgentByManager
                        , "POST"
                        , objectRequest
                        );

                    ObjectResultList<AccountManagerConnect> lstAgentResult = lstAgentsByManager;
                    ViewBag.ListAgentByManager = lstAgentResult;
                    ViewBag.RolType = (Int32)EnumRolTypeChat.Manager;
                    ViewBag.ManagetId = lstAgentsByManager.Id;

               }
                
            }
            #endregion
            

            return View();
        }

        [HttpPost]
        public JsonResult MyConversationShow(String data)
        {
            ObjectResultList<ConversationResponseEntity> listConversations = null;
            try
            {
                VMUserConnect modelData = JsonConvert.DeserializeObject<VMUserConnect>(data);

                if (modelData.UserConnect.ChatId > 0 && modelData.UserConnect.AgentId > 0)
                {

                    ObjectRequest<string> objectRequest = new ObjectRequest<string>()
                    {
                        SenderObject = $"{modelData.UserConnect.ChatId};{modelData.UserConnect.AgentId};"
                    };

                    listConversations = RequestService.ExecuteList<ConversationResponseEntity, string>(Constants.UrlApiService.GetListConversationByChatAndAgentId
                    , "POST"
                    , objectRequest);
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Json(listConversations);
        }

        [HttpPost]
        public JsonResult GetListUserByAgent(String data)
        {
            ObjectResultList<UserConnect> lstUserConnect = null;
            try
            {
                VMAccountManager modelData = JsonConvert.DeserializeObject<VMAccountManager>(data);

                if (modelData.AccountManagerEntity.AccountUserId > 0)
                {

                    ObjectRequest<int> objectRequest = new ObjectRequest<int>()
                    {
                        SenderObject = modelData.AccountManagerEntity.AccountUserId
                    };

                    lstUserConnect = RequestService.ExecuteList<UserConnect, int>(Constants.UrlApiService.GetListUserByAccountManagerId
                    , "POST"
                    , objectRequest);
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Json(lstUserConnect);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            // ----------------------------------------------
            // Obtener lista de usuarios conectados.
            // ----------------------------------------------

            ObjectRequest<int> objectRequest = new ObjectRequest<int>() { SenderObject = 1 };

            ObjectResult<ListUserConnect> lista = RequestService.Execute<ListUserConnect, int>(Constants.UrlApiService.GetListUserConnectByAccountManagerId
                , "POST"
                , objectRequest);

            // ----------------------------------------------
            // Obtener conversación.
            // ----------------------------------------------
            objectRequest = new ObjectRequest<int>() { SenderObject = 3 };

            ObjectResultList<ConversationResponseEntity> listConversations = RequestService.ExecuteList<ConversationResponseEntity, int>(Constants.UrlApiService.GetListConversationByChatId
                , "POST"
                , objectRequest);

            return View(lista);
        }
    }
}