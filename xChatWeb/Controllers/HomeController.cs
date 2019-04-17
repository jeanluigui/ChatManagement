using Newtonsoft.Json;
using System;
using System.Web;
using System.Web.Mvc;
using xChatEntities;
using xChatUtilities;
using xChatWeb.Models;
using xss.EncryptionHandler;

namespace xChatWeb.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(/*string paramId, string paramAppId, string paramRolId*/)
        {
            // ----------------------------------------------
            // el parámetro paramId recibe el identificador del usuario
            // de corporate.
            // debe ser descriptado.
            // ----------------------------------------------

            //String originalParamId = Encryption.Decrypt(HttpUtility.UrlDecode(paramId));
            //String originalParamAppId = Encryption.Decrypt(HttpUtility.UrlDecode(paramAppId));
            //String originalParamRolId = Encryption.Decrypt(HttpUtility.UrlDecode(paramRolId));

            ViewBag.error = "";

            // ----------------------------------------------
            // Obtener lista de agentes conectados de un determinado módulo.
            // ----------------------------------------------
            ObjectRequest<string> objectRequest = new ObjectRequest<string>()
            {
                            //usuario-aplicacion-rol manager
                SenderObject = $"{1};{1};{86}"
            };

            ObjectResultList<AccountManagerConnect> lstAgents = RequestService.ExecuteList<AccountManagerConnect, string>(Constants.UrlApiService.GetListAccountManagerConnectByModuleAppId
                , "POST"
                , objectRequest
                );

            ObjectResultList<AccountManagerConnect> lstAgentResult = lstAgents;
            ViewBag.AgentActive = lstAgentResult;
       
            return View();
        }

        [HttpPost]
        public JsonResult MyConversationShow(String data)
        {
            ObjectResultList<ConversationResponseEntity> listConversations = null;
            try
            {
                VMUserConnect modelData = JsonConvert.DeserializeObject<VMUserConnect>(data);
                
                if (modelData.UserConnect.ChatId > 0)
                {
                    
                    ObjectRequest<int> objectRequest = new ObjectRequest<int>()
                    {
                        SenderObject = modelData.UserConnect.ChatId
                    };

                    listConversations  = RequestService.ExecuteList<ConversationResponseEntity, int>(Constants.UrlApiService.GetListConversationByChatId
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
        public JsonResult MyUserActiveShow(String data)
        {
            ObjectResultList<UserConnect> lstUserConnect = null;
            try
            {
                VMAccountManager modelData = JsonConvert.DeserializeObject<VMAccountManager>(data);

                if (modelData.AccountManagerEntity.AccountManagerId > 0)
                {

                    ObjectRequest<int> objectRequest = new ObjectRequest<int>()
                    {
                        SenderObject = modelData.AccountManagerEntity.AccountManagerId
                    };

                    lstUserConnect = RequestService.ExecuteList<UserConnect, int>(Constants.UrlApiService.GetListUserConnectByAccountManagerId
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