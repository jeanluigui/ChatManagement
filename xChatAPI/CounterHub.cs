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
            ///*Actualiza la lista de agentes de la vista Manager*/
            //ConversationEntity obj = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(Context.ConnectionId);
            //String managerToken = ServiceChatBL.Instancia.GetManagerTokenValueByAgentId(obj);
          
            ///*End*/

            //ObjectResultList<ChatToken> tokenDestino = ServiceChatBL.Instancia.ChatDisconnected(Context.ConnectionId);
            //if (!String.IsNullOrEmpty(managerToken))
            //{
            //    ObjectResultList<AccountManagerConnect> lstAgentResult = ServiceChatBL.Instancia.GetListAgentByManager(obj);
            //    Clients.Client(managerToken).receivedListAgentsOfNewConnection(lstAgentResult);

            //}
            //if (tokenDestino != null && tokenDestino.Elements != null && tokenDestino.Elements.Count > 0)
            //{
            //    foreach (ChatToken item in tokenDestino.Elements)
            //    {
            //        // Tipo 1: Se desconecta Usuario.  Notificar a Manager.
            //        // Tipo 2: Se desconecta Manager.  Notificar a Usuarios.
            //        if (item.TypeToken.Equals(1))
            //        {
            //            Clients.Client(item.Token).chatUserDisconnect(item); //token del agente
            //            ConversationEntity objChat = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(item.Token);
            //            String tokenManager = ServiceChatBL.Instancia.GetManagerTokenValueByAgentId(objChat);
            //            if (!String.IsNullOrEmpty(tokenManager)) {
            //                Clients.Client(tokenManager).chatUserDisconnect(item); //token del Manager
            //            } 
            //        }
            //        else
            //        {
            //            Clients.Client(item.Token).chatManagerDisconnect("The agent has been disconnected...");
            //        }
            //    }
            //}
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
        public async Task SendToManager(ConversationEntity conversationEntity)
        {
            conversationEntity.IsSendUser = 1;

            // Si es la primera vez que un cliente envía un mensaje, entonces se genera el ID de la comunicación.
            if (conversationEntity.ChatId.Equals(0))
            {
                conversationEntity.UserToken = Context.ConnectionId;
                conversationEntity.ChatId = ServiceChatBL.Instancia.ChatCreate(conversationEntity);

                // Si el valor del chatid = -1 es porque no existe agente disponible
                if (conversationEntity.ChatId.Equals(-1))
                {
                   // Envía notificación por correo.
                    //_serviceNotification.Send(conversationEntity);
                    await Clients.Caller.chatManagerDisconnect("At this time there are no agents available....");
                    return;
                }

                // Si el valor del chatid = -2 es porque no se encontro ningun agente con las habilidades especificadas
                //else if (conversationEntity.ChatId.Equals(-2))
                //{
                //    //_serviceNotification.Send(conversationEntity);
                //    await Clients.Caller.chatManagerNoFoundAgentBySkills("Agent not found with assigned skills....");
                //    return;
                //}                
            }

            // Obtenemos el mensaje en formato original antes de encriptarlo.
            string originalMessage = conversationEntity.Message;

            // Registrar mensaje en la DB.
            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            // Restablecemos el mensaje.
            conversationEntity.Message = originalMessage;

            // Se lanza el método de los mensajes en el front del Agente.
            await Clients.Client(conversationEntity.AgentToken).receivedFromUser(conversationEntity);

            // Se lanza el método de los mensajes en el front del Usuario.
            await Clients.Caller.receivedFromManager(conversationEntity);

            // Se lanza método en el front del Manager para agregar un nuevo Chat en su monitor.
            //ConversationEntity objConversation = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(conversationEntity.AgentToken);
            //string managerToken = ServiceChatBL.Instancia.GetManagerTokenValueByAgentId(objConversation);
            //if (!String.IsNullOrEmpty(managerToken))
            //{
            //    await Clients.Client(managerToken).reloadNewUserConnectUserConnectByAgent(String.Empty);
            //}

            // Se lanza el método de los mensajes en el front de Manager.
            if (!String.IsNullOrEmpty(conversationEntity.ManagerToken))
            {
                await Clients.Client(conversationEntity.ManagerToken).monitor_ReceivedFromUserAndManagerInViewManager(conversationEntity);
            }
            else
            {
                //ConversationEntity objConversation2 = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(conversationEntity.AgentToken);
                //if (conversationEntity != null) conversationEntity.AgentId = objConversation2.AgentId;
                //string managerToken2 = ServiceChatBL.Instancia.GetManagerTokenValueByAgentId(objConversation2);
                //if (!String.IsNullOrEmpty(managerToken2))
                //{
                //    await Clients.Client(managerToken2).monitor_ReceivedFromUserAndAgentInViewManager(conversationEntity);
                //}
            }                

        }

        /// <summary>
        /// Evento que es lanzado por el Manager para enviar un mensaje al User.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public async Task SendToUser(ConversationEntity conversationEntity)
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
            await Clients.Client(conversationEntity.UserToken).receivedFromManager(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Agente.
            // ------------------------------------------------------------
            await Clients.Caller.receivedFromUser(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front de Manager.
            // ------------------------------------------------------------

            if (!String.IsNullOrEmpty(conversationEntity.ManagerToken))
            {
                await Clients.Client(conversationEntity.ManagerToken).monitor_ReceivedFromUserAndManagerInViewManager(conversationEntity);
            }
            else
            {
                //ConversationEntity objConversation = ServiceChatBL.Instancia.GetAgentAndManagerIdByToken(conversationEntity.AgentToken);
                //if (conversationEntity != null) conversationEntity.AgentId = objConversation.AgentId;
                //string managerToken = ServiceChatBL.Instancia.GetManagerTokenValueByAgentId(objConversation);
                //if (!String.IsNullOrEmpty(managerToken))
                //{
                //    await Clients.Client(managerToken).monitor_ReceivedFromUserAndAgentInViewManager(conversationEntity);
                //}
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
            //Clients.Caller.sucessConnect(Context.ConnectionId);
        }

        ///// <summary>
        ///// Método que se ejecuta cuando el MANAGER se desconecta.
        ///// </summary>
        ///// <param name="accountManagerEntity"></param>
        //public void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        //{
        //    accountManagerEntity.Token = Context.ConnectionId;
        //    ServiceChatBL.Instancia.AccountManagerDisconnect(accountManagerEntity);
            
        //}

        ///// <summary>
        ///// Método que se ejecuta cuando el MANAGER desconecta a un usuario.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        //public async Task UserDisconnectForMangaer(ConversationEntity conversationEntity)
        //{
        //    conversationEntity.IsSendUser = 0;

        //    // ------------------------------------------------------------
        //    // Registrar mensaje en la DB.
        //    // ------------------------------------------------------------
        //    Int32 success = ServiceChatBL.Instancia.UserDisconnectForManager(conversationEntity);
        //    if (success == 1)// Update succesfull
        //    {
        //        // ------------------------------------------------------------
        //        // Se lanza el método de los mensajes en el front del Usuario.
        //        // ------------------------------------------------------------
        //        await Clients.Client(conversationEntity.UserToken).serverOrderDisconnect("Gracias por su gentil atención.");
        //        // ------------------------------------------------------------
        //        // Se lanza el método de los mensajes en el front del Manager.
        //        // ------------------------------------------------------------
        //        //Clients.Caller.receivedFromUserDisconnect(conversationEntity);
        //        conversationEntity.ChatId = 0;
        //        await Clients.Caller.reloadConnectUserConnectByAgentAfterPossesionFinish(conversationEntity);

        //    }
        //    else
        //    {
        //        conversationEntity = null;
        //        await Clients.Caller.reloadConnectUserConnectByAgentAfterPossesionFinish(conversationEntity);
        //    }
        //}
        ///// <summary>
        ///// Método que se ejecuta cuando el AGENTE desconecta a un usuario.
        ///// </summary>
        ///// <param name="conversationEntity"></param>
        //public async Task UserDisconnectForAgent(ConversationEntity conversationEntity)
        //{
        //    conversationEntity.IsSendUser = 0;

        //    // ------------------------------------------------------------
        //    // Registrar mensaje en la DB.
        //    // ------------------------------------------------------------
        //    Int32 success = ServiceChatBL.Instancia.UserDisconnectForManager(conversationEntity);
        //    if (success == 1)// Update succesfull
        //    {
        //        // ------------------------------------------------------------
        //        // Se lanza el método de los mensajes en el front del Usuario.
        //        // ------------------------------------------------------------
        //        await Clients.Client(conversationEntity.UserToken).serverOrderDisconnect("Gracias por su gentil atención.");
        //        // ------------------------------------------------------------
        //        // Se lanza el método de los mensajes en el front del Agente.
        //        // ------------------------------------------------------------
        //        //Clients.Caller.receivedFromUserDisconnect(conversationEntity);
        //        await Clients.Caller.chatUserDisconnectAfterDisconectForAgent(conversationEntity); //token del agente
        //    }
        //    else
        //    {
        //        conversationEntity = null;
        //        await Clients.Caller.chatUserDisconnectAfterDisconectForAgent(conversationEntity);
        //    }
        //}
        
        /// <summary>
        /// Establecer el CHATID como Leído por el MANAGER.
        /// Se notifica al Agente y Usuario que el mensaje ha sido Leído.
        /// </summary>
        /// <param name="conversationEntity"></param>
        //public void SetMessageReadForManager(ConversationEntity conversationEntity)
        //{
        //    conversationEntity.IsSendUser = 0;

        //    // ------------------------------------------------------------
        //    // Establecer chatID como Leído.
        //    // ------------------------------------------------------------
        //    ServiceChatBL.Instancia.SetMessageReadForManager(conversationEntity);

        //    // ------------------------------------------------------------
        //    // Se lanza el método de los mensajes en el front del Usuario.
        //    // ------------------------------------------------------------
        //    //Clients.Client(conversationEntity.UserToken).MessageRead();

        //    // ------------------------------------------------------------
        //    // Se lanza el método de los mensajes en el front del Manager.
        //    // ------------------------------------------------------------
        //    //Clients.Caller.MessageRead(conversationEntity);
        //}

        //public async Task ReloadLoadListAgentConnect(ConversationEntity objChat)
        //{
        //    string managerToken = ServiceChatBL.Instancia.GetManagerTokenValueByAgentId(objChat);
        //    if (!String.IsNullOrEmpty(managerToken))
        //    {
        //        ObjectResultList<AccountManagerConnect> lstAgentResult = ServiceChatBL.Instancia.GetListAgentByManager(objChat);
        //        await Clients.Client(managerToken).receivedListAgentsOfNewConnection(lstAgentResult);
        //    } 
            

        //}

        //public async Task MoveChatToAgent(ConversationEntity conversationEntity)
        //{
        //    if (!String.IsNullOrEmpty(conversationEntity.ManagerToken))
        //    { 
        //        //Obtiene el token del agente Destino
        //        String tokenAgentTarget = ServiceChatBL.Instancia.GetManagerToken(conversationEntity);

        //        Int32 success = ServiceChatBL.Instancia.ConversationMoveTo(conversationEntity);
        //        if (success == 1) // Update succesfull
        //        {
        //            // Registrar mensaje de transferencia de chat en la DB. 
        //            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);
                    
        //            if (!String.IsNullOrEmpty(tokenAgentTarget))
        //                //Envia un mensaje indicando que Manager esta tomando posesión del Chat en la vista de agente Destino
        //                await Clients.Client(tokenAgentTarget).reloadUserConnectByAgentAfterPossesionInViewAgent(conversationEntity);

        //            if (!String.IsNullOrEmpty(conversationEntity.ManagerToken))
        //                //Recarga lista de usuarios de agente en vista de Manager (Origen) 
        //                await Clients.Caller.reloadConnectUserConnectByAgentAfterPossesion(conversationEntity);

        //            //Mensaje en vista de Usuario - Posesion correcta
        //            await Clients.Client(conversationEntity.UserToken).messagePosessionChatToAgent(conversationEntity.ManagerToken);
        //        }
        //        else
        //        {
        //            await Clients.Caller.monitor_messageAgentNotPosesionInViewManager(-1);
        //        }
        //    }
        //    else
        //    {
        //        //Obtiene el token del agente Origen
        //        String tokenAgentOrigin = ServiceChatBL.Instancia.GetManagerToken(conversationEntity);

        //        Int32 success = ServiceChatBL.Instancia.ConversationMoveTo(conversationEntity);
        //        if (success == 1) // Update succesfull
        //        {
        //            // Registrar mensaje de transferencia de chat en la DB. 
        //            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);
        //            //Recarga lista de usuarios de agente en vista de Manager
        //            await Clients.Caller.reloadNewUserConnectUserConnectByAgentAfterTransfer(conversationEntity);

        //            //Obtiene el token del agente Destino
        //            String tokenAgentTarget = ServiceChatBL.Instancia.GetManagerToken(conversationEntity);
        //            if (!String.IsNullOrEmpty(tokenAgentTarget))
        //                //Recarga lista de usuarios de agente en vista de agente Destino
        //                await Clients.Client(tokenAgentTarget).reloadNewUserConnectUserConnectByAgent((conversationEntity.UserName == null ? String.Empty : conversationEntity.UserName));

        //            if (!String.IsNullOrEmpty(tokenAgentOrigin))
        //                //Recarga lista de usuarios de agente en vista de agente Origen
        //                await Clients.Client(tokenAgentOrigin).reloadNewUserConnectUserConnectByAgentAfterTransfer(conversationEntity.ChatId);

        //            //Mensaje en vista de Usuario - Transferencia correcta
        //            await Clients.Client(conversationEntity.UserToken).messageTransferSuccessToAgent();
        //        }
        //        else
        //        {
        //            if (success == -1)
        //            {
        //                await Clients.Caller.monitor_messageAgentNotConnectInViewManager(-1);
        //            }
        //            else
        //            {
        //                await Clients.Caller.monitor_messageAgentNotConnectInViewManager(0);
        //            }
        //        }
        //    }            
        //}

        //public async Task TransferChatToManager(ConversationEntity conversationEntity)
        //{
        //    string managerToken = ServiceChatBL.Instancia.GetManagerTokenValueByManagerId(conversationEntity);
        //    if (!String.IsNullOrEmpty(managerToken))
        //    {
        //        conversationEntity.ManagerToken = managerToken;
        //       //Obtiene el token del agente Destino
        //       //String tokenAgentTarget = ServiceChatBL.Instancia.GetManagerToken(conversationEntity);

        //        Int32 success = ServiceChatBL.Instancia.ConversationMoveTo(conversationEntity);
        //        if (success == 1) // Update succesfull
        //        {        
        //            // Registrar mensaje de transferencia de chat en la DB. 
        //            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

        //            //if (!String.IsNullOrEmpty(tokenAgentTarget))
        //            //Envia un mensaje indicando que Manager esta tomando posesión del Chat en la vista de agente Destino despues de la transferencia que hace el Agente
        //            await Clients.Caller.reloadUserConnectByAgentAfterTransferToManagerInViewAgent(conversationEntity);

        //            if (!String.IsNullOrEmpty(conversationEntity.ManagerToken))
        //                //Recarga lista de usuarios de agente en vista de Manager
        //                await Clients.Client(conversationEntity.ManagerToken).reloadConnectUserConnectByAgentAfterTransferToManager(conversationEntity);

        //            //Mensaje en vista de Usuario - Trnasferencia correcta
        //            await Clients.Client(conversationEntity.UserToken).messageTransferChatToManager(conversationEntity.ManagerToken);
        //        }
        //        else
        //        {
        //            await Clients.Caller.monitor_messageManagerNotTransferInViewAgent(-1);
        //        }
        //    }
        //}

    }
}
