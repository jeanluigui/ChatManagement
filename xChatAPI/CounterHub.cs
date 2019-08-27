using System;
using System.Threading.Tasks;
using Microsoft.AspNet.SignalR;
using xChatBusiness;
using xChatEntities;

namespace xChatAPI
{
    /// <summary>
    /// Clase que gestiona los eventos de mensajería por WEBSOCKET.
    /// </summary>
    public class CounterHub : Hub
    {
        IServiceNotificationBL _serviceNotification = new ServiceNotificationBL();

        /// <summary>
        /// Se ejecuta cuando algun cliente se desconecta de forma no controlada, por ejemplo
        /// se cierra el navegador o la PC/Laptop entra en estado de hibernación.
        /// En este caso se debe desconectar de la DB.
        /// </summary>
        /// <param name="stopCalled"></param>
        /// <returns></returns>
        public override Task OnDisconnected(bool stopCalled)
        {
            /*Actualiza la lista de agentes de la vista Manager*/
            ConversationEntity obj = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(Context.ConnectionId);
            string managerToken = ServiceChatBL.Instancia.GetManagerTokenValue(obj);
          
            /*End*/

            ObjectResultList<ChatToken> tokenDestino = ServiceChatBL.Instancia.ChatDisconnected(Context.ConnectionId);
            if (!String.IsNullOrEmpty(managerToken))
            {
                ObjectResultList<AccountManagerConnect> lstAgentResult = ServiceChatBL.Instancia.GetListAgentByManager(obj);
                Clients.Client(managerToken).receivedListAgentsOfNewConnection(lstAgentResult);
            }
            if (tokenDestino != null && tokenDestino.Elements != null && tokenDestino.Elements.Count > 0)
            {
                foreach (ChatToken item in tokenDestino.Elements)
                {
                    // Tipo 1: Usuario desconectado.  Notificar a Manager.
                    // Tipo 2: Manager desconectado.  Notificar a Usuarios.
                    if (item.TypeToken.Equals(1))
                        Clients.Client(item.Token).chatUserDisconnect();
                    else
                        Clients.Client(item.Token).chatManagerDisconnect("The agent has been disconnected...");
                }
            }
            

            return base.OnDisconnected(stopCalled);
        }

        /// <summary>
        /// Evento que se ejecuta cuando alguien se conecta.
        /// </summary>
        /// <returns></returns>
        public override Task OnConnected()
        {
            // Clients = es un método que hereda de la clase Hub.
            // All = para todos los clientes.
            // enterUser() = es un método personalizado que se usa para los fines del chat.
            //               puede ser cualquier nombre, siempre en conntacion Cammell (minúscula, mayúscula).
            Clients.All.enterUser();

            string connectId = Context.ConnectionId;

            string name = Context.User.Identity.Name;

            return base.OnConnected();
        }

