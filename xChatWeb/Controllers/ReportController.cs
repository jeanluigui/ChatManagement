using System.Web.Mvc;
using xChatEntities;
using xChatUtilities;
using xChatWeb.Models;

namespace xChatWeb.Controllers
{
    public class ReportController : Controller
    {
        private readonly VMReportFilter filter = new VMReportFilter();

        #region View Index

        // GET: Report
        public ActionResult Index()
        {
            // ----------------------------------------------
            // Obtener Lista Maestra para Mercados.
            // ----------------------------------------------

            ViewBag.ListMarket = MasterContainer.GetList(EntityMasterEnum.Market);

            return View(filter);
        }

        [HttpPost]
        public ActionResult Index(VMReportFilter vmreport)
        {
            // ----------------------------------------------
            // Obtener Report.
            // ----------------------------------------------

            ReportFilter filter = new ReportFilter()
            {
                AgentId = vmreport.AgentId,
                ConversationDateEnd = vmreport.ConversationDateEnd,
                ConversationDateStart = vmreport.ConversationDateStart,
                MarketId = vmreport.MarketId,
                UserId = vmreport.UserId
            };

            var objectRequest = new ObjectRequest<ReportFilter>() { SenderObject = filter };

            vmreport.ReportMain = RequestService.ExecuteList<ReportChat, ReportFilter>(Constants.UrlApiService.GetReportChat
                , "POST"
                , objectRequest).Elements;

            ViewBag.ListMarket = MasterContainer.GetList(EntityMasterEnum.Market);

            return View(vmreport);
        }

        #endregion

        public ActionResult ConversationDetail(string agentId, string userId, string dateStart, string dateEnd, string agentName, string userName)
        {
            ObjectResultList<ConversationResponseEntity> listConversations = null;

            ObjectRequest<string> objectRequest = new ObjectRequest<string>()
            {
                SenderObject = $"{agentId};{userId};{dateStart};{dateEnd}"
            };

            listConversations = RequestService.ExecuteList<ConversationResponseEntity, string>(Constants.UrlApiService.GetListConversationByReport
            , "POST"
            , objectRequest);

            ViewBag.AgentName = agentName;
            ViewBag.UserName = userName;
            ViewBag.DateStart = dateStart;
            ViewBag.DateEnd = dateEnd;

            return View(listConversations.Elements);
        }

        #region Partial

        /// <summary>
        /// Action que permite obtener la lista de conversación.
        /// </summary>
        /// <param name="agentId"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        public PartialViewResult ConversationListAction(string agentId, string userId)
        {
            ObjectResultList<ConversationResponseEntity> listConversations = null;

            ObjectRequest<string> objectRequest = new ObjectRequest<string>()
            {
                SenderObject = $"{agentId};{userId}"
            };

            listConversations = RequestService.ExecuteList<ConversationResponseEntity, string>(Constants.UrlApiService.GetListConversationByReport
            , "POST"
            , objectRequest);

            return PartialView("_ConversationList", listConversations.Elements);
        }

        #endregion

    }
}
