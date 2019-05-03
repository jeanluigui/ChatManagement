using System;
using System.Threading.Tasks;
using xChatDAO;
using xChatEntities;
using xss.EmailProvider;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatBusiness
{
    /// <summary>
    /// Clase que gestiona el envío de correo.
    /// </summary>
    public class ServiceNotificationBL : IServiceNotificationBL
    {
        IServiceNotificationDAO _serviceNotificationDAO = new ServiceNotificationDAO();

        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        /// <summary>
        /// Constructor donde se inicializa el DAO asociado a la clase.
        /// </summary>
        public ServiceNotificationBL()
        {
        }

        /// <summary>
        /// Método que gestiona el envío del correo.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void Send(ConversationEntity conversationEntity)
        {
            log.Save(EnumLogLevel.Fatal, "Ingresando a método para envío de correo....");

            try
            {
                // -----------------------------------------------------------------
                // Se obtiene de la DB la información para el envío de correo.
                // -----------------------------------------------------------------
                log.Save(EnumLogLevel.Info, "Obteniendo información de correo....");

                var (emailTo, emailSubject, emailBody) = _serviceNotificationDAO.GetEmailTo(conversationEntity);

                log.Save(EnumLogLevel.Info, "Validando información....");

                if (string.IsNullOrEmpty(emailTo) || string.IsNullOrEmpty(emailSubject) || string.IsNullOrEmpty(emailBody))
                {
                    throw new Exception("No se configurado parámetros para envío de correo de Chat.");
                }

                log.Save(EnumLogLevel.Info, "Enviando correo....");

                // -----------------------------------------------------------------
                // Método del NUGET para envío de correo.
                // -----------------------------------------------------------------
                EmailProvider.SendEmailAsync(emailTo, emailBody, emailSubject);

                log.Save(EnumLogLevel.Info, "FIN Enviando correo.");

            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }
    }

    public interface IServiceNotificationBL
    {
        void Send(ConversationEntity conversationEntity);
    }
}
