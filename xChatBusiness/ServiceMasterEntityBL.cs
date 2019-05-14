using System;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatBusiness
{
    public class ServiceMasterEntityBL : IServiceMasterEntityBL
    {
        private static readonly ServiceMasterEntityBL _serviceMasterEntityBL = new ServiceMasterEntityBL();

        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        IServiceMasterEntityDAO _serviceMasterEntityDAO;

        public static ServiceMasterEntityBL Instancia
        {
            get { return _serviceMasterEntityBL; }
        }

        private ServiceMasterEntityBL()
        {
            _serviceMasterEntityDAO = new ServiceMasterEntityDAO();
        }

        public ObjectResultList<EntityMaster> GetList(EntityMasterEnum entityMasterEnum)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                result = _serviceMasterEntityDAO.GetList(entityMasterEnum);
            }
            catch(Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }

        public ObjectResultList<EntityMaster> SearchMasterGetList(ParamSearchMaster senderObject)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                result = _serviceMasterEntityDAO.SearchMasterGetList(senderObject.MasterEntity, senderObject.MasterAction, senderObject.MasterParametersSet, senderObject.MasterParametersAdd);
            }
            catch (Exception ex)
            {
                result.Id = 1;
                result.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }

            return result;
        }
    }

    public interface IServiceMasterEntityBL
    {
        ObjectResultList<EntityMaster> GetList(EntityMasterEnum entityMasterEnum);
        ObjectResultList<EntityMaster> SearchMasterGetList(ParamSearchMaster senderObject);
    }
}
