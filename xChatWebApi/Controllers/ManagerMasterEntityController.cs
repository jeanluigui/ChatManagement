using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatWebApi.Controllers
{
    /// <summary>
    /// Controlador para Gestionar Entidades Maestras.
    /// </summary>
    public class ManagerMasterEntityController : ApiController
    {
        private IServiceMasterEntityBL _IServiceMasterEntityBL;

        /// <summary>
        /// Constructor para Injección de Código.
        /// </summary>
        /// <param name="serviceMasterEntityBL"></param>
        public ManagerMasterEntityController(IServiceMasterEntityBL serviceMasterEntityBL)
        {
            _IServiceMasterEntityBL = serviceMasterEntityBL;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("GetListByEntityName")]
        [Route("api/ManagerMasterEntity/GetListByEntityName/")]
        public ObjectResultList<EntityMaster> GetListByEntityName(ObjectRequest<EntityMasterEnum> objectRequest)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                result = _IServiceMasterEntityBL.GetList(objectRequest.SenderObject);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("SearchMasterGetList")]
        [Route("api/ManagerMasterEntity/SearchMasterGetList/")]
        public ObjectResultList<EntityMaster> SearchMasterGetList(ObjectRequest<ParamSearchMaster> objectRequest)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                result = _IServiceMasterEntityBL.SearchMasterGetList(objectRequest.SenderObject);
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
