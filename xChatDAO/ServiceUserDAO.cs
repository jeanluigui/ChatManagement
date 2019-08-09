using System;
using System.Data;
using System.Data.SqlClient;
using xChatEntities;
using xss.ConnectionManager;
using xss.Logger.Enums;
using xss.Logger.Factory;
using xss.Logger.Interfaces;

namespace xChatDAO
{
    public class ServiceUserDAO : IServiceUserDAO
    {
        private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

        public ObjectResultList<UserRoleType> GetListUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            ObjectResultList<UserRoleType> listUserRol = new ObjectResultList<UserRoleType>();

            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@userId", objectRequest.SenderObject.UserId);
                parameters.Add("@rol", objectRequest.SenderObject.RoleTypeId);

                CommandParameter queryCommand = new CommandParameter("chat.Users_RoleType_GetList_Sp", parameters);
                DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

                listUserRol = new ObjectResultList<UserRoleType>(dtresult);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }

            return listUserRol;
        }

        public void CreateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            try
            {
                ListParameters parameters = new ListParameters();
                parameters.Add("@roleTypeId", objectRequest.SenderObject.RoleTypeId);
                parameters.Add("@userId", objectRequest.SenderObject.UserId);
                parameters.Add("@status", objectRequest.SenderObject.StatusId);
                parameters.Add("@createdBy", objectRequest.SenderObject.CreatedBy);

                CommandParameter queryCommand = new CommandParameter("chat.Users_RoleType_Insert_Sp", parameters);

                DbManager.Instance.ExecuteCommand(queryCommand);
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
                ListParameters parameters = new ListParameters();
                parameters.Add("@userRolTypeId", objectRequest.SenderObject.UserRolTypeId);
                parameters.Add("@roleTypeId", objectRequest.SenderObject.RoleTypeId);
                parameters.Add("@userId", objectRequest.SenderObject.UserId);
                parameters.Add("@status", objectRequest.SenderObject.StatusId);
                parameters.Add("@updatedBy", objectRequest.SenderObject.UpdatedBy);

                CommandParameter queryCommand = new CommandParameter("chat.Users_RoleType_Update_Sp", parameters);

                DbManager.Instance.ExecuteCommand(queryCommand);
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
                ListParameters parameters = new ListParameters();
                parameters.Add("@userRolTypeId", objectRequest.SenderObject.UserRolTypeId);

                CommandParameter queryCommand = new CommandParameter("chat.Users_RoleType_Delete_Sp", parameters);

                DbManager.Instance.ExecuteCommand(queryCommand);
            }
            catch (Exception ex)
            {
                log.Save(EnumLogLevel.Fatal, ex);
            }
        }

        public ObjectResult<Boolean> ValidateUsersRoleType(ObjectRequest<UserRoleType> objectRequest)
        {
            SqlCommand ObjCmd = null;
            ObjectResult<Boolean> result = new ObjectResult<Boolean>();
            try
            {
                using (ObjCmd = new SqlCommand("chat.UsersRoleType_ExistRolByUser_Sp", DbManager.Instance.OpenConnection()))
                {
                    ObjCmd.CommandType = CommandType.StoredProcedure;
                    ObjCmd.CommandTimeout = 0;
                    #region ParametersOutPut
                    SqlParameter outputParam = ObjCmd.Parameters.Add("@existOutput", SqlDbType.Int);
                    outputParam.Direction = ParameterDirection.Output;
                    #endregion ParametersOutPut
                    ObjCmd.Parameters.AddWithValue("@userId", objectRequest.SenderObject.UserId);
                    ObjCmd.Parameters.AddWithValue("@rol", objectRequest.SenderObject.RoleTypeId);
                    ObjCmd.ExecuteNonQuery();
                    result.Id = Convert.ToInt32(ObjCmd.Parameters["@existOutput"].Value);
                };
            }
            catch (Exception ex)
            {
                result.Message = ex.Message;
                result.Id = -1;
            }
            return result;
        }

    }
}
