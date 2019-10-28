using System;
using System.Data;
using System.Data.SqlClient;
using xChatEntities;
//using xss.ConnectionManager;

namespace xChatDAO
{
    /// <summary>
    /// Clase DAO que gestiona la información con la DB.
    /// </summary>
    public class ServiceSkillAgentDAO : IServiceSkillAgentDAO
    {
        ///// <summary>
        ///// Devuelve lista de agentes con sus habilidades por Modulo y Lenguaje.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        ///// <returns></returns>
        //public ObjectResultList<SkillAgent> GetListSkillByAgent(ObjectRequest<SkillAgentFilter> objectRequest)
        //{
        //    ObjectResultList<SkillAgent> listUserConnect = new ObjectResultList<SkillAgent>();

        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@perspectiveid", objectRequest.SenderObject.PerspectiveId);
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@moduleid", objectRequest.SenderObject.ModuleId);
        //    parameters.Add("@languageid", objectRequest.SenderObject.LanguageId);
        //    parameters.Add("@skillLevelModule", objectRequest.SenderObject.SkillLevelModule);
        //    parameters.Add("@skillLevelLanguage", objectRequest.SenderObject.SkillLevelLanguage);

        //    CommandParameter queryCommand = new CommandParameter("chat.ChatReportSkill_GetByPerspective_Sp", parameters);
        //    DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

        //    listUserConnect = new ObjectResultList<SkillAgent>(dtresult);

        //    return listUserConnect;
        //}

        ///// <summary>
        ///// Método para crear una  habilidad de Agebnte por Módulo.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public void CreateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        //{
        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@moduleid", objectRequest.SenderObject.ModuleId);
        //    parameters.Add("@skilllevel", objectRequest.SenderObject.SkillLevel);
        //    parameters.Add("@prioritylevel", objectRequest.SenderObject.PriorityLevel);
        //    parameters.Add("@Status", objectRequest.SenderObject.StatusId);
        //    parameters.Add("@createdby", objectRequest.SenderObject.CreateBy);

        //    CommandParameter queryCommand = new CommandParameter("chat.AgentSkillModule_Insert_Sp", parameters);

        //    DbManager.Instance.ExecuteCommand(queryCommand);
        //}

        ///// <summary>
        ///// Método para crear una  habilidad de Agebnte por Lenguaje.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public void CreateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        //{
        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@languageid", objectRequest.SenderObject.LanguageId);
        //    parameters.Add("@skilllevel", objectRequest.SenderObject.SkillLevel);
        //    parameters.Add("@prioritylevel", objectRequest.SenderObject.PriorityLevel);
        //    parameters.Add("@Status", objectRequest.SenderObject.StatusId);
        //    parameters.Add("@createdby", objectRequest.SenderObject.CreateBy);

        //    CommandParameter queryCommand = new CommandParameter("chat.AgentSkillLanguage_Insert_Sp", parameters);

        //    DbManager.Instance.ExecuteCommand(queryCommand);
        //}

        ///// <summary>
        ///// Método para actualizar una habilidad por Módulo.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public void UpdateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        //{
        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@moduleid", objectRequest.SenderObject.ModuleId);
        //    parameters.Add("@skilllevel", objectRequest.SenderObject.SkillLevel);
        //    parameters.Add("@prioritylevel", objectRequest.SenderObject.PriorityLevel);
        //    parameters.Add("@UpdatedBy", objectRequest.SenderObject.CreateBy);

        //    CommandParameter queryCommand = new CommandParameter("chat.AgentSkillModule_Update_Sp", parameters);

        //    DbManager.Instance.ExecuteCommand(queryCommand);
        //}

        ///// <summary>
        ///// Método para actualizar una Habilidad por Módulo.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public void UpdateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        //{
        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@languageid", objectRequest.SenderObject.LanguageId);
        //    parameters.Add("@skilllevel", objectRequest.SenderObject.SkillLevel);
        //    parameters.Add("@prioritylevel", objectRequest.SenderObject.PriorityLevel);
        //    parameters.Add("@UpdatedBy", objectRequest.SenderObject.CreateBy);

        //    CommandParameter queryCommand = new CommandParameter("chat.AgentSkillLanguage_Update_Sp", parameters);

        //    DbManager.Instance.ExecuteCommand(queryCommand);
        //}

        ///// <summary>
        ///// Método para activar/desactivar habilidad por Modulo.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public void ChangeStateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        //{
        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@moduleid", objectRequest.SenderObject.ModuleId);
        //    parameters.Add("@status", objectRequest.SenderObject.StatusId);
        //    parameters.Add("@UpdatedBy", objectRequest.SenderObject.CreateBy);

        //    CommandParameter queryCommand = new CommandParameter("chat.AgentSkill_ChangeStatusModule_Sp", parameters);

        //    DbManager.Instance.ExecuteCommand(queryCommand);
        //}

        ///// <summary>
        ///// Método para activar/desactivar habilidad por Lenguaje.
        ///// </summary>
        ///// <param name="objectRequest"></param>
        //public void ChangeStateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        //{
        //    ListParameters parameters = new ListParameters();
        //    parameters.Add("@agentid", objectRequest.SenderObject.AgentId);
        //    parameters.Add("@languageid", objectRequest.SenderObject.LanguageId);
        //    parameters.Add("@status", objectRequest.SenderObject.StatusId);
        //    parameters.Add("@UpdatedBy", objectRequest.SenderObject.CreateBy);

        //    CommandParameter queryCommand = new CommandParameter("chat.AgentSkill_ChangeStatusLanguage_Sp", parameters);

        //    DbManager.Instance.ExecuteCommand(queryCommand);
        //}
    
        //public ObjectResult<Boolean> ValidateSkillByAgentModule(ObjectRequest<SkillAgentModule> objectRequest)
        //{
        //    SqlCommand ObjCmd = null;
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();
        //    try
        //    {
        //        using (ObjCmd = new SqlCommand("chat.AgentSkill_ExistAgentByModule_Sp", DbManager.Instance.OpenConnection()))
        //        {
        //            ObjCmd.CommandType = CommandType.StoredProcedure;
        //            ObjCmd.CommandTimeout = 0;
        //            #region ParametersOutPut
        //            SqlParameter outputParam = ObjCmd.Parameters.Add("@existOutput", SqlDbType.Int);
        //            outputParam.Direction = ParameterDirection.Output;
        //            #endregion ParametersOutPut
        //            ObjCmd.Parameters.AddWithValue("@userId", objectRequest.SenderObject.AgentId);
        //            ObjCmd.Parameters.AddWithValue("@moduleId", objectRequest.SenderObject.ModuleId);
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

        //public ObjectResult<Boolean> ValidateSkillByAgentLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        //{
        //    SqlCommand ObjCmd = null;
        //    ObjectResult<Boolean> result = new ObjectResult<Boolean>();
        //    try
        //    {
        //        using (ObjCmd = new SqlCommand("chat.AgentSkill_ExistAgentByLanguage_Sp", DbManager.Instance.OpenConnection()))
        //        {
        //            ObjCmd.CommandType = CommandType.StoredProcedure;
        //            ObjCmd.CommandTimeout = 0;
        //            #region ParametersOutPut
        //            SqlParameter outputParam = ObjCmd.Parameters.Add("@existOutput", SqlDbType.Int);
        //            outputParam.Direction = ParameterDirection.Output;
        //            #endregion ParametersOutPut
        //            ObjCmd.Parameters.AddWithValue("@userId", objectRequest.SenderObject.AgentId);
        //            ObjCmd.Parameters.AddWithValue("@languageId", objectRequest.SenderObject.LanguageId);
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
