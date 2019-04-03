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

            ListUserConnect listUserConnect = new ListUserConnect
            {
                Elementos = new System.Collections.Generic.List<UserConnect>
            {
                new UserConnect()
                {
                    ChatId = 1,
                    UserEmail = "correo1@correo.com",
                    UserName = "Anonimo 01",
                    UserToken = "token12345678"
                },

                new UserConnect()
                {
                    ChatId = 1,
                    UserEmail = "correo2@correo.com",
                    UserName = "Anonimo 02",
                    UserToken = "token12345678"
                },

                new UserConnect()
                {
                    ChatId = 1,
                    UserEmail = "correo3@correo.com",
                    UserName = "Anonimo 03",
                    UserToken = "token12345678"
                },

                new UserConnect()
                {
                    ChatId = 1,
                    UserEmail = "correo4@correo.com",
                    UserName = "Anonimo 04",
                    UserToken = "token12345678"
                },

                new UserConnect()
                {
                    ChatId = 1,
                    UserEmail = "correo5@correo.com",
                    UserName = "Anonimo 05",
                    UserToken = "token12345678"
                }
            }
            };

            ViewBag.UserActive = listUserConnect;
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
            objectRequest = new ObjectRequest<int>() { SenderObject = 1 };

            ObjectResult<ListConversationResponseEntity> listConversations = RequestService.Execute<ListConversationResponseEntity, int>(Constants.UrlApiService.GetListConversationByChatId
                , "POST"
                , objectRequest);

            return View(lista);
        }
    }
}