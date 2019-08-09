using System;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatBusiness
{
    /// <summary>
    /// Clase de Negocio que gestiona las Habilidades de un Agente.
    /// </summary>
    public class ServiceSkillAgentBL : IServiceSkillAgentBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);
        private IServiceSkillAgentDAO _serviceSkillAgentDAO;

        /// <summary>
        /// Constructor para injección de dependencia.
        /// </summary>
        /// <param name="serviceSkillAgentDAO"></param>
        public ServiceSkillAgentBL(IServiceSkillAgentDAO serviceSkillAgentDAO)
        {
            _serviceSkillAgentDAO = serviceSkillAgentDAO;
        }

        /// <summary>
        /// Método Devuelve la lista de Agentes con sus habilidades de Modulo y Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<SkillAgent> GetListSkillByAgent(ObjectRequest<SkillAgentFilter> objectRequest)
        {
            ObjectResultList<SkillAgent> resultList = new ObjectResultList<SkillAgent>();

            try
            {
                resultList = _serviceSkillAgentDAO.GetListSkillByAgent(objectRequest);
            }
            catch (TimeoutException tout)
            {
                resultList.Id = 2;
                resultList.Message = tout.Message;

                log.Save(EnumLogLevel.Fatal, tout.Message);
            }
            catch (Exception ex)
            {
                resultList.Id = 1;
                resultList.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return resultList;
        }

        /// <summary>
        /// Crea una habilidad para Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void ChangeStateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                _serviceSkillAgentDAO.ChangeStateSkillLanguage(objectRequest);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// Cambia el estado de una habilidad de módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void ChangeStateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                _serviceSkillAgentDAO.ChangeStateSkillModule(objectRequest);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// Crea una habilidad por Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void CreateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                if (objectRequest.SenderObject.LanguageId < 1)
                    throw new Exception("Debe enviar un valor para el LanguageId.");

                //if (objectRequest.SenderObject.SkillLevel < 1)
                //    throw new Exception("Debe enviar un valor para el SkillLevel.");

                //if (objectRequest.SenderObject.PriorityLevel < 1)
                //    throw new Exception("Debe enviar un valor para el PriorityLevel.");

                _serviceSkillAgentDAO.CreateSkillLanguage(objectRequest);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// Crea una habilidad por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void CreateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                if (objectRequest.SenderObject.ModuleId < 1)
                    throw new Exception("Debe enviar un valor para el LanguageId.");

                //if (objectRequest.SenderObject.SkillLevel < 1)
                //    throw new Exception("Debe enviar un valor para el SkillLevel.");

                //if (objectRequest.SenderObject.PriorityLevel < 1)
                //    throw new Exception("Debe enviar un valor para el PriorityLevel.");

                _serviceSkillAgentDAO.CreateSkillModule(objectRequest);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// Actualiza una habilidad por lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void UpdateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                if (objectRequest.SenderObject.LanguageId < 1)
                    throw new Exception("Debe enviar un valor para el LanguageId.");

                //if (objectRequest.SenderObject.SkillLevel < 1)
                //    throw new Exception("Debe enviar un valor para el SkillLevel.");

                //if (objectRequest.SenderObject.PriorityLevel < 1)
                //    throw new Exception("Debe enviar un valor para el PriorityLevel.");

                _serviceSkillAgentDAO.UpdateSkillLanguage(objectRequest);
            }
            catch(Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// Actualiza una habilidad por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void UpdateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                if (objectRequest.SenderObject.ModuleId < 1)
                    throw new Exception("Debe enviar un valor para el LanguageId.");

                //if (objectRequest.SenderObject.SkillLevel < 1)
                //    throw new Exception("Debe enviar un valor para el SkillLevel.");

                //if (objectRequest.SenderObject.PriorityLevel < 1)
                //    throw new Exception("Debe enviar un valor para el PriorityLevel.");


                _serviceSkillAgentDAO.UpdateSkillModule(objectRequest);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
        }

        public ObjectResult<Boolean> ValidateSkillByAgentModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ObjectResult<Boolean> result = new ObjectResult<Boolean>();
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                if (objectRequest.SenderObject.ModuleId < 1)
                    throw new Exception("Debe enviar un valor para el LanguageId.");

                result = _serviceSkillAgentDAO.ValidateSkillByAgentModule(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = -1;
                result.Message = "NoOk";
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
            return result;
        }

        public ObjectResult<Boolean> ValidateSkillByAgentLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ObjectResult<Boolean> result = new ObjectResult<Boolean>();
            try
            {
                if (objectRequest.SenderObject.AgentId < 1)
                    throw new Exception("Debe enviar un valor para el AgentId.");

                if (objectRequest.SenderObject.LanguageId < 1)
                    throw new Exception("Debe enviar un valor para el LanguageId.");

                result = _serviceSkillAgentDAO.ValidateSkillByAgentLanguage(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = -1;
                result.Message = "NoOk";
                log.Save(EnumLogLevel.Fatal, ex);

                throw new Exception(ex.Message);
            }
            return result;
        }
    }
}
