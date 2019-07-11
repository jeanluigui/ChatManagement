using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using xChatEntities;
using xss.ConnectionManager;

namespace xChatDAO
{
    /// <summary>
    /// Clase que gestiona la información con la DB para envío de correo.
    /// </summary>
    public class ServiceNotificationDAO : IServiceNotificationDAO
    {
        /// <summary>
        /// Obtiene de la DB la información para envío de correo.
        /// Método que hace uso de TUPLAS para el intercambio de información.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <returns></returns>
        public (string emailTo, string emailSubject, string emailBody) GetEmailTo(ConversationEntity conversationEntity)
        {
            string emailTo = string.Empty;
            string emailSubject = string.Empty;
            string emailBody = string.Empty;

            ListParameters parameters = new ListParameters();

            parameters.Add("@userName", conversationEntity.UserName);
            parameters.Add("@message", conversationEntity.Message);

            CommandParameter queryCommand = new CommandParameter("chat.Config_GetMailTo_Sp", parameters);

            DataRow drresult = DbManager.Instance.ExecuteRegister(queryCommand);

            if (drresult != null && !drresult.IsNull("emailTo"))
            {
                emailTo = drresult["emailTo"].ToString();
                emailSubject = drresult["emailSubject"].ToString();
                emailBody = drresult["emailBody"].ToString();
            }

            return (emailTo, emailSubject, emailBody);
        }
    }

    public interface IServiceNotificationDAO
    {
        (string emailTo, string emailSubject, string emailBody) GetEmailTo(ConversationEntity conversationEntity);
    }
}
