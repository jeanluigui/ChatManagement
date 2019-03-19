using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.SignalR;

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

            return base.OnConnected();
        }

        public void Send(int accountManagerId, string userName, int userId, string message)
        {
            string fecha = DateTime.Now.ToString();
            Clients.All.sendChat(userName, message, fecha, userId);
        }
    }
}