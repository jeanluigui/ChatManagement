using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using xChatEntities;
using xChatUtilities;

namespace xChatWeb.Controllers
{
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

            // ----------------------------------------------
            // Obtener lista de agentes conectados de un determinado módulo.
            // ----------------------------------------------
            ObjectRequest<string> objectRequest = new ObjectRequest<string>()
            {
                //usuario-aplicacion-rol manager
                SenderObject = $"{originalParamId};{originalParamAppId};{originalParamRolId}"
            };

            ObjectResultList<AccountManagerConnect> lstAgents = RequestService.ExecuteList<AccountManagerConnect, string>(Constants.UrlApiService.GetListAccountManagerConnectByModuleAppId
                , "POST"
                , objectRequest
                );

            ObjectResultList<AccountManagerConnect> lstAgentResult = lstAgents;
            ViewBag.AgentActive = lstAgentResult;

            return View(lstAgents.Elements);
        }

        public ActionResult AgentList(int agentId)
        {

            return PartialView();
        }

    }
}