        /// <summary>
        /// Evento que es lanzado desde el User para enviar un mensaje al Manager.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void SendToManager(ConversationEntity conversationEntity)
        {
            conversationEntity.IsSendUser = 1;

            // ------------------------------------------------------------
            // Si es la primera vez que un cliente envía un mensaje,
            // entonces se genera el ID de la comunicación.
            // ------------------------------------------------------------
            if (conversationEntity.ChatId.Equals(0))
            {
                conversationEntity.UserToken = Context.ConnectionId;
                conversationEntity.ChatId = ServiceChatBL.Instancia.ChatCreate(conversationEntity);

                // ------------------------------------------------------------
                // Si el valor del chatid = -1 es porque no existe agente disponible
                // ------------------------------------------------------------
                if (conversationEntity.ChatId.Equals(-1))
                {

                    // ------------------------------------------------------------
                    // Envía notificación por correo.
                    // ------------------------------------------------------------
                    _serviceNotification.Send(conversationEntity);

                    Clients.Caller.chatManagerDisconnect("At this time there are no agents available....");

                    return;
                }
                // ------------------------------------------------------------
                // Si el valor del chatid = -2 es porque no se encontro ningun agente con las habilidades especificadas
                // ------------------------------------------------------------
                else if (conversationEntity.ChatId.Equals(-2))
                {
                    _serviceNotification.Send(conversationEntity);

                    Clients.Caller.chatManagerNoFoundAgentBySkills("Agent not found with assigned skills....");

                    return;
                }
                
            }

            // ------------------------------------------------------------
            // Obtenemos el mensaje en formato original antes de 
            // encriptarlo.
            // ------------------------------------------------------------
            string originalMessage = conversationEntity.Message;

            // ------------------------------------------------------------
            // Registrar mensaje en la DB.
            // ------------------------------------------------------------

            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            // ------------------------------------------------------------
            // Restablecemos el mensaje.
            // ------------------------------------------------------------
            conversationEntity.Message = originalMessage;

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Agente.
            // ------------------------------------------------------------
            Clients.Client(conversationEntity.AgentToken).receivedFromUser(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Usuario.
            // ------------------------------------------------------------
            Clients.Caller.receivedFromManager(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza método en el front del Manager para agregar
            // un nuevo Chat en su monitor.
            // ------------------------------------------------------------

            ConversationEntity objConversation = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(conversationEntity.AgentToken);
            string managerToken = ServiceChatBL.Instancia.GetManagerTokenValue(objConversation);
            if (!String.IsNullOrEmpty(managerToken))
            {
                Clients.Client(managerToken).reloadNewUserConnectUserConnectByAgent(0);
            }

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front de Manager.
            // ------------------------------------------------------------
            ConversationEntity objConversation2 = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(conversationEntity.AgentToken);
            if(conversationEntity != null) conversationEntity.AgentId = objConversation2.AgentId;            
            string managerToken2 = ServiceChatBL.Instancia.GetManagerTokenValue(objConversation2);
            if (!String.IsNullOrEmpty(managerToken2))
            {
                Clients.Client(managerToken2).monitor_ReceivedFromUserAndAgentInViewManager(conversationEntity);
            }
                

        }

        /// <summary>
        /// Evento que es lanzado por el Manager para enviar un mensaje al User.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void SendToUser(ConversationEntity conversationEntity)
        {
            conversationEntity.IsSendUser = 0;

            // ------------------------------------------------------------
            // Obtenemos el mensaje en formato original antes de 
            // encriptarlo.
            // ------------------------------------------------------------
            string originalMessage = conversationEntity.Message;

            // ------------------------------------------------------------
            // Registrar mensaje en la DB.
            // ------------------------------------------------------------
            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            // ------------------------------------------------------------
            // Restablecemos el mensaje.
            // ------------------------------------------------------------
            conversationEntity.Message = originalMessage;

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Usuario.
            // ------------------------------------------------------------
            Clients.Client(conversationEntity.UserToken).receivedFromManager(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Agente.
            // ------------------------------------------------------------
            Clients.Caller.receivedFromUser(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front de Manager.
            // ------------------------------------------------------------
            ConversationEntity objConversation = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(conversationEntity.AgentToken);
            if (conversationEntity != null) conversationEntity.AgentId = objConversation.AgentId;
            string managerToken = ServiceChatBL.Instancia.GetManagerTokenValue(objConversation);
            if (!String.IsNullOrEmpty(managerToken))
            {
                Clients.Client(managerToken).monitor_ReceivedFromUserAndAgentInViewManager(conversationEntity);
            }
        }

        /// <summary>
        /// Método que se ejecuta cuando se conecta un Usuario ya sea agente o manager.
        /// Se genera su Identificador (ID) de la comunicación.
        /// </summary>
        /// <param name="accountManagerEntity"></param>
        public void AccountUserConnect(AccountManagerEntity accountManagerEntity)
        {
            accountManagerEntity.Token = Context.ConnectionId;
            ServiceChatBL.Instancia.AccountManagerConnect(accountManagerEntity);
            Clients.Caller.sucessConnect(Context.ConnectionId);
        }

        /// <summary>
        /// Método que se ejecuta cuando el MANAGER se desconecta.
        /// </summary>
        /// <param name="accountManagerEntity"></param>
        public void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        {
            accountManagerEntity.Token = Context.ConnectionId;
            ServiceChatBL.Instancia.AccountManagerDisconnect(accountManagerEntity);
            
        }

        /// <summary>
        /// Método que se ejecuta cuando el MANAGER desconecta a un usuario.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void UserDisconnectForMangaer(ConversationEntity conversationEntity)
        {
            conversationEntity.IsSendUser = 0;

            // ------------------------------------------------------------
            // Registrar mensaje en la DB.
            // ------------------------------------------------------------
            ServiceChatBL.Instancia.UserDisconnectForManager(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Usuario.
            // ------------------------------------------------------------
            Clients.Client(conversationEntity.UserToken).serverOrderDisconnect("Gracias por su gentil atención.");

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Manager.
            // ------------------------------------------------------------
            Clients.Caller.receivedFromUserDisconnect(conversationEntity);
        }

        /// <summary>
        /// Establecer el CHATID como Leído por el MANAGER.
        /// Se notifica al Agente y Usuario que el mensaje ha sido Leído.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void SetMessageReadForManager(ConversationEntity conversationEntity)
        {
            conversationEntity.IsSendUser = 0;

            // ------------------------------------------------------------
            // Establecer chatID como Leído.
            // ------------------------------------------------------------
            ServiceChatBL.Instancia.SetMessageReadForManager(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Usuario.
            // ------------------------------------------------------------
            //Clients.Client(conversationEntity.UserToken).MessageRead();

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Manager.
            // ------------------------------------------------------------
            //Clients.Caller.MessageRead(conversationEntity);
        }

        public void ReloadLoadListAgentConnect(ConversationEntity objChat)
        {
            string managerToken = ServiceChatBL.Instancia.GetManagerTokenValue(objChat);
            if (!String.IsNullOrEmpty(managerToken))
            {
                ObjectResultList<AccountManagerConnect> lstAgentResult = ServiceChatBL.Instancia.GetListAgentByManager(objChat);
                Clients.Client(managerToken).receivedListAgentsOfNewConnection(lstAgentResult);
            } 
            

        }

        public void MoveChatToAgent(ConversationEntity conversationEntity)
        {
            //Obtiene el token del agente Destino
            String tokenAgentOrigin = ServiceChatBL.Instancia.GetManagerToken(conversationEntity);
            
            Int32 success =  ServiceChatBL.Instancia.ConversationMoveTo(conversationEntity);
            if (success  == 1) // Update succesfull
            {
               // Registrar mensaje de transferencia de chat en la DB. 
                ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);
                //Recarga lista de usuarios de agente en vista de Manager
                Clients.Caller.reloadNewUserConnectUserConnectByAgent(success);

                //Obtiene el token del agente Destino
                String tokenAgentTarget = ServiceChatBL.Instancia.GetManagerToken(conversationEntity);
                if(!String.IsNullOrEmpty(tokenAgentTarget))
                //Recarga lista de usuarios de agente en vista de agente Destino
                Clients.Client(tokenAgentTarget).reloadNewUserConnectUserConnectByAgent(success);

                if (!String.IsNullOrEmpty(tokenAgentOrigin))
                //Recarga lista de usuarios de agente en vista de agente Destino
                Clients.Client(tokenAgentOrigin).reloadNewUserConnectUserConnectByAgent(success);
            }
            else
            {
                if (success == -1) {
                    Clients.Caller.monitor_messageAgentNotConnectInViewManager();
                }
            }
        }

    }
}
