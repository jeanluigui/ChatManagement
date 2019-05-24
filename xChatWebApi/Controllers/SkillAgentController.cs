using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatWebApi.Controllers
{
    /// <summary>
    /// Controlador de Habilidades de los Agentes.
    /// </summary>
    public class SkillAgentController : ApiController
    {
        private IServiceSkillAgentBL _IServiceSkillAgentBL;

        /// <summary>
        /// Constructor con parametro de instancia.
        /// </summary>
        /// <param name="iserviceskillagentbl"></param>
        public SkillAgentController(IServiceSkillAgentBL iserviceskillagentbl)
        {
            _IServiceSkillAgentBL = iserviceskillagentbl;
        }

        /// <summary>
        /// Método para actualizar el estado de una habilidad por lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        /// 
        [HttpPost]
        [ActionName("ChangeStateSkillLanguage")]
        [Route("api/SkillAgent/ChangeStateSkillLanguage/")]
        public ObjectResult<bool> ChangeStateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _IServiceSkillAgentBL.ChangeStateSkillLanguage(objectRequest);

                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Método para actualizar el estado de una habilidad por Modulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// 
        [HttpPost]
        [ActionName("ChangeStateSkillModule")]
        [Route("api/SkillAgent/ChangeStateSkillModule/")]
        public ObjectResult<bool> ChangeStateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _IServiceSkillAgentBL.ChangeStateSkillModule(objectRequest);

                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Metodo para crear  una habilidad de Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        /// 
        [HttpPost]
        [ActionName("CreateSkillLanguage")]
        [Route("api/SkillAgent/CreateSkillLanguage/")]
        public ObjectResult<bool> CreateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _IServiceSkillAgentBL.CreateSkillLanguage(objectRequest);

                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Metodo para crear  una habilidad de Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        /// 
        [HttpPost]
        [ActionName("CreateSkillModule")]
        [Route("api/SkillAgent/CreateSkillModule/")]
        public ObjectResult<bool> CreateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _IServiceSkillAgentBL.CreateSkillModule(objectRequest);

                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Metodo que devuelve una lista con las habilidades de los Agentes por Modulo y Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListSkillByAgent")]
        [Route("api/SkillAgent/GetListSkillByAgent/")]
        public ObjectResultList<SkillAgent> GetListSkillByAgent(ObjectRequest<SkillAgentFilter> objectRequest)
        {
            ObjectResultList<SkillAgent> result = new ObjectResultList<SkillAgent>();

            try
            {
                result = _IServiceSkillAgentBL.GetListSkillByAgent(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Actualiza habilidad de Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        /// 
        [HttpPost]
        [ActionName("UpdateSkillLanguage")]
        [Route("api/SkillAgent/UpdateSkillLanguage/")]
        public ObjectResult<bool> UpdateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _IServiceSkillAgentBL.UpdateSkillLanguage(objectRequest);

                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// Actualiza habilidad de Modulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        /// 
        [HttpPost]
        [ActionName("UpdateSkillModule")]
        [Route("api/SkillAgent/UpdateSkillModule/")]
        public ObjectResult<bool> UpdateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ObjectResult<bool> result = new ObjectResult<bool>();

            try
            {
                _IServiceSkillAgentBL.UpdateSkillModule(objectRequest);

                result.Data = true;
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }
    }
}
