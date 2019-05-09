using System;
using System.Configuration;

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

        public static string URL_API_SERVICE
        {
            get { return ConfigurationManager.AppSettings["url_apiservice"].ToString(); }
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

        public class UrlApiService
        {
            public static string GetListUserConnectByAccountManagerId
            {
                get { return URL_API_SERVICE + "api/Conversation/GetListUserConnectByAccountManagerId/"; }
            }
            public static string GetListConversationByChatId
            {
                get { return URL_API_SERVICE + "api/Conversation/GetListConversationByChatId/"; }
            }
            public static string GetListConversationByReport
            {
                get { return URL_API_SERVICE + "api/Conversation/GetListConversationByReport/"; }
            }
            public static string GetListAccountManagerConnectByModuleAppId
            {
                get { return URL_API_SERVICE + "api/Conversation/GetListAccountManagerConnectByModuleAppId/"; }
            }

            public static string GetAccountManagerById
            {
                get { return URL_API_SERVICE + "api/Conversation/GetAccountManagerById/"; }
            }

            public static string GetListEntityMaster
            {
                get { return URL_API_SERVICE + "api/ManagerMasterEntity/GetListByEntityName/"; }
            }

            public static string GetReportChat
            {
                get { return URL_API_SERVICE + "api/Conversation/GetReport/"; }
            }
        }
    }

}
