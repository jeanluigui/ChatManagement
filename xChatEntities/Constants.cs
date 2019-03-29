﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class Constants
    {
        /// <summary>
        /// Tiempo de espera de un servicio API.
        /// </summary>
        public static int ApiTimeOut
        {
            get { return Convert.ToInt32(ConfigurationManager.AppSettings["apitimeout"]); }
        }

        /// <summary>
        /// Tipo de Contenido devuelto por el API.
        /// </summary>
        public static string ApiContentType
        {
            get { return ConfigurationManager.AppSettings["apicontenttype"].ToString(); }
        }

        /// <summary>
        /// URL Base
        /// </summary>
        public static string URL_API_CHAT
        {
            get { return ConfigurationManager.AppSettings["url_apichat"].ToString(); }
        }

        /// <summary>
        /// Clase que gestiona los métodos del API.
        /// </summary>
        public class Url
        {
            /// <summary>
            /// Método escucha.
            /// </summary>
            public static string Listen
            {
                get { return URL_API_CHAT + "api/user/"; }
            }

            public static string SignalR
            {
                get { return URL_API_CHAT + "signalr/"; }
            }

            public static string SignalRHub
            {
                get { return URL_API_CHAT + "signalr/hubs"; }
            }
        }
    }

}