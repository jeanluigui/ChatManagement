using System;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatBusiness
{
    /// <summary>
    /// Clase que gestiona entidades maestras.
    /// </summary>
    public class ServiceMasterEntityBL : IServiceMasterEntityBL
    {
        private IServiceMasterEntityDAO _serviceMasterEntityDAO;

        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        /// <summary>
        /// Patrón Singleton
        /// </summary>
        public ServiceMasterEntityBL(IServiceMasterEntityDAO serviceMasterEntityDAO)
        {
            _serviceMasterEntityDAO = serviceMasterEntityDAO;
        }

        /// <summary>
        /// Obtener una lista simples
        /// </summary>
        /// <param name="entityMasterEnum"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtener lista segun parametros.
        /// </summary>
        /// <param name="senderObject"></param>
        /// <returns></returns>
        public ObjectResultList<EntityMaster> SearchMasterGetList(ParamSearchMaster senderObject)
        {
            ObjectResultList<EntityMaster> result = new ObjectResultList<EntityMaster>();

            try
            {
                if (string.IsNullOrEmpty(senderObject.MasterEntity))
                    throw new Exception("Debe indicar valor para la propiedad MasterEntity");

                if (string.IsNullOrEmpty(senderObject.MasterAction))
                    throw new Exception("Debe indicar valor para la propiedad MasterAction");

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

}
