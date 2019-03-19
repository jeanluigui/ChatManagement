using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace xChatAPI.Business
{
    public class SecurityAccessBL
    {
        private static readonly SecurityAccessBL _instance = new SecurityAccessBL();

        public static SecurityAccessBL Instancia
        {
            get { return _instance; }
        }

    }
}