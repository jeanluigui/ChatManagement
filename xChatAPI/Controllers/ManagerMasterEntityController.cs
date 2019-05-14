using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatAPI.Controllers
{
    public class ManagerMasterEntityController : ApiController
    {
        [HttpPost]
        [ActionName("GetListByEntityName")]
        [Route("api/ManagerMasterEntity/GetListByEntityName/")]
        public ObjectResultList<EntityMaster> GetListByEntityName(ObjectRequest<EntityMasterEnum> objectRequest)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                result = ServiceMasterEntityBL.Instancia.GetList(objectRequest.SenderObject);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;
            }

            return result;
        }

        [HttpPost]
        [ActionName("SearchMasterGetList")]
        [Route("api/ManagerMasterEntity/SearchMasterGetList/")]
        public ObjectResultList<EntityMaster> SearchMasterGetList(ObjectRequest<ParamSearchMaster> objectRequest)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                result = ServiceMasterEntityBL.Instancia.SearchMasterGetList(objectRequest.SenderObject);
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
