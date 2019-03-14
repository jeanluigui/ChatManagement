using System.Web.Http;
using xChatEntities;

namespace xChatAPI.Controllers
{
    public class UserController : ApiController
    {
        public ObjectResult Saludar()
        {
            ObjectResult result = new ObjectResult();

            result.Id = 100;
            result.Message = "Hola Mundo...";

            return result;
        }
    }
}
