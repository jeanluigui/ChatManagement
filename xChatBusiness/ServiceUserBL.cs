using System;
using xChatDAO;
using xChatEntities;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;
namespace xChatBusiness
{
    public class ServiceUserBL : IServiceUserBL
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);
        private IServiceUserDAO _serviceUserDAO;

        /// <summary>
        /// Constructor para injección de dependencia.
        /// </summary>
        /// <param name="serviceUserDAO"></param>
        public ServiceUserBL(IServiceUserDAO serviceUserDAO)
        {
            try
            {
                _serviceUserDAO = serviceUserDAO;

            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
            
        }

        public ObjectResultList<UserRoleType> GetListUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            ObjectResultList<UserRoleType> resultList = new ObjectResultList<UserRoleType>();
            try
            {
                resultList = _serviceUserDAO.GetListUsersRoleType(objectRequest);
            }
            catch (Exception ex)
            {
                resultList.Id = -1;
                resultList.Message = ex.Message;

                log.Save(EnumLogLevel.Fatal, ex);
            }
            return resultList;
        }

        public void CreateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            try
            {
                _serviceUserDAO.CreateUsersRoleType(objectRequest);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        public void UpdateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            try
            {
                _serviceUserDAO.UpdateUsersRoleType(objectRequest);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

        }

        public void DeleteUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            try
            {
                if (objectRequest.SenderObject.UserRolTypeId < 1)
                    throw new Exception("Debe enviar un valor para el UserRolTypeId.");

                _serviceUserDAO.DeleteUsersRoleType(objectRequest);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
            
        }

        
        public ObjectResult<Boolean> ValidateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            ObjectResult<Boolean> result = new ObjectResult<Boolean>();
            try
            {
                if (objectRequest.SenderObject.UserId < 1)
                    throw new Exception("Debe enviar un valor para el UserId.");

                if (objectRequest.SenderObject.RoleTypeId < 1)
                    throw new Exception("Debe enviar un valor para el Role.");

                result =_serviceUserDAO.ValidateUsersRoleType(objectRequest);
            }
            catch (Exception ex)
            {
                result.Id = -1;
                result.Message = "NoOk";
                log.Save(EnumLogLevel.Fatal, ex);
            }
            return result;
        }

    }
}
