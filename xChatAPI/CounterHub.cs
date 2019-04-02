using System.Threading.Tasks;
using Microsoft.AspNet.SignalR;
using xChatBusiness;
using xChatEntities;

namespace xChatAPI
{
    public class CounterHub : Hub
    {
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
                conversationEntity.ChatId = ServiceChatBL
                    .Instancia
                    .ChatCreate(conversationEntity);

                // ------------------------------------------------------------
                // Se lanza método en el front del Manager para agregar
                // un nuevo Chat en su monitor.
                // ------------------------------------------------------------
                Clients.Client(conversationEntity.ManagerToken).newUserConnect(conversationEntity);
            }

            // ------------------------------------------------------------
            // Registrar mensaje en la DB.
            // ------------------------------------------------------------
            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Manager.
            // ------------------------------------------------------------
            Clients.Client(conversationEntity.ManagerToken).receivedFromUser(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Usuario.
            // ------------------------------------------------------------
            Clients.Caller.receivedFromManager(conversationEntity);
        }

        public void SendToUser(ConversationEntity conversationEntity)
        {
            conversationEntity.IsSendUser = 0;

            // ------------------------------------------------------------
            // Registrar mensaje en la DB.
            // ------------------------------------------------------------
            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Usuario.
            // ------------------------------------------------------------
            Clients.Client(conversationEntity.UserToken).receivedFromManager(conversationEntity);

            // ------------------------------------------------------------
            // Se lanza el método de los mensajes en el front del Manager.
            // ------------------------------------------------------------
            Clients.Caller.receivedFromUser(conversationEntity);
        }

        /// <summary>
        /// Método que se ejecuta cuando se conecta un MANAGER.
        /// Se genera su Identificador (ID) de la comunicación.
        /// </summary>
        /// <param name="accountManagerEntity"></param>
        public void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
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
        public void UserDisconnectForMangaer()
        {

        }
    }
}
