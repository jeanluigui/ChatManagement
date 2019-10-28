using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatWebApi.Controllers
{
    public class UserAccountGroupController: ApiController
    {
        private IServiceUserAccountGroupBL _IServiceUserAccountGroupBL;

        /// <summary>
        /// Constructor con parametro de instancia.
        /// </summary>
        /// <param name="iserviceUserAccountGroupbl"></param>
        public UserAccountGroupController(IServiceUserAccountGroupBL iserviceUserAccountGroupbl)
        {
            _IServiceUserAccountGroupBL = iserviceUserAccountGroupbl;
        }

        /// <summary>
        /// Método para listar UserAccountGroup.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// 
        //[HttpPost]
        //[ActionName("GetListUserAccountGroup")]
        //[Route("api/UserAccount/GetListUserAccountGroup/")]
        //public ObjectResultList<UserAccountGroups> GetListUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResultList<UserAccountGroups> result = new ObjectResultList<UserAccountGroups>();

        //    try
        //    {
        //        result = _IServiceUserAccountGroupBL.GetListUserAccountGroup(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = ex.Message;
        //    }

        //    return result;
        //}

        ///// <summary>
        ///// Método para crear UserAccountGroup.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("CreateUserAccountGroup")]
        //[Route("api/UserAccount/CreateUserAccountGroup/")]
        //public ObjectResult<Boolean> CreateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        _IServiceUserAccountGroupBL.CreateUserAccountGroup(objectRequest);

        //        result.Data = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = ex.Message;
        //    }

        //    return result;
        //}

        ///// <summary>
        ///// Método para actualizar UserAccountGroup.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("UpdateUserAccountGroup")]
        //[Route("api/UserAccount/UpdateUserAccountGroup/")]
        //public ObjectResult<Boolean> UpdateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        _IServiceUserAccountGroupBL.UpdateUserAccountGroup(objectRequest);

        //        result.Data = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = ex.Message;
        //    }

        //    return result;
        //}

        ///// <summary>
        ///// Método para eliminar UserAccountGroup.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("DeleteUserAccountGroup")]
        //[Route("api/UserAccount/DeleteUserAccountGroup/")]
        //public ObjectResult<Boolean> DeleteUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        _IServiceUserAccountGroupBL.DeleteUserAccountGroup(objectRequest);

        //        result.Data = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = ex.Message;
        //    }

        //    return result;
        //}

        ///// <summary>
        ///// Método para validar UserAccountGroup.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("ValidateUserAccountGroup")]
        //[Route("api/UserAccount/ValidateUserAccountGroup/")]
        //public ObjectResult<Boolean> ValidateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        result = _IServiceUserAccountGroupBL.ValidateUserAccountGroup(objectRequest);
        //        result.Data = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = ex.Message;
        //    }

        //    return result;
        //}

    }
}