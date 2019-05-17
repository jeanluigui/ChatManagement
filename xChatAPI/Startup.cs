using System;
using System.Threading.Tasks;
using Microsoft.AspNet.SignalR;
using Microsoft.Owin;
using Microsoft.Owin.Cors;
using Owin;

[assembly: OwinStartup(typeof(xChatAPI.Startup))]

namespace xChatAPI
{
    public class Startup
    {
        /// <summary>
        /// Permite acceder a servicios remotos con SignalR
        /// </summary>
        /// <param name="app"></param>
        public void Configuration(IAppBuilder app)
        {
            // Para obtener más información sobre cómo configurar la aplicación, visite https://go.microsoft.com/fwlink/?LinkID=316888

            app.Map("/signalr", map =>
            {
                // Permitir todas las llamadas.
                map.UseCors(CorsOptions.AllowAll);
                var hubConfiguration = new HubConfiguration { };
                map.RunSignalR(hubConfiguration);

            });
        }
    }
}
