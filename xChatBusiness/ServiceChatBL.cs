using System;
using System.Collections.Generic;
using xChatDAO;
using xChatEntities;
using xChatUtilities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;
using encryp = xss.EncryptionHandler;

namespace xChatBusiness
{
    /// <summary>
    /// Clase que gestiona el proceso del CHAT mensajería.
    /// </summary>
    public class ServiceChatBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        private static readonly ServiceChatBL _service = new ServiceChatBL();

        /// <summary>
        /// Patron Singleton
        /// </summary>
        public static ServiceChatBL Instancia
        {
            get { return _service; }
        }

        /// <summary>
        /// Crear el registro de la cabecera del Chat.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <returns></returns>
        public int ChatCreate(ConversationEntity conversationEntity)
        {
            int chatId = 0;
            Int32 accountManagerConnectId = 0;

            try
            {

                // --------------------------------------------------------------------------------------------
                // Obtener el identificador de conexión de un Agente Disponible.
                // Consideraciones:
                // Si no se envía valores para buscar por conocimiento de Lenguaje y Módulo, 
                // entonces se obtiene cualquier agente disponible.
                // caso contrario, se obtiene el agente disponible que cumple con las habilidades requeridas.
                // --------------------------------------------------------------------------------------------

                if (conversationEntity.ChatBySkillLanguageId.Equals(0) || conversationEntity.ChatBySkillModuleId.Equals(0))
                    accountManagerConnectId = ServiceChatDAO.GetAccountManagerConnectId(conversationEntity);
                else
                    accountManagerConnectId = ServiceChatDAO.GetAccountManagerConnectBySkillLevel(conversationEntity);

                // -------------------------------------------------------------
                // Si no obtiene, entonces se devuelve valor (-1)
                // caso contrario, se crea el chat.
                // -------------------------------------------------------------
                if (accountManagerConnectId == 0)
                    chatId = -1;
                else if (accountManagerConnectId == -2)
                    chatId = -2;
                else
                    chatId = ServiceChatDAO.ChatCreate(conversationEntity, accountManagerConnectId);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return chatId;
        }

        /// <summary>
        /// Desconectar el Chat.
        /// </summary>
        /// <param name="connectionId"></param>
        /// <returns></returns>
        public ObjectResultList<ChatToken> ChatDisconnected(string connectionId)
        {
            ObjectResultList<ChatToken> tokenDestino = new ObjectResultList<ChatToken>();

            try
            {
                tokenDestino = ServiceChatDAO.ChatDisconnected(connectionId);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return tokenDestino;
        }

        /// <summary>
        /// Registrar el mensaje en la DB.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <returns></returns>
        public int ChatMessageCreate(ConversationEntity conversationEntity)
        {
            int result = 0;

            try
            {
                // -----------------------------------
                // Encriptar el mensaje.
                // -----------------------------------
                
                conversationEntity.Message = encryp.Encryption.Encrypt(HtmlSanitizer.SanitizeHtml(conversationEntity.Message));

                // -----------------------------------
                // Guardar.
                // -----------------------------------
                result = ServiceChatDAO.ChatMessageCreate(conversationEntity);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        /// <summary>
        /// Establecer la conexión de un Agente.
        /// </summary>
        /// <param name="accountManagerEntity"></param>
        public void AccountManagerConnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ServiceChatDAO.AccountManagerConnect(accountManagerEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        /// <summary>
        /// Obtener el token del Agente.
        /// </summary>
        /// <param name="conversationEntity"></param>
        /// <returns></returns>
        public string GetManagerToken(ConversationEntity conversationEntity)
        {
            string managerToken = string.Empty;

            try
            {
                managerToken = ServiceChatDAO.GetManagerToken(conversationEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return managerToken;
        }

        /// <summary>
        /// Desconectar a un agente.
        /// </summary>
        /// <param name="accountManagerEntity"></param>
        public void AccountManagerDisconnect(AccountManagerEntity accountManagerEntity)
        {
            try
            {
                ServiceChatDAO.AccountManagerDisconnect(accountManagerEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        /// <summary>
        /// Desconectar a un usuario.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void UserDisconnectForManager(ConversationEntity conversationEntity)
        {
            try
            {
                ServiceChatDAO.UserDisconnectForManager(conversationEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        /// <summary>
        /// Establecer el mensaje como leído por el Agente.
        /// </summary>
        /// <param name="conversationEntity"></param>
        public void SetMessageReadForManager(ConversationEntity conversationEntity)
        {
            try
            {
                ServiceChatDAO.SetMessageReadForManager(conversationEntity);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        #region Proceso interno para probar la encriptación de mensajes.

        /// <summary>
        /// Método para encriptar todos los mensajes de todas las conversaciones.
        /// </summary>
        public void ProcessSetEncrypMessage()
        {
            // --------------------------------------------------------------------
            // Establecer encriptación de los mensajes 
            // --------------------------------------------------------------------
            List<ConversationEntity> listMess = ServiceChatDAO.GetAllMessages();

            listMess.ForEach(x => x.Message = encryp.Encryption.Encrypt(HtmlSanitizer.SanitizeHtml(x.Message)));

            ServiceChatDAO.SetEncrypMessages(listMess);

            // --------------------------------------------------------------------
            // Recuperar mensajes y desincriptarlos. 
            // --------------------------------------------------------------------
            listMess = ServiceChatDAO.GetAllMessages();

            listMess.ForEach(x => x.Message = encryp.Encryption.Decrypt(x.Message));
        }

        #endregion

    }
}
