using System.Web;
using System.Web.Mvc;
using xChatWeb.Filters;

namespace xChatWeb
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            
            // Verificar que solo ingresen a las páginas autorizadas.
            filters.Add(new VerifySession());
        }
    }
}
