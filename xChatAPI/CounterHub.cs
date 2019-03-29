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
            if (conversationEntity.ChatId.Equals(0))
            {
                conversationEntity.UserToken = Context.ConnectionId;
                conversationEntity.ChatId = ServiceChatBL
                    .Instancia
                    .ChatCreate(conversationEntity);
            }

            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            Clients.Client(conversationEntity.ManagerToken).receivedFromUser(conversationEntity);
            Clients.Caller.receivedFromManager(conversationEntity);
        }

        public void SendToUser(ConversationEntity conversationEntity)
        {
            ServiceChatBL.Instancia.ChatMessageCreate(conversationEntity);

            Clients.Client(conversationEntity.UserToken).receivedFromManager(conversationEntity);
            Clients.Caller.receivedFromUser(conversationEntity);
        }

        public void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            accountManagerEntity.Token = Context.ConnectionId;
            ServiceChatBL.Instancia.AccountManagerConnect(accountManagerEntity);
            Clients.Caller.sucessConnect(Context.ConnectionId);
        }

        public void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        {
            accountManagerEntity.Token = Context.ConnectionId;
            ServiceChatBL.Instancia.AccountManagerDisconnect(accountManagerEntity);
            
        }

    }
}
