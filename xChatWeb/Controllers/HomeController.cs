using System;
using System.Web.Mvc;
using xChatEntities;
using xChatUtilities;

namespace xChatWeb.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.error = "";

            try
            {
                ConversationRequestEntity conversationRequestEntity;

                conversationRequestEntity = new ConversationRequestEntity()
                {
                    User = "Jesus"
                    ,
                    Email = "jhurtado73@hotmail.com"
                    ,
                    ModuleAppId = 1
                    ,
                    AccountManagerId = 0
                    ,
                    DateMessage = DateTime.Now
                };

                ObjectResult result = RequestService.Execute(Constants.Url.Listen, "post", conversationRequestEntity);
            }
            catch(Exception ex)
            {
                ViewBag.error = ex.Message;
            }

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}