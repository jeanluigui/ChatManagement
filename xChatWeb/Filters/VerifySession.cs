using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using xChatWeb.Controllers;

namespace xChatWeb.Filters
{
    /// <summary>
    /// Controla el acceso a las páginas.
    /// </summary>
    public class VerifySession : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            try
            {
                base.OnActionExecuting(filterContext);

                if (HttpContext.Current.Session["User"]==null)
                {
                    // ----------------------------------------------------------
                    // Solo la página Home es Libre.
                    // Se debe agregar todas las páginas que son libres.
                    // ----------------------------------------------------------

                    if (filterContext.Controller is HomeController == false)
                    {
                        filterContext.HttpContext.Response.Redirect("Home/Login");
                    }
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
