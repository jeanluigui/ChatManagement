using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using xChatEntities;
//using xss.ConnectionManager;
//using xss.Logger.Enums;
//using xss.Logger.Factory;
//using xss.Logger.Interfaces;

namespace xChatDAO
{
    public class ServiceUserAccountGroupDAO : IServiceUserAccountGroupDAO
    {
        //private static ILoggerHandler log = LoggerFactory.Get(EnumLayerIdentifier.DataAccessLayer);

        //public ObjectResultList<UserAccountGroups> GetListUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    ObjectResultList<UserAccountGroups> list = new ObjectResultList<UserAccountGroups>();

        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@userId", objectRequest.SenderObject.AccountManagerId);

        //        CommandParameter queryCommand = new CommandParameter("chat.AccountManager_Groups_GetList_Sp", parameters);
        //        DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

        //        list = new ObjectResultList<UserAccountGroups>(dtresult);
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }

        //    return list;
        //}

        //public void CreateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@accountManagerId", objectRequest.SenderObject.AccountManagerId);
        //        parameters.Add("@accountManagerChildId", objectRequest.SenderObject.AccountManagerChildId);
        //        parameters.Add("@status", objectRequest.SenderObject.StatusId);
        //        parameters.Add("@createdBy", objectRequest.SenderObject.CreatedBy);

        //        CommandParameter queryCommand = new CommandParameter("chat.Accountmanager_Groups_Insert_Sp", parameters);

        //        DbManager.Instance.ExecuteCommand(queryCommand);
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public void UpdateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@accountManagerGroupId", objectRequest.SenderObject.AccountManagerGroupId);
        //        parameters.Add("@accountManagerId", objectRequest.SenderObject.AccountManagerId);
        //        parameters.Add("@accountManagerChildId", objectRequest.SenderObject.AccountManagerChildId);
        //        parameters.Add("@status", objectRequest.SenderObject.StatusId);
        //        parameters.Add("@updatedBy", objectRequest.SenderObject.CreatedBy);

        //        CommandParameter queryCommand = new CommandParameter("chat.Accountmanager_Groups_Update_Sp", parameters);

        //        DbManager.Instance.ExecuteCommand(queryCommand);
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public void DeleteUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    try
        //    {
        //        ListParameters parameters = new ListParameters();
        //        parameters.Add("@accountManagerGroupId", objectRequest.SenderObject.AccountManagerGroupId);

        //        CommandParameter queryCommand = new CommandParameter("chat.AccountManager_Groups_Delete_Sp", parameters);

        //        DbManager.Instance.ExecuteCommand(queryCommand);
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Save(EnumLogLevel.Fatal, ex);
        //    }
        //}

        //public ObjectResult<Boolean> ValidateUserAccountGroup(ObjectRequest<UserAccountGroups> objectRequest)
        //{
        //    SqlCommand ObjCmd = null;
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();
        //    try
        //    {
        //        using (ObjCmd = new SqlCommand("chat.AccountManager_Groups_ExistUsers_Sp", DbManager.Instance.OpenConnection()))
        //        {
        //            ObjCmd.CommandType = CommandType.StoredProcedure;
        //            ObjCmd.CommandTimeout = 0;
        //            #region ParametersOutPut
        //            SqlParameter outputParam = ObjCmd.Parameters.Add("@existOutput", SqlDbType.Int);
        //            outputParam.Direction = ParameterDirection.Output;
        //            #endregion ParametersOutPut
        //            ObjCmd.Parameters.AddWithValue("@accountManagerId", objectRequest.SenderObject.AccountManagerId);
        //            ObjCmd.Parameters.AddWithValue("@accountManagerChildId", objectRequest.SenderObject.AccountManagerChildId);
        //            ObjCmd.ExecuteNonQuery();
        //            result.Id = Convert.ToInt32(ObjCmd.Parameters["@existOutput"].Value);
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Message = ex.Message;
        //        result.Id = -1;
        //    }
        //    return result;
        //}
    }
}
