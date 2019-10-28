using System;
using System.Web.Http;
using xChatBusiness;
using xChatEntities;

namespace xChatWebApi.Controllers
{ 
    /// <summary>
   /// Controlador de Usuarios.
   /// </summary>
    public class UserRolController : ApiController
    {
        private IServiceUserBL _IServiceUserBL;

        /// <summary>
        /// Constructor con parametro de instancia.
        /// </summary>
        /// <param name="iserviceUserbl"></param>
        public UserRolController(IServiceUserBL iserviceUserbl)
        {
            _IServiceUserBL = iserviceUserbl;
        }

        /// <summary>
        /// Método para listar User and rol.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// 
        //[HttpPost]
        //[ActionName("GetListUsersRoleType")]
        //[Route("api/UserRol/GetListUsersRoleType/")]
        //public ObjectResultList<UserRoleType> GetListUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        //{
        //    ObjectResultList<UserRoleType> result = new ObjectResultList<UserRoleType>();

        //    try
        //    {
        //        result = _IServiceUserBL.GetListUsersRoleType(objectRequest);
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Id = -1;
        //        result.Message = ex.Message;
        //    }

        //    return result;
        //}

        ///// <summary>
        ///// Método para crear User and rol.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("CreateUsersRoleType")]
        //[Route("api/UserRol/CreateUsersRoleType/")]
        //public ObjectResult<Boolean> CreateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        _IServiceUserBL.CreateUsersRoleType(objectRequest);

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
        ///// Método para actualizar User and rol.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("UpdateUsersRoleType")]
        //[Route("api/UserRol/UpdateUsersRoleType/")]
        //public ObjectResult<Boolean> UpdateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        _IServiceUserBL.UpdateUsersRoleType(objectRequest);

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
        ///// Método para eliminar User and rol.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("DeleteUsersRoleType")]
        //[Route("api/UserRol/DeleteUsersRoleType/")]
        //public ObjectResult<Boolean> DeleteUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        _IServiceUserBL.DeleteUsersRoleType(objectRequest);

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
        ///// Método para validar User and rol .
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// 
        //[HttpPost]
        //[ActionName("ValidateUsersRoleType")]
        //[Route("api/UserRol/ValidateUsersRoleType/")]
        //public ObjectResult<Boolean> ValidateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        //{
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();

        //    try
        //    {
        //        result = _IServiceUserBL.ValidateUsersRoleType(objectRequest);
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