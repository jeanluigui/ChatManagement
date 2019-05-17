using System;
using xChatEntities;
using xChatUtilities;

namespace xChatWeb.Services
{
    /// <summary>
    /// Clase que gestiona la integración con los API.
    /// </summary>
    public sealed class ServiceIntegrationChat
    {
        private static readonly ServiceIntegrationChat _instance = new ServiceIntegrationChat();

        public static ServiceIntegrationChat Instance
        {
            get { return _instance; }
        }

        /// <summary>
        /// Obtiene la información del Agente conectado.
        /// </summary>
        /// <param name="paramId">ID del Agente.</param>
        /// <param name="paramAppId">ID de la Aplicación que está consumiendo el servicio del Chat.</param>
        /// <param name="paramRolId">ID del Rol del Agente.</param>
        /// <param name="allAgents">Boolean para saber si obtiene información de todos los agentes.</param>
        /// <returns></returns>
        public ObjectResultList<AccountManagerConnect> GetAccountManager(string paramId, string paramAppId, string paramRolId, bool allAgents)
        {
            // ----------------------------------------------
            // el parámetro paramId recibe el identificador del usuario
            // de corporate.
            // debe ser descriptado.
            // ----------------------------------------------

            String originalParamId = paramId; // Encryption.Decrypt(HttpUtility.UrlDecode(paramId));
            String originalParamAppId = paramAppId;// Encryption.Decrypt(HttpUtility.UrlDecode(paramAppId));
            String originalParamRolId = paramRolId; // Encryption.Decrypt(HttpUtility.UrlDecode(paramRolId));

            // ----------------------------------------------
            // Obtener lista de agentes conectados de un determinado módulo.
            // ----------------------------------------------
            ObjectRequest<string> objectRequest = new ObjectRequest<string>()
            {
                //usuario-aplicacion-rol manager
                SenderObject = $"{originalParamId};{originalParamAppId};{originalParamRolId}"
            };

            ObjectResultList<AccountManagerConnect> lstAgents = new ObjectResultList<AccountManagerConnect>();

            try
            {
                if (allAgents)
                    lstAgents = RequestService.ExecuteList<AccountManagerConnect, string>(Constants.UrlApiService.GetListAccountManagerConnectByModuleAppId
                        , "POST"
                        , objectRequest
                        );
                else
                    lstAgents = RequestService.ExecuteList<AccountManagerConnect, string>(Constants.UrlApiService.GetAccountManagerById
                         , "POST"
                         , objectRequest
                         );

            }
            catch (Exception ex)
            {
                lstAgents.Id = 1;
                lstAgents.Message = ex.Message;
            }

            return lstAgents;
        }

        /// <summary>
        /// Obtiene lista de usuarios conectados de un Agente.
        /// </summary>
        /// <param name="vmModel"></param>
        /// <returns></returns>
        public ObjectResultList<UserConnect> GetUserConnectByAgentId(int agentId)
        {
            ObjectResultList<UserConnect> lstUserConnect = new ObjectResultList<UserConnect>();

            try
            {
                ObjectRequest<int> objectRequest = new ObjectRequest<int>()
                {
                    SenderObject = agentId
                };

                lstUserConnect = RequestService.ExecuteList<UserConnect, int>(Constants.UrlApiService.GetListUserConnectByAccountManagerId
                , "POST"
                , objectRequest);

            }
            catch (Exception ex)
            {
                lstUserConnect.Id = 1;
                lstUserConnect.Message = ex.Message;
            }

            return lstUserConnect;
        }

        /// <summary>
        /// Obtener la conversación competa de un chat.
        /// </summary>
        /// <param name="chatId"></param>
        /// <returns></returns>
        public ObjectResultList<ConversationResponseEntity> GetConversation(int chatId)
        {
            ObjectResultList<ConversationResponseEntity> listConversations = new ObjectResultList<ConversationResponseEntity>();

            try
            {
                ObjectRequest<int> objectRequest = new ObjectRequest<int>()
                {
                    SenderObject = chatId
                };

                listConversations = RequestService.ExecuteList<ConversationResponseEntity, int>(Constants.UrlApiService.GetListConversationByChatId
                , "POST"
                , objectRequest);
            }
            catch (Exception ex)
            {
                listConversations.Id = 1;
                listConversations.Message = ex.Message;
            }

            return listConversations;
        }
    }
}
