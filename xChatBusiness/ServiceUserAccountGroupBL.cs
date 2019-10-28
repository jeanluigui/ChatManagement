using System;
using xChatDAO;
using xChatEntities;
//using xss.Logger.Enums;
//using xss.Logger.Factory;
//using xss.Logger.Interfaces;

namespace xChatBusiness
{
    public class ServiceUserAccountGroupBL : IServiceUserAccountGroupBL
    {
        //private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.BusinessLayer);

        //private IServiceUserAccountGroupDAO _serviceUserAccountGroupDAO;

        //public ServiceUserAccountGroupBL(IServiceUserAccountGroupDAO serviceUserAccountGroupDAO)
        //{
        //    try
        //    {
        //        _serviceUserAccountGroupDAO = serviceUserAccountGroupDAO;

        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
         
        //}

        //public void CreateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    try
        //    {
        //        _serviceUserAccountGroupDAO.CreateUserAccountGroup(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public void UpdateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    try
        //    {
        //        _serviceUserAccountGroupDAO.UpdateUserAccountGroup(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public void DeleteUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    try
        //    {
        //        if (objectRequest.SenderObject.AccountManagerGroupId < 1)
        //            throw new Exception("Debe enviar un valor para el AccountManagerGroupId.");

        //        _serviceUserAccountGroupDAO.DeleteUserAccountGroup(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public ObjectResultList<UserAccountGroups> GetListUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResultList<UserAccountGroups> resultList = new ObjectResultList<UserAccountGroups>();
        //    try
        //    {
        //        resultList = _serviceUserAccountGroupDAO.GetListUserAccountGroup(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        resultList.Id = -1;
        //        resultList.Message = ex.Message;

        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //    return resultList;
        //}

        //public ObjectResult<bool> ValidateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();
        //    try
        //    {
        //        if (objectRequest.SenderObject.AccountManagerId < 1)
        //            throw new Exception("Debe enviar un valor para el AccountManagerId.");

        //        if (objectRequest.SenderObject.AccountManagerChildId < 1)
        //            throw new Exception("Debe enviar un valor para el AccountManagerChildId.");

        //        result = _serviceUserAccountGroupDAO.ValidateUserAccountGroup(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = "NoOk";
        //        //log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //    return result;
        //}
    }
}